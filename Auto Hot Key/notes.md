# Auto Hot Key

#### Definations

* **Hotkeys:** Combination of keys we press to achieve an action
* **Hotstrings:** Combination of shortcut strings which expand when hotstrings are used

#### Keyboard Commands
* `return` - Stop code from executing any further
* `MsgBox` - Pop-ups a dialog box
* `^` - `Ctrl`
* `!` - `Alt`
* `+` - `Shift`
* `#` - `Windows`
* `Run` - Run an application
* `WinActivate` - Check if a window is active
* `WinWaitActive` -
* `Send` - Send whatever is written after ','
* `SendInput` -
* `&` - An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.
* `<` - same as `!a` except that only the left `Alt` key will trigger it.
* `>` - same as `!a` except that only the right `Alt` key will trigger it.
* `<^>!` - `AltGr`
* `*` - Wildcard: Fire the hotkey even if extra modifiers are being held down.
* `~` - When the hotkey fires, its key's native function will not be blocked .
* `$` -
* `^Numpad0` - `ctrl` + `0`
* `^Numpad1` - `ctrl` + `1`
* `Numpad0 & Numpad1` - You pressed Numpad1 while holding down Numpad0. Will not work when pressed as reverse.
* `Numpad0 & Numpad2` - You pressed Numpad2 while holding down Numpad0
* `WinMaximize` -
* `SetNumLockState AlwaysOn` - Set NumLock always ON
* `SetNumLockState AlwaysOff` - Set NumLock always OFF
* `SetCapsLockState AlwaysOn` - Set CapsLock always ON
* `SetCapsLockState AlwaysOff` - Set CapsLock always OFF
* `SetScrollLockState AlwaysOn` - Set ScrollLock always ON
* `SetScrollLockState AlwaysOff` - Set ScrollLock always OFF
* `KeyWait` -
* `CapsLock`
* `Space`
* `Tab`
* `Enter`  
* `Escape` or `Esc`
* `Backspace`
* `LWin` - Left `Win`. Corresponds to the `<#` hotkey prefix.
* `RWin` - Right `Win`. Corresponds to the `>#` hotkey prefix.
* `Control (or Ctrl)` - `Control` Key.Corresponds to the `^` hotkey prefix.
* `Alt` - `Alt` Key. Corresponds to the `!` hotkey prefix.
* `Shift` - `Shift` Key. Corresponds to the `+` hotkey prefix.
* `LControl (or LCtrl)` - Left `Control`. Corresponds to the `<^` hotkey prefix.
* `RControl (or RCtrl)` - Right `Control`. Corresponds to the `>^` hotkey prefix.
* `LShift` - Left `Shift`. Corresponds to the `<+` hotkey prefix.
* `RShift` - Right `Shift`. Corresponds to the `>+` hotkey prefix.
* `LAlt` - Left `Alt`. Corresponds to the `<!` hotkey prefix.
* `RAlt` - Right `Alt`. Corresponds to the `>!` hotkey prefix.
* `AltGr` - hotkey prefix via `<^>!`
* `LControl & RAlt::` - `AltGr` itself into a hotkey.
* `AppsKey` - `menu` This is the key that invokes the right-click context menu.
* `PrintScreen`
* `CtrlBreak` - `Ctrl + Pause` or `Ctrl + ScrollLock`
* `Pause` - `Pause` or `ctrl + NumLock`. While the `Ctrl` key is held down, the `Pause` key produces the key code of `CtrlBreak` and `NumLock` produces `Pause`, so use `^CtrlBreak` in hotkeys instead of `^Pause`.
* `Help` - Same as `F1`
* `Sleep`
* `` -

####  Window specific hotkeys/hotstrings

* `#IfWinActive`
* `#IfWinExist`

```
<!-- Specify a window title -->

#IfWinActive Untitled - Notepad
#Space::
MsgBox, You pressed WIN+SPACE in Notepad.
return
```
To turn off context sensitivity for subsequent hotkeys or hotstrings, specify any #IfWin directive but leave all of its parameters blank.

```
; Untitled - Notepad
#IfWinActive Untitled - Notepad
!q::
MsgBox, You pressed ALT+Q in Notepad.
return

; Any window that isn't Untitled - Notepad
#IfWinActive
!q::
MsgBox, You pressed ALT+Q in any window.
return
```

 - When `#IfWin` directives are never used in a script, all hotkeys and hotstrings are enabled for all windows.

 The `#IfWin` directives are positional: they affect all hotkeys and hotstrings physically beneath them in the script. They are also mutually exclusive; that is, only the most recent one will be in effect.

 ```
<!-- Notepad -->
#IfWinActive ahk_class Notepad
#Space::
MsgBox, You pressed WIN+SPACE in Notepad.
return
::msg::You typed msg in Notepad  
```
```
<!-- MSPaint -->
#IfWinActive Untitled - Paint
#Space::
MsgBox, You pressed WIN+SPACE in MSPaint!
return
::msg::You typed msg in MSPaint!
 ```

#### Cursor Control Keys

|Keys|Function|
|-----------|--------------|
| `ScrollLock`  
| `Delete`
| `Insert`
| `Home`
| `End`
| `PgUp` | `PageUp` (page up key)
| `PgDn` | `PageDown` (page down key)
| `Up` | Up arrow key
| `Down` | Down arrow key
| `Left` | Left arrow key
| `Right` | Rght arrow Key

#### Numpad Keys

