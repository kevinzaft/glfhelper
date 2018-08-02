#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
#Include <Methods.au3>
#include <ScreenCapture.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
;for 1280x720 res

Global $emuLocation = WinGetPos("[CLASS:Qt5QWindowIcon]")
Global $emu[4] = [$emuLocation[0], $emuLocation[1], $emuLocation[0] + $emuLocation[2], $emuLocation[1] + $emuLocation[3]]
Global $formationButtonCurrent = "formationButtonCurrent.jpg"
Global $formationButtonDefault = "formationButtonDefault.jpg"
Global $repairButtonCurrent = "repairButtonCurrent.jpg"
Global $repairButtonDefault = "repairButtonDefault.jpg"

;[0]=x [1]=y [2]=max x [3]=max y
HotKeySet("{ESC}", "Terminate")
Func Terminate()
    Exit
EndFunc

Global $Dragger = ""
Func SelectDragger()
    ; Create a GUI with various controls.
    Local $hGUI = GUICreate("Select Dragger Type", 300, 100)

    ; Create a button control.
    Local $idButton_AR = GUICtrlCreateButton("AR", 120, 70, 85, 25)
    Local $idButton_RF = GUICtrlCreateButton("RF", 20, 70, 85, 25)
    Local $idButton_Close = GUICtrlCreateButton("Close", 210, 70, 85, 25)

    ; Display the GUI.
    GUISetState(@SW_SHOW, $hGUI)

    While 1
        Switch GUIGetMsg()
            Case $GUI_EVENT_CLOSE, $idButton_Close
                $runs = 0
                ExitLoop
            Case $idButton_RF
                $Dragger = "RF"
                ExitLoop
            Case $idButton_AR
                $Dragger = "AR"
                ExitLoop
        EndSwitch
    WEnd
    ; Delete the previous GUI and all controls.
    GUIDelete($hGUI)
EndFunc 

Local $runs = InputBox("Question", "How Many Runs", "")
Global $_GuiCountDown = GUICreate ( "Runs Left", 300, 150, 0,0, $WS_EX_TOPMOST  )
Global $GuiLabel = GUICtrlCreateLabel ( "", 35, -10, 480, 180, 60000 )
GUISetState ( )
WinActivate("[CLASS:Qt5QWindowIcon]")
while True
    GUICtrlSetData ( $GuiLabel, "Logistic Bot")
    _ScreenCapture_Capture(@WorkingDir & "\formationButtonCurrent.jpg", 1050 + $emu[0], 440 + $emu[1], 1260 +$emu[0], 530 +$emu[1])
    While (not _CompareImages($formationButtonCurrent, $formationButtonDefault))
        RestartLogi()
    WEnd
    Sleep(10000)
WEnd
