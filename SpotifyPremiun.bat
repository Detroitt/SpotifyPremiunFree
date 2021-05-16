@echo off
TITLE Spotify Premiun by Detroit!
color 0a
mode con:cols=100 lines=50

@echo                                              `     `  `                                            
@echo                                    `                              `                                 
                                                                                     
@echo                         ``                                                `                         
@echo                      `                                                        `                     
@echo                   ``                                                            `                   
@echo                 `                                                                 ``                
                                                                                                     
@echo             ``                                                                        `             
@echo           ``                                                                            `           
@echo          `                                                                               `          
@echo         `                                                                                  `        
@echo        `                                                                                    `       
@echo     `                    ````....--:::::::::::::--....````                                  `      
@echo                   ``.-:://+++oooooooooooooooooooooooooooo+++//:--.``                          `     
@echo                 ./+oooooooooooooooooooooooooooooooooooooooooooooooo++/:-.`                     `    
@echo    `           .ooooooooooooooooooooooooooooooooooooooooooooooooooooooooo++/-.`                 `   
@echo   `            -oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+/:.`             `   
@echo                `/ooooooooo++//:::--...............---:://+++oooooooooooooooooooooo+/.            `  
@echo  `               .://:-..`                                 ``..-:/++ooooooooooooooooo:           `  
@echo  `                                                                 ``.:/+ooooooooooooo`           ` 
@echo `                                                                        `.:+oooooooo:            ` 
@echo `                         ``.--::////+++++++++////::--.``                    `-/++/:.               
@echo `                   `-:/+ooooooooooooooooooooooooooooooooo+/::.`                                   `
@echo                    /ooooooooooooooooooooooooooooooooooooooooooooo+/:.`                              
@echo `                 `ooooooooooooooooooooooooooooooooooooooooooooooooooo+/-`                         `
@echo `                  :ooooooo+//:---..``````````...--:://+oooooooooooooooooo+:.                      `
@echo `                   `---.`                               `.-:/+ooooooooooooooo-                    `
@echo `                                                               `-:+ooooooooooo                   ` 
@echo `                                                                   `.:/oooooo:                   ` 
@echo  `                          ``...--::::::::::::::--..``                 `-:::.                    ` 
@echo  `                    .://++ooooooooooooooooooooooooooo++/:-.`                                   `  
@echo   `                  +oooooooooooooooooooooooooooooooooooooooo+/-.`                              `  
@echo   `                  +ooooooooo+++/////::::::////+++oooooooooooooo+/-.                          `   
@echo    `                 `-//:-..````                  ```.-://+oooooooooo+:`                      `    
@echo     `                                                      ``-:/+ooooooo+                      `    
@echo      `                                                          `.:+ooo+-                     `     
@echo       `                                                             `..`                     `      
@echo        `                                                                                    `       
@echo         `                                                                                 `         
@echo          ``                                                                              `          
@echo            `                                                                            `           
@echo              `                                                                        `             
                                                                                                     
@echo                 `                                                                 `                 
@echo                    ``                                                          ``                   
@echo                       `                                                     `                       
@echo                          ``                                                                         

                                                                               
@echo                                               `     `                                               


@echo Press Enter to Begin...
Pause >nul
CLS
mode con:cols=120 lines=40
color 0a
@echo Killing Spotify in 3 seconds...
timeout 3 >nul
TASKKILL /T /F /IM  spotify.exe
CLS
@echo Install Older version of Spotify and Block Updates? (Spotify retains full functionality)
SET /P choice=  Y / N 
IF /I "%choice%"=="Y" goto apply
IF /I "%choice%"=="N" goto next

:apply
@echo Installing Older Version of Spotify and Blocking Updates...
timeout 2 >nul
call downgrade.bat >nul
TASKKILL /T /F /IM  spotify.exe >nul

@echo Done
timeout 2 >nul
goto next

:next
CLS
@echo Debloat Spotify?
SET /P choice=  Y / N 
IF /I "%choice%"=="Y" goto apply
IF /I "%choice%"=="N" goto next

:apply
CLS
@echo Removing bloatware from Spotify...
DEL "%appdata%\Spotify\Apps\buddy-list.spa" /F /Q >nul 
DEL "%appdata%\Spotify\Apps\concert.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\concerts.spa" /F ?Q >nul
DEL "%appdata%\Apps\concerts.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\error.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\findfriends.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\lyrics.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\radio-hub.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\station.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\stations.spa" /F /Q >nul
CLS
@echo Bloatware Stripped...
timeout 2 >nul
goto next

:next
CLS
@echo Remove all UI Languages other than English? (Songs from other languages can still be played)
SET /P choice=  Y / N 
IF /I "%choice%"=="Y" goto apply
IF /I "%choice%"=="N" goto next

:apply
CLS
move "%appdata%\Spotify\locales\en.mo" "%appdata%\Spotify" >nul
move "%appdata%\Spotify\locales\en-US.pak" "%appdata%\Spotify" >nul
DEL "%appdata%\Spotify\locales" /F /Q >nul
move "%appdata%\Spotify\en.mo" "%appdata%\Spotify\locales" >nul
move "%appdata%\Spotify\en-US.pak" "%appdata%\Spotify\locales" >nul
CLS
@echo Languages Stripped...
timeout 2 >nul
goto next

:next 
CLS
@echo Strip Library UI Elements? (Favorite Songs, Albums, Artists, Stations, Videos, Podcasts)
@echo These items are still playable but the UI will be missing to select them from the category 'Library'
SET /P choice= Y / N 
IF /I "%choice%"=="Y" goto apply
IF /I "%choice%"=="N" goto next

:apply
CLS
DEL "%appdata%\Spotify\Apps\collection.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\collection-album.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\collection-artist.spa" /F /Q >nul
DEL "%appdata%\Spotify\Apps\collection-songs.spa" /F /Q >nul
@echo Library Elements Stripped...
timeout 2 >nul
goto next

:next
CLS
@echo Spotify has been optimized...
timeout 2 >nul
@echo Exiting Script in 5 seconds...
timeout 5 >nul