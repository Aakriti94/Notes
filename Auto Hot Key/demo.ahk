#NoEnv ; Recommeded for performace and compatiblity with future AutoHotKey releases.
#SingleInstance,Force ; Force AutoHotKey to only run this script once (one at a time)

Ctrl::Ctrl
!a:: Send, Send, Multiple Enter lines have Enter been sent.
+a:: Send, Multiple{Enter}lines have{Enter}been sent.

MsgBox hello world 
