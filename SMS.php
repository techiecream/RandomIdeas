<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="description" content="Bulk SMS">
<meta name="keywords" content="bulk,sms,many">
<meta name="author" content="Kizige Stephen">
<meta name="version" content="1.0">
<link rel = "stylesheet" type= "text/css" href = "style.css" media= "screen"/>
<script src="jquery.js"></script>

<?php
if (isset($_POST["bsmsg"]) && $_POST["bsmsg"] == "obsmsg") {
    // Check if a file was uploaded
    if (isset($_FILES['csv_file']) && $_FILES['csv_file']['error'] === UPLOAD_ERR_OK) {
        $csvFile = $_FILES['csv_file']['tmp_name'];

        // Validate file type
        $fileInfo = finfo_open(FILEINFO_MIME_TYPE);
        $mimeType = finfo_file($fileInfo, $csvFile);
        finfo_close($fileInfo);
        if (!in_array($mimeType, ['text/csv', 'text/plain'])) {
            echo "<p class='error'>Error: Invalid file type. Please upload a CSV file.</p>";
            echo "MIME type: " . $mimeType . "<br/>";
        } else {
            // Remove duplicates and get the summary
            $result = removeDuplicates($csvFile);

            if ($result !== false) {
                echo '<form><table>';
                // Print summary
                $valid = $result['originalRowCount'] - $result['duplicatesCount'] - 1;
                $rate = $result['originalRowCount'] * 30;
                echo "Total rows in CSV: " . $result['originalRowCount'] . "<br/>";
                echo "Total duplicates removed: " . $result['duplicatesCount'] . "<br/>";
                echo "Total Valid Records: " . $valid . "<br/>";
                echo "Total amount payable: " . $rate . "<br/>";

                // Display the number of deleted records
                echo "Deleted records: " . $result['deletedCount'] . "<br/>";

                // Print rows in groups of 100 and count occurrences
                $prefixesCount = printRowsInGroups($result['file']);
                echo "Occurrences of prefixes:";
                echo "<ul>";
                foreach ($prefixesCount as $prefix => $count) {
                    echo "<li>" . $prefix . ": " . $count . "</li>";
                }
                echo "</ul>";

                echo "</table></form>";

                // Delete the unique CSV file
                unlink($result['file']);
            }
        }
    } else {
        // Handle file upload errors
        $uploadError = $_FILES['csv_file']['error'];
        echo "<p class='error'>Error uploading the CSV file. Error code: $uploadError</p>";
    }
}

// Function to remove duplicate rows from CSV
function removeDuplicates($csvFile)
{
    $rows = array_map('str_getcsv', file($csvFile));
    $header = array_shift($rows);
    $originalRowCount = count($rows);
    $deletedCount = 0; // Variable to track the number of deleted records

    // Remove duplicates
    $uniqueRows = array_map('json_encode', $rows);
    $uniqueRows = array_unique($uniqueRows);
    $uniqueRows = array_map('json_decode', $uniqueRows);

    // Remove records with less than nine characters
    $filteredRows = array_filter($uniqueRows, function ($row) use (&$deletedCount) {
        foreach ($row as $value) {
            if (strlen($value) < 9) {
                $deletedCount++;
                return false;
            }
        }
        return true;
    });

    $filteredRowCount = count($filteredRows);

    $uniqueCsvFile = 'unique_' . basename($csvFile);
    $fp = fopen($uniqueCsvFile, 'w');
    if ($fp !== false) {
        fputcsv($fp, $header);
        foreach ($filteredRows as $row) {
            fputcsv($fp, (array) $row);
        }
        fclose($fp);

        $duplicatesCount = $originalRowCount - $filteredRowCount;

        // Compare rows using a custom comparison function
        $duplicates = array_udiff($rows, $filteredRows, 'compareRows');

        return array(
            'file' => $uniqueCsvFile,
            'originalRowCount' => $originalRowCount,
            'duplicatesCount' => $duplicatesCount,
            'deletedCount' => $deletedCount,
            'duplicates' => $duplicates
        );
    } else {
        echo "<p class='error'>Error opening the file for writing.</p>";
        return false;
    }
}

// Custom comparison function for array_udiff
function compareRows($a, $b)
{
    return strcmp(implode(',', $a), implode(',', $b));
}

// Function to print rows in groups of 100 and count occurrences of prefixes
function printRowsInGroups($csvFile)
{
    $rows = array_map('str_getcsv', file($csvFile));
    sort($rows);
    $totalRows = count($rows) - 1; // Adjusted count after skipping the first row

    $groupSize = 100;
    // Skip the first row (column headings)
    $rows = array_slice($rows, 1);

    $prefixesCount = array(); // Track prefix occurrences

    for ($i = 0; $i < $totalRows; $i += $groupSize) {
        $group = array_slice($rows, $i, $groupSize);
        echo "<br/>Group " . ($i / $groupSize + 1) . ":\n" . "<br/>";
        foreach ($group as $row) {
            $paddedRow = array_map(function ($value) {
                return '0' . $value . ',';
            }, $row);
            echo implode(', ', $paddedRow) . "\n" . "<br/>";

            // Count occurrences of prefixes
            $prefix = substr($row[0], 0, 2); // Assuming the prefix is in the first column
            if (!isset($prefixesCount[$prefix])) {
                $prefixesCount[$prefix] = 0;
            }
            $prefixesCount[$prefix]++;
        }
        echo "\n";
    }

    return $prefixesCount;
}
?>
<title>BULK SMS SYSTEM</title>
</head>
<body>

    <h1>CSV File Upload</h1>
    <form method="post" enctype="multipart/form-data" action="shop.php">
        <label for="csv_file">Select a CSV file:</label>
        <input type="file" name="csv_file" id="csv_file" accept=".csv">
        <br><br>
		<input type="hidden" name="bsmsg" value="obsmsg">
        <input type="submit" value="Upload and Process">
    </form>

</body>
</html>