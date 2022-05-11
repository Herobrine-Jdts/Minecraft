@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
rem crack里的文件替换到游戏文件夹
copy /y "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Crack\AdvGuide\ELDEN RING Adventure Guide_Data\Plugins\x86_64\steam_api64.dll" "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\AdvGuide\ELDEN RING Adventure Guide_Data\Plugins\x86_64\steam_api64.dll"
copy /y "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Crack\ArtbookOST\ELDEN RING Digital Artbook & Soundtrack_Data\Plugins\x86_64\steam_api64.dll" "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\ArtbookOST\ELDEN RING Digital Artbook & Soundtrack_Data\Plugins\x86_64\steam_api64.dll"
copy /y "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Crack\Game\steam_api64.dll" "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game\steam_api64.dll"
rem 判断是否已开启Anti-cheat
:label
set md5=6ea87d309cbda60c53948769b8d595c4
set road="D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Start\md5.md5"
certutil -hashfile "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game\start_protected_game.exe" MD5 | find /v ":" > %road%
set /p now_md5=<%road%
if not "%md5%" == "%now_md5%" (
	start /w /d "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game" "" "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\ELDEN RING\Game\toggle_anti_cheat.exe"
	goto label)
rem 打开FPS解锁工具
start "" "D:\Documents\ELDEN.RING.Deluxe.Edition.Steam.Rip-InsaneRamZes\Start\EldenRingFPSUnlockAndMore.exe"
