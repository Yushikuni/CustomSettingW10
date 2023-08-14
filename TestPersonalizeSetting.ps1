Write-Host "Personalize Settings online STARTING"

#Install VS Code
#Install Visual Studio 2022 Community
#Install Spotify
#Epic Game Lunchaer
#Steam Luncher
#GOG Luncher
#Ubi Connect
#EA Play
#Discord
#Chrome
#Firefox
#WinRAR
#VLC media Player


#Windows Settings­ (Dark mode color schema)
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name Color -Value "#242424"
#Set-ItemProperty -Path HKCU:\Control Panel\Colors -Name MenuHilight -Value "200 200 200" 
# In W10 cannot change colors to gray bc it is way to complicated and not that easy customized


#Setting­ tapet (Pro dva monitory a logoff screen)
# Setting for first monitor
$RegKey1 = 'HKCU:\Control Panel\Desktop\'
$WallpaperPath1 = "PrvniMonitor.png"
$WallpaperStyle1 = 0
Set-ItemProperty -path $RegKey1 -name Wallpaper -value $WallpaperPath1
Set-ItemProperty -path $RegKey1 -name WallpaperStyle -Value $WallpaperStyle1

# Setting for second monitor
$RegKey2 = 'HKCU:\Control Panel\Desktop\'
$WallpaperPath2 = "DruhyMonitor.png"
$WallpaperStyle2 = 0
Set-ItemProperty -path $RegKey2 -name Wallpaper -value $WallpaperPath2
Set-ItemProperty -path $RegKey2 -name WallpaperStyle -Value $WallpaperStyle2

$RegKey3 = 'HKCU:\Control Panel\Desktop\'
Set-ItemProperty -Path $RegKey3 -Name "ScreenSaveActive" -Type String -Value 1
Set-ItemProperty -Path $RegKey3 -Name "ScreenSaverIsSecure" -Type String -Value 1
Set-ItemProperty -Path $RegKey3 -Name "ScreenSaveTimeOut" -Type String -Value 900

# Setting for lockscreen
#$regKey = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Personalization'

#Set-ItemProperty -Path $regKey -Name LockScreenImage -value "LogOffScreen.png"
#Jak se vlastne prihlast? To asi necham na jindy :)

Write-Host "Personalize Settings DONE!"