|Keys|Function|
|-----------|--------------|
| `Numpad2 / NumpadDown` |  `2` or `down` Down arrow key
| `Numpad0 / NumpadIns` |  `0` or `Insert`
| `Numpad1 / NumpadEnd` |  `1` or `End`
| `Numpad3 / NumpadPgDn` |  `3` / `PageDown`
| `Numpad4 / NumpadLeft` |  `4` / `←`
| `Numpad5 / NumpadClear` |  `5` / `typically does nothing`
| `Numpad7 / NumpadHome` |  `7` / `Home`
| `Numpad8 / NumpadUp` |  `8` / `↑`
| `Numpad9 / NumpadPgUp` |  `9` / `PageUp`
| `NumpadDot / NumpadDel` |  `.` / `Delete`
| `NumLock` |  `NumLock` (number lock key).
| `NumpadDiv` |  `/` (division)
| `NumpadMult` |  `*` (multiplication)
| `NumpadAdd` |  `+` (addition)
| `NumpadSub` |  `-` (subtraction)
| `NumpadEnter` |  `Enter`

#### Function Keys
* `F1 - F24`

#### Alt-Tab hotkey
Each Alt-Tab hotkey must be a combination of two keys, which is achieved via the ampersand symbol (&).

* `RAlt & j::AltTab` - `AltTab`- If the alt-tab menu is visible, move forward in it.
* `RAlt & k::ShiftAltTab` - `ShiftAltTab`- Same as above except move backward in the menu.
* `AltTabMenu` - Show or hide the alt-tab menu.
* `AltTabAndMenu` - If the alt-tab menu is visible, move forward in it. Otherwise, display the menu.
* `AltTabMenuDismiss` - Close the Alt-tab menu.
* `` -
* `` -
* `` -
* `` -
* `` -
* `` -
* `` -
* `` -
* `` -
* `` -
* `` -
* `RWin::return` - A key or key-combination can be disabled for the entire system by having it do nothing.

#### Mouse Commands

|Command|Meaning|
|--------|-----------|
| `LButton` |  Left mouse button
| `RButton` |  Right mouse button
| `MButton` |  Middle or wheel mouse button
| `WheelUp` |  You turned the mouse wheel up
| `WheelDown` |  You turned the mouse wheel down
| `WheelLeft`| `WheelRight` |   Scroll to the left or right.
| `` |
| `` |
| `` |
| `~RButton` |   Right mouse button
| `~RButton & C` |  You pressed C while holding down the right mouse button.
| `~RButton & LButton` |  You pressed the left mouse button while holding down the right
| `RButton & WheelUp` |  You turned the mouse wheel up while holding down the right button.


#### Combination of Keyboard and Mouse Keys

* `^!WheelUp` - You rotated the wheel up while holding down Control+Alt.
* `` -
* `` -
* `` -
* `` -
* `` -
* `` -
* `` -

#### Key Combinations

* `<^<!m::MsgBox Text` - You pressed `LeftControl+LeftAlt+m`
* `LControl & RAlt` - `AltGr`
* `` -
* `` -


#### Sending Keystrokes
|Command|Meaning|
|--------|-----------|
| `!` |  `Alt`
| `Send, This is text!a` |  Would send the keys "This is text" and then press `Alt+A`
| `!A` |  `Alt` + `Shift` + `A`
| `!a` |  `Alt` + `A`
| `+` |  `Shift`
| `Send, +abC` |  AbC
| `Send, !+a` |  `Alt` + `Shift` + `A`
| `^` |  `Ctrl`
| `Send, ^!a` |  `Ctrl` + `Alt` + `A`
| `Send, ^!a` |  `Ctrl` + `Home`
| `^A` |  `Ctrl` + `Shift` + `A`
| `^a` |  `Ctrl` + `A`
| `#` |  `Win`
| `Send #e` |  `Win` + `e`


#### Use of `{}` brackets
  It's how AHK knows that `{!}` means "exclamation point" and not "press the `Alt` key".

  |Command|Meaning|
  |--------|-----------|
  |`Send, Multiple Enter lines have Enter been sent.`|Wrong|
  |`Send, Multiple{Enter}lines have{Enter}been sent.`|Right|

#### Dialog box
* Dialog box with a Msg: `Msgbox, DemoText!`
* Assign it to a key: `KeyName::Msgbox, DemoText!`

### Hotkeys

```
^q::
Send, This is Aakriti Kashyap
Return

<!-- Open a folder -->
^q::
Run, notepad.exe
Return

<!-- Run an application -->
^q::
Run, C:\Users\aaakriti.KEYSIGHT\Google Drive\Notes\Auto Hot Key
Return

<!-- Open an URL -->
^q::
Run, https://www.youtube.com/watch?v=lxLNtBYjkjU  
Return
```

###  Hotstrings

##### Basic
```
<!-- Syntax -->
::smallstr::expanded string

<!-- Example -->
::cod::Coding in AHK

<!-- Will not wait for the next key to be pressed to trigger it -->
:*:cod::Coding in AHK
```

##### Adding it with Action
```
:*:cod::
Msgbox, CODING IN AHK
Msgbox, CODING IN AHK.... Another Box
Return

<!-- Open a Notepad -->
:*:Note::
Run, Notepad
Return
```

### Wildcards
**Wildcard**: Fire the hotkey even if extra modifiers are being held down.
```
<!-- Win+C, Shift+Win+C, Ctrl+Win+C, etc. will all trigger this hotkey. -->
*#c::Run Calc.exe

<!-- Pressing ScrollLock will trigger this hotkey even when modifier key(s) are (pressed)down. -->
*ScrollLock::Run Notepad  
```

### NumLock Keys

#### Each numpad key can be made to launch two different hotkey subroutines depending on the state of `NumLock`

#### A numpad key can be made to launch the same subroutine regardless of the   `NumLock` state

```
NumpadEnd::
Numpad1::
MsgBox, This hotkey is launched regardless of whether NumLock is on.
return
```
