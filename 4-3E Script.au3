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
SelectDragger()

For $i = int($runs) To 1 Step -1
    WinActivate("[CLASS:Qt5QWindowIcon]")
    GUICtrlSetData ( $GuiLabel, "Runs Left: " & $i )

    _ScreenCapture_Capture(@WorkingDir & "\formationButtonCurrent.jpg", 1050 + $emu[0], 440 + $emu[1], 1260 +$emu[0], 530 +$emu[1])
    While (not _CompareImages($formationButtonCurrent, $formationButtonDefault))
        RestartLogi()
    WEnd

    _ScreenCapture_Capture(@WorkingDir & "\repairButtonCurrent.jpg", 835 + $emu[0], 265 + $emu[1], 1015 +$emu[0], 330 +$emu[1])
    RepairLoop()

    _ScreenCapture_Capture(@WorkingDir & "\formationButtonCurrent.jpg", 1050 + $emu[0], 440 + $emu[1], 1260 +$emu[0], 530 +$emu[1])
    While (not _CompareImages($formationButtonCurrent, $formationButtonDefault))
        RestartLogi()
    WEnd

    FormationClick()
    Sleep(Random(3000,4000))
    Echelon1ChangeUnit()
    Sleep(Random(2000,3000))
    If $Dragger == "RF" Then
        ChangeFilterRF()
    ElseIf $Dragger == "AR" Then
        ChangeFilterAR()
    EndIf
    
    Sleep(Random(1000,2000))
    If Mod($i,2) = 0 Then
        SelectUnit1()
    Else
        SelectUnit2()
    EndIf
    Sleep(Random(1000,2000))
    SelectEchelon2()
    Sleep(Random(1000,2000))
    Echelon2ChangeUnit()
    Sleep(Random(2000,3000))
    If Mod($i,2) = 0 Then
        SelectUnit2()
    Else
        SelectUnit1()
    EndIf
    Sleep(Random(2000,3000))
    ReturnToBaseClick()
    Sleep(Random(4000,4500))

    _ScreenCapture_Capture(@WorkingDir & "\formationButtonCurrent.jpg", 1050 + $emu[0], 440 + $emu[1], 1260 +$emu[0], 530 +$emu[1])
    While (not _CompareImages($formationButtonCurrent, $formationButtonDefault))
        RestartLogi()
    WEnd

    ClickCombat()
    Sleep(Random(1500,4000))
    SelectChapter4()
    Sleep(Random(1000,2500))
    SelectEmergency()
    Sleep(Random(1500,3000))
    Select4_3()
    Sleep(Random(1000,2500))
    NormalBattleClick()
    Sleep(Random(2500,4000))
    DeployTeam1()
    Sleep(Random(2000,3000))
    DeployTeam2()
    Sleep(Random(2500,3500))
    StartOperationClick()
    Sleep(Random(4000,4500))
    ResupplyEchelon1()
    Sleep(Random(2000,3000))
    PlanningModeClick()
    Sleep(Random(1000,2500))
    SelectNode1()
    Sleep(Random(1000,2500))
    SelectNode2()
    Sleep(Random(1000,2500))
    SelectNode3()
    Sleep(Random(1000,2500))
    MouseDragTopToBottom()
    Sleep(Random(2000,3000))
    SelectNode4()
    Sleep(Random(1000,2500))
    SelectNode5()
    Sleep(Random(1000,2500))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(130000,135000))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(11000,12000))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(4000,5000))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(1000,2000))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(4000,4500))
Next