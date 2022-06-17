###  Scrolls horizontally instead of vertically

### Mouse wheel as an substitute for Alt-tab

```
MButton::AltTabMenu
WheelDown::AltTab
WheelUp::ShiftAltTab
```

### Copy the last line
```
^b::  ; CTRL+B hotkey
Send, {Ctrl down}c{Ctrl up}
SendInput, {Ctrl down}v{Ctrl up}
return
```
