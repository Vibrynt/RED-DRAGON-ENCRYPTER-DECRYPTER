@echo off
:start
color 04
echo RED DRAGON ENCRYPTER AND DECRYPTER BY JACKSON MICHENER
echo                    +:                            
echo                   o+                             
echo                  o+ `-```                        
echo                : h::h:+sossyy+:.                 
echo                //hhhhhs++:/ohho:-`               
echo                +hhhhhhhhhhhhsoso/.               
echo               `yyhhhhhshhhhhhhhhhhy//:-.         
echo              +y+yhhhhh/+hhhhhhhhhhhh+`           
echo         `./oyhhs+:/hhho+yhhhhhhhhhysso:          
echo        /hhy+:.   `-shhy++o/+hhhhhhhs-/.          
echo         -+.   .::-:yy-      yhhhhhhho-`          
echo               . .oh+`      -.yhhhhhh/:`          
echo               +hhh/         .yhhhhhhos/          
echo               `/+/-.   .:/oyhhhhhhhh+y.          
echo                    -/syyo//ohhhhhhhhoo           
echo                 -ohhyysssohhhhhhhhhho`           
echo               -syshhhhhhhhhhhhhhh+++             
echo              +o. syhhhhhhhhhyo/.`/-              
echo             /-     +/yhhy+-`    .                
echo            `.       -h+.                         
echo                    `y.                                                                                                        
echo -ENC (encryption)
echo -DEC (decryption)
set /p PROGRAM= What do you want to do Encrypt(ENC) or Decrypt(DEC)?:
goto %PROGRAM%
:ENC
cls
setlocal enableDelayedExpansion
set /p inputcode=Please enter encryption code:
cls
set /p code=Please enter the sentence or words you want to encrypt:
cls
set chars=0123456789abcdefghijklmnopqrstuvwuxyz
for /L %%N in (10 1 36) do (
for /F %%C in ("!chars:~%%N,1!") do (
set /a MATH=%%N*%inputcode%
for /F %%F in ("!MATH!") do (
set "code=!code:%%C=-%%F!"
)
)
)
echo !code!
pause
cls
goto start
cls
:DEC
cls
setlocal enableDelayedExpansion
set /p inputcode=Please enter encryption code:
cls
set /p code=Please enter encrypted numbers to decrypt:
cls
set chars=0123456789abcdefghijklmnopqrstuvwuxyz
for /L %%N in (10 1 36) do (
for /F %%C in ("!chars:~%%N,1!") do (
set /a MATH=%%N*%inputcode%
for /F %%F in ("!MATH!") do (
set "code=!code:%%F=-%%C!"
)
)
)
for /F %%F in ("!code!") do (
set "code=!code:-=!"S
)
echo !code!
pause
cls
goto start