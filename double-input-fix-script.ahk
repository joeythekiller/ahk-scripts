#Requires AutoHotkey v2.0

global LastOPress := 0

o:: {
    if (A_TickCount - LastOPress < 150) ; Adjust delay in milliseconds (150 ms here)
        return
    LastOPress := A_TickCount
    Send("o")
    return
}
