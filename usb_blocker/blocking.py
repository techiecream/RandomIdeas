# usb_blocker/blocking.py
import pywinusb.hid as hid
import wmi
import click

def disable_usb_device(device_instance_id):
    """
    Disable a USB device using its instance ID.
    """
    c = wmi.WMI()
    try:
        usb_dev = c.Win32_PnPEntity(InstanceID=device_instance_id)[0]
        usb_dev.Disable()
        print('Disabled USB storage device:', usb_dev.Description)
    except Exception as e:
        print(f"Failed to disable USB device: {e}")

def enable_usb_device(device_instance_id):
    """
    Enable a USB device using its instance ID.
    """
    c = wmi.WMI()
    try:
        usb_dev = c.Win32_PnPEntity(InstanceID=device_instance_id)[0]
        usb_dev.Enable()
        print('Enabled USB storage device:', usb_dev.Description)
    except Exception as e:
        print(f"Failed to enable USB device: {e}")

def block_usb_device(device):
    """
    Block a USB storage device by disabling it.
    """
    if 0x08 in device.usage_page:  # Check if it's a storage device
        print('Blocking USB storage device:', device.product_name)
        disable_usb_device(device.instance_id())

def unblock_usb_device(device):
    """
    Unblock a USB storage device by enabling it again.
    """
    if 0x08 in device.usage_page:  # Check if it's a storage device
        print('Unblocking USB storage device:', device.product_name)
        enable_usb_device(device.instance_id())

@click.command()
@click.option('--block', is_flag=True, help='Block USB storage devices.')
@click.option('--unblock', is_flag=True, help='Unblock USB storage devices.')
def main(block, unblock):
    """
    Block or unblock USB storage devices.

    Examples:
    python -m usb_blocker --block  # Block USB storage devices
    python -m usb_blocker --unblock  # Unblock USB storage devices
    """
    all_devices = hid.HidDeviceFilter().get_devices()

    if block:
        for device in all_devices:
            block_usb_device(device)
    elif unblock:
        for device in all_devices:
            unblock_usb_device(device)
    else:
        print("Please specify either --block or --unblock option.")

if __name__ == '__main__':
    main()
