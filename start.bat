@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
set md5_road="D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Start\md5.md5"

rem crack里的文件替换到游戏文件夹
set AdvGuide="D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\AdvGuide\ELDEN RING Adventure Guide_Data\Plugins\x86_64\steam_api64.dll"
certutil -hashfile %AdvGuide% MD5 | find /v ":" > %md5_road%
set /p md5=<%md5_road%
if not "23390ac384575350c1286bb357666b81" == "%md5%" (copy /y "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Crack\AdvGuide\ELDEN RING Adventure Guide_Data\Plugins\x86_64\steam_api64.dll" %AdvGuide%)
del /q %md5_road%
set md5=0

set ArtbookOST="D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\ArtbookOST\ELDEN RING Digital Artbook & Soundtrack_Data\Plugins\x86_64\steam_api64.dll"
certutil -hashfile %ArtbookOST% MD5 | find /v ":" > %md5_road%
set /p md5=<%md5_road%
if not "23390ac384575350c1286bb357666b81" == "%md5%" (copy /y "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Crack\ArtbookOST\ELDEN RING Digital Artbook & Soundtrack_Data\Plugins\x86_64\steam_api64.dll" %ArtbookOST%)
del /q %md5_road%
set md5=0

set Game="D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game\steam_api64.dll"
certutil -hashfile %Game% MD5 | find /v ":" > %md5_road%
set /p md5=<%md5_road%
if not "23390ac384575350c1286bb357666b81" == "%md5%" (copy /y "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Crack\Game\steam_api64.dll" %Game%)
del /q %md5_road%

rem 判断是否已开启Anti-cheat
:label
set cheat="D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game\start_protected_game.exe"
certutil -hashfile %cheat% MD5 | find /v ":" > %md5_road%
set /p md5=<%md5_road%
if not "df06567e0b8941030aab81e5f89ebf8b" == "%md5%" (
	start /w /d "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game" "" "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game\toggle_anti_cheat.exe"
	goto label)
del /q %md5_road%

echo 是否打开游戏
pause

rem 打开游戏
start /d "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Start" "" "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Start\EldenRingFPSUnlockAndMore.exe"
start /d "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game" "" "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game\eldenring.exe"
