#### Q) Why should I care about AutoHotkey / what can AutoHotkey do?  
A) AutoHotkey is the Swiss army knife for Windows
1.	Windows API (Application Programming Interface)
2.	Hotkeys / Remapping of keys
3.	Hotstrings
4.	File / Folder manipulation
5.	Access to Clipboard
6.	Connect / Control YOUR programs:
  *	Microsoft’s Component Object Model (COM)
  *	Connect to Controls
  *	Windows Send & Post Message
  *	DLL calls
  *	Send keystrokes
  *	Send mouse-clicks
7.	Text Manipulation / Regular Expressions
8.	Connect to Webservice APIs
9.	Create GUIs

* We can different scripts and interwoven scripts inside each other like functions. Helps in compartmentalizing.
* Preferably save script in 32-bit as it would run on both 32 and 64 bit computers.

##### Directives - Start with `#`
  * **Positional** - They effect the particular parts you tell them to effect. <br>
    `#WinActive, Notepad` - would effect only notepad

  * **Non-positional** - Doesn't matter where they are placed in the script, they work uniformly like settings. <br>
    `#WinActive` - would effect things done in studio.

##### Commands - `MsgBox`
Only one command can be used per line.

##### Functions -  `strsplit()`
We can assign variables to them. Multiple functions can be used on one line

### Auto Execute section
Auto Execute section is at the top of the code. <br>
AHK begins from executing at the top continuing until one of the following is encountered:
```
  Return
  Exit
  Hotkey
  HotString
  Label
```

### Referencing variables
```
; Declaring a vaiable
Var:="hello World"

; We have two ways of referening
MsgBox %Var%
MsgBox %Var% How are you?
MsgBox % Var
MsgBox % Var "How are you?"
```
