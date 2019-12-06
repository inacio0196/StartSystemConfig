Rofi-locate - Search files and folders on your system

    tutorial video: Link
    offical website: Link

install requirements

rofi mlocate

colors

vim ~/.Xresources


!-------- ROFI Color theme {{{
!------------------------------------------------------
! https://davedavenport.github.io/rofi/p11-Generator.html
rofi.color-enabled: true
rofi.color-window: #000000, #000000, #000000
rofi.color-normal: #000000, #b3e774, #000000, #b3e774, #000000
rofi.color-active: #000000, #b3e774, #000000, #b3e774, #000000
rofi.color-urgent: #000000, #b3e774, #000000, #b3e774, #000000
! }}}

hotkey binding command (better version) Thanks @smilingverb

locate home media | rofi -threads 0 -width 100 -dmenu -i -p "locate:" | xargs -r -0 xdg-open

