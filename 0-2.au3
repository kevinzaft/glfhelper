#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
#Include "CompareImagesUDF.au3"
#Include <Methods.au3>
#include <ScreenCapture.au3>
#include <WindowsConstants.au3>
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

Func SelectNode0_0_2()
    Local $minCoor[2] = [620 + $emu[0], 350 + $emu[1]]
    Local $maxCoor[2] = [700 + $emu[0], 425 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode1_0_2()
    Local $minCoor[2] = [475 + $emu[0], 275 + $emu[1]]
    Local $maxCoor[2] = [525 + $emu[0], 310 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode2_0_2()
    Local $minCoor[2] = [505 + $emu[0], 565 + $emu[1]]
    Local $maxCoor[2] = [565 + $emu[0], 610 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode3_0_2()
    Local $minCoor[2] = [650 + $emu[0], 365 + $emu[1]]
    Local $maxCoor[2] = [695 + $emu[0], 405 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode4_0_2()
    Local $minCoor[2] = [500 + $emu[0], 270 + $emu[1]]
    Local $maxCoor[2] = [550 + $emu[0], 305 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode5_0_2()
    Local $minCoor[2] = [785 + $emu[0], 270 + $emu[1]]
    Local $maxCoor[2] = [835 + $emu[0], 310 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode6_0_2()
    Local $minCoor[2] = [965 + $emu[0], 295 + $emu[1]]
    Local $maxCoor[2] = [1025 + $emu[0], 355 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Local $runs = InputBox("Question", "How Many Runs", "")
Global $_GuiCountDown = GUICreate ( "Runs Left", 300, 150, 0,0, $WS_EX_TOPMOST  )
Global $GuiLabel = GUICtrlCreateLabel ( "", 35, -10, 480, 180, 60000 )
Global $counter = 0
GUISetState ( )
For $i = int($runs) To 1 Step -1
    WinActivate("[CLASS:Qt5QWindowIcon]")
    GUICtrlSetData ( $GuiLabel, "Runs Left: " & $i )

    _ScreenCapture_Capture("C:\Users\Speed\Desktop\GFL Script" & "\formationButtonCurrent.jpg", 1050 + $emu[0], 440 + $emu[1], 1260 +$emu[0], 530 +$emu[1])
    While (not _CompareImages($formationButtonCurrent, $formationButtonDefault))
        RestartLogi()
    WEnd

    If Not($counter == 0) And Mod($counter,3) = 0 Then
        RepaireButtonClick()
        Sleep(Random(2500,4000))
        SelectRepairSlot()
        Sleep(Random(1500,2000))
        SelectRepairDoll()
        Sleep(Random(1000,1500))
        RepairOkClick()
        Sleep(Random(1000,1500))
        SelectQuickRepair()
        Sleep(Random(1000,1500))
        RepairResourceCostOkClick()
        Sleep(Random(1500,2000))
        ReturnToBaseClick()
        Sleep(Random(500,1000))
        ReturnToBaseClick()
        Sleep(Random(3500,4000))
    EndIf

    _ScreenCapture_Capture("C:\Users\Speed\Desktop\GFL Script" & "\formationButtonCurrent.jpg", 1050 + $emu[0], 440 + $emu[1], 1260 +$emu[0], 530 +$emu[1])
    While (not _CompareImages($formationButtonCurrent, $formationButtonDefault))
        RestartLogi()
    WEnd

    FormationClick()
    Sleep(Random(3000,4000))
    Echelon1ChangeUnit()
    Sleep(Random(2000,3000))
    ChangeFilterAR()
    Sleep(Random(1000,2000))
    If Mod($i,2) = 0 Then
        SelectUnit1()
    Else
        SelectUnit5()
    EndIf
    Sleep(Random(1000,2000))
    SelectEchelon2()
    Sleep(Random(1000,2000))
    Echelon2ChangeUnit()
    Sleep(Random(2000,3000))
    If Mod($i,2) = 0 Then
        SelectUnit5()
    Else
        SelectUnit1()
    EndIf
    Sleep(Random(2000,3000))
    ReturnToBaseClick()
    Sleep(Random(4000,4500))

    _ScreenCapture_Capture("C:\Users\Speed\Desktop\GFL Script" & "\formationButtonCurrent.jpg", 1050 + $emu[0], 440 + $emu[1], 1260 +$emu[0], 530 +$emu[1])
    While (not _CompareImages($formationButtonCurrent, $formationButtonDefault))
        RestartLogi()
    WEnd

    ClickCombat()
    Sleep(Random(1500,4000))
    SelectChapter0()
    Sleep(Random(1500,3000))
    Select0_2()
    Sleep(Random(1000,2500))
    NormalBattleClick()
    Sleep(Random(2500,4000))
    DeployTeam1_0_2()
    Sleep(Random(2000,3000))
    DeployTeam2_0_2()
    Sleep(Random(2500,3500))
    StartOperationClick()
    Sleep(Random(4000,4500))
    ResupplyEchelon1_0_2()
    Sleep(Random(2000,3000))
    PlanningModeClick()
    Sleep(Random(1000,2500))

    SelectNode0_0_2()
    Sleep(Random(1000,2500))
    SelectNode1_0_2()
    Sleep(Random(1000,2500))
    MouseDragTopToBottom()
    Sleep(Random(2000,3000))
    SelectNode2_0_2()
    Sleep(Random(1000,2500))
    SelectNode3_0_2()
    Sleep(Random(1000,2500))
    SelectNode4_0_2()
    Sleep(Random(1000,2500))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(155000,160000))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(14000,15000))
    PlanningModeClick()
    Sleep(Random(1000,2500))

    SelectNode4_0_2()
    Sleep(Random(1000,2500))
    SelectNode5_0_2()
    Sleep(Random(1000,2500))
    SelectNode6_0_2()
    Sleep(Random(1000,2500))

    Ok_Execute_End_ButtonClick()
    Sleep(Random(100000,105000))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(11000,12000))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(4000,5000))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(1000,2000))
    Ok_Execute_End_ButtonClick()
    Sleep(Random(4000,4500))

    $counter += 1
Next