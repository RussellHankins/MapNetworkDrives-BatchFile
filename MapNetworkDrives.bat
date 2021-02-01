@echo off
cls
if exist U: GOTO SKIP_U
echo Connecting to U:
echo net use U: \\Rsint.net\data\MU\SATURN\PROJECT\MCT-PT\Transfer\RsaPlugin\data\ContestReports /persistent:yes 
net use U: \\Rsint.net\data\MU\SATURN\PROJECT\MCT-PT\Transfer\RsaPlugin\data\ContestReports /persistent:yes 
GOTO TRY_Z
:SKIP_U
echo The U Drive is already connected.

:TRY_Z
if exist Z: GOTO SKIP_Z
echo net use Z: \\advise-build\tempgit /persistent:yes
net use Z: \\advise-build\tempgit /persistent:yes
GOTO TRY_K
:SKIP_Z
ECHO The Z Drive is already connected.

:TRY_K
IF EXIST K: GOTO SKIP_K
echo net use K: \\rsint.net\data\ds\crux /persistent:yes
net use K: \\rsint.net\data\ds\crux /persistent:yes
GOTO TRY_R
:SKIP_K
echo The K Drive is already connected.

:TRY_R
IF EXIST R: GOTO SKIP_R
echo net use R: \\MCO06.RSINT.NET\Data /persistent:yes
net use R: \\MCO06.RSINT.NE\Data /persistent:yes
GOTO TRY_S
:SKIP_R
echo The R Drive is already connected.

:TRY_S
IF EXIST S: GOTO SKIP_S
ECHO net use S: \\rsint.net\data\co\sol /persistent:yes
net use S: \\rsint.net\data\co\sol /persistent:yes
GOTO EN
:SKIP_S
ECHO The S Drive is already connected.

:EN
pause
cls