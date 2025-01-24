#NoEnv  ; Recommended for performance and compatibility
SendMode Input  ; Recommended for newer scripts
SetKeyDelay, 0, 50  ; Adjust delay between key presses
SetTimer, ResetKey, 20  ; Check for key release every 20 ms

$*o::
if (A_TickCount - LastOPress < 150) ; Adjust delay in milliseconds (150 ms here)
    Return
LastOPress := A_TickCount
SendInput, o
Return

ResetKey:
KeyWait, o
Return
