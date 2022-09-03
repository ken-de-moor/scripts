;OPTIMIZATIONS START
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
;OPTIMIZATIONS END


Esc::BreakLoop=1
F10::
   BreakLoop:=0
   Loop {
      Sleep 40
      PixelSearch, A, B, 150, 150, %A_ScreenWidth%, %A_ScreenHeight%, 0x08B7F9, 1, Fast
      if (ErrorLevel = 0){
         CoordMode, Mouse, Screen
         MouseMove, %A%, %B%
         Click
      }
      Sleep 40
      PixelSearch, A, B, 150, 150, %A_ScreenWidth%, %A_ScreenHeight%, 0x4A96D1, 1, Fast
      if (ErrorLevel = 0){
         CoordMode, Mouse, Screen
         MouseMove, %A%, %B%
         Click
      }
      if ( BreakLoop = 1 )break
   }
return              
