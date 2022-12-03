@echo off

IF EXIST "C:\FlashUninstallDone.txt" GOTO END

pushd "\\contoso.de\netlogon\FlashUninstall"

uninstall_flash_player.exe --uninstall
uninstall_flash_player.exe -uninstall activex
uninstall_flash_player.exe -uninstall plugin
uninstall_flash_player.exe -uninstall pepperplugin

echo FlashUninstallDone %DATE% @ %TIME% >> "C:\FlashUninstallDone.txt"

Popd

:END

exit
