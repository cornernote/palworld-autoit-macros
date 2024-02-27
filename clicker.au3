; Description
; holds fown keys and mouse buttons
;
; Instructions
; - press F1 to hold LMB
; - press F2 to hold F
; - press CTRL+SHIFT+X to quit

HotKeySet("{F1}" , "toggleLMB")
HotKeySet("{F2}" , "toggleF")
HotKeySet("^X" , "quit")

Dim $stateF = False
Dim $stateLMB = False

Func quit()
    Exit
EndFunc

Func toggleLMB()
   If $stateLMB = False Then
      $stateLMB = True
	  MouseDown("left")
   Else
      $stateLMB = False
	  MouseUp("left")
   EndIf
EndFunc

Func toggleF()
   If $stateF = False Then
      $stateF = True
	  Send("{f down}")
   Else
      $stateF = False
      Send("{f up}")
   EndIf
EndFunc

While 1
   If $stateLMB = True Then
	  Sleep(3000)
	  MouseUp("left")
	  Sleep(10)
	  If $stateLMB = True Then
		 MouseDown("left")
	  EndIf
   EndIf
   Sleep(100)
WEnd




