#Persistent ; Keeps script running until explicitly closed
db := false ; Set db to false initially

Gui, Add, Text, x50 y30 w200 h990 Center, R for Rod`nF for AnındaHasarV1`nV for web
Gui, Show, w320 h100, Millerz Client
return

$R:: ; Hotkey for the "R" key
    if (!db) {
        Send 9
        Sleep 100 ; Adjust the sleep time as needed
        Click Right
        Sleep 100 ; Adjust the sleep time as needed
        Send 1
    }
return

$F:: ; Hotkey for the "F" key
    if (!db) {
        Send 8
        Click Right
        Send 1
    }
return

X:: ; Hotkey for the "+" key
    db := true ; Toggle db to true
return

$V:: ; Hotkey for the "V" key
    while GetKeyState("v", "P") { ; Check if V is being held down
        Send 7
        Click Right
        Sleep 100 ; Adjust the sleep time as needed
    }
    if (!db) {
        Send 1
    }
return

GuiClose:
    ExitApp
return
