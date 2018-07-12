#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
#include <ScreenCapture.au3>
#include <WindowsConstants.au3>
#Include "CompareImagesUDF.au3"
;for 1280x720 res

Global $emuLocation = WinGetPos("[CLASS:Qt5QWindowIcon]")
Global $emu[4] = [$emuLocation[0], $emuLocation[1], $emuLocation[0] + $emuLocation[2], $emuLocation[1] + $emuLocation[3]]
Global $formationButtonCurrent = "formationButtonCurrent.jpg"
Global $formationButtonDefault = "formationButtonDefault.jpg"
Global $repairButtonCurrent = "repairButtonCurrent.jpg"
Global $repairButtonDefault = "repairButtonDefault.jpg"

;[0]=x [1]=y [2]=max x [3]=max y

Func FormationClick()
    Local $formationButtonMin[2] = [1050 + $emu[0], 440 + $emu[1]]
    Local $formationButtonMax[2] = [1260 +$emu[0], 530 +$emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($formationButtonMin[0],$formationButtonMax[0]), Random($formationButtonMin[1],$formationButtonMax[1]))
EndFunc

Func Echelon1ChangeUnit()
    Local $minCoor[2] = [150 + $emu[0], 150 + $emu[1]]
    Local $maxCoor[2] = [315 + $emu[0], 550 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectUnit1()
    Local $minCoor[2] = [200 + $emu[0], 145 + $emu[1]]
    Local $maxCoor[2] = [355 + $emu[0], 425 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectUnit2()
    Local $minCoor[2] = [375 + $emu[0], 145 + $emu[1]]
    Local $maxCoor[2] = [535 + $emu[0], 425 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectUnit3()
    Local $minCoor[2] = [560 + $emu[0], 145 + $emu[1]]
    Local $maxCoor[2] = [705 + $emu[0], 425 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectUnit4()
    Local $minCoor[2] = [735 + $emu[0], 145 + $emu[1]]
    Local $maxCoor[2] = [885 + $emu[0], 425 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectUnit5()
    Local $minCoor[2] = [915 + $emu[0], 145 + $emu[1]]
    Local $maxCoor[2] = [1065 + $emu[0], 425 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectEchelon2()
    Local $minCoor[2] = [20 + $emu[0], 225 + $emu[1]]
    Local $maxCoor[2] = [120 + $emu[0], 290 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func Echelon2ChangeUnit()
    Local $minCoor[2] = [885 + $emu[0], 150 + $emu[1]]
    Local $maxCoor[2] = [1050 + $emu[0], 550 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func ReturnToBaseClick()
    Local $minCoor[2] = [15 + $emu[0], 35 + $emu[1]]
    Local $maxCoor[2] = [135 + $emu[0], 120 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func ClickCombat()
    Local $minCoor[2] = [820 + $emu[0], 450 + $emu[1]]
    Local $maxCoor[2] = [1030 + $emu[0], 550 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectChapter4()
    Local $minCoor[2] = [210 + $emu[0], 540 + $emu[1]]
    Local $maxCoor[2] = [320 + $emu[0], 625 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectChapter0()
    Local $minCoor[2] = [210 + $emu[0], 150 + $emu[1]]
    Local $maxCoor[2] = [320 + $emu[0], 215 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectEmergency()
    Local $minCoor[2] = [1065 + $emu[0], 205 + $emu[1]]
    Local $maxCoor[2] = [1135 + $emu[0], 225 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func Select4_3()
    Local $minCoor[2] = [420 + $emu[0], 500 + $emu[1]]
    Local $maxCoor[2] = [1265 + $emu[0], 590 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func Select0_2()
    Local $minCoor[2] = [420 + $emu[0], 385 + $emu[1]]
    Local $maxCoor[2] = [1265 + $emu[0], 470 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func NormalBattleClick()
    Local $minCoor[2] = [673 + $emu[0], 575 + $emu[1]]
    Local $maxCoor[2] = [826 + $emu[0], 645 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func Ok_Execute_End_ButtonClick()
    Local $minCoor[2] = [1100 + $emu[0], 654 + $emu[1]]
    Local $maxCoor[2] = [1260 + $emu[0], 710 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func DeployTeam1()
    Local $minCoor[2] = [188 + $emu[0], 355 + $emu[1]]
    Local $maxCoor[2] = [255 + $emu[0], 435 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
    Sleep(Random(1500,2500))
    Ok_Execute_End_ButtonClick()
EndFunc

Func DeployTeam2()
    Local $minCoor[2] = [1040 + $emu[0], 480 + $emu[1]]
    Local $maxCoor[2] = [1111 + $emu[0], 555 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
    Sleep(Random(1500,2500))
    Ok_Execute_End_ButtonClick()
EndFunc

Func DeployTeam1_0_2()
    Local $minCoor[2] = [222 + $emu[0], 344 + $emu[1]]
    Local $maxCoor[2] = [305 + $emu[0], 416 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
    Sleep(Random(1500,2500))
    Ok_Execute_End_ButtonClick()
EndFunc

Func DeployTeam2_0_2()
    Local $minCoor[2] = [620 + $emu[0], 350 + $emu[1]]
    Local $maxCoor[2] = [705 + $emu[0], 425 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
    Sleep(Random(1500,2500))
    Ok_Execute_End_ButtonClick()
EndFunc

Func StartOperationClick()
    Local $minCoor[2] = [1000 + $emu[0], 635 + $emu[1]]
    Local $maxCoor[2] = [1260 + $emu[0], 720 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func ResupplyClick()
    Local $minCoor[2] = [1090 + $emu[0], 565 + $emu[1]]
    Local $maxCoor[2] = [1280 + $emu[0], 620 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func ResupplyEchelon1()
    Local $minCoor[2] = [188 + $emu[0], 355 + $emu[1]]
    Local $maxCoor[2] = [255 + $emu[0], 435 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]),2,Random(15,20))
    Sleep(Random(1500,2500))
    ResupplyClick()
EndFunc

Func ResupplyEchelon1_0_2()
    Local $minCoor[2] = [222 + $emu[0], 344 + $emu[1]]
    Local $maxCoor[2] = [305 + $emu[0], 416 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]),2,Random(15,20))
    Sleep(Random(1500,2500))
    ResupplyClick()
EndFunc

Func PlanningModeClick()
    Local $minCoor[2] = [10 + $emu[0], 600 + $emu[1]]
    Local $maxCoor[2] = [150 + $emu[0], 640 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func MouseDragTopToBottom()
    Local $minCoorRight[2] = [1130 + $emu[0], 50 + $emu[1]]
    Local $maxCoorRight[2] = [1270 + $emu[0], 50 + $emu[1]]
    Local $minCoorLeft[2] = [820 + $emu[0], 740 + $emu[1]]
    Local $maxCoorLeft[2] = [1120 + $emu[0], 740 + $emu[1]]
    MouseClickDrag($MOUSE_CLICK_LEFT, Random($minCoorRight[0],$maxCoorRight[0]), Random($minCoorRight[1],$maxCoorRight[1]), _
                         Random($minCoorLeft[0],$maxCoorLeft[0]), Random($minCoorLeft[1],$maxCoorLeft[1]),Random(25,35))
EndFunc

Func SelectNode1()
    Local $minCoor[2] = [1040 + $emu[0], 480 + $emu[1]]
    Local $maxCoor[2] = [1111 + $emu[0], 555 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode2()
    Local $minCoor[2] = [1045 + $emu[0], 345 + $emu[1]]
    Local $maxCoor[2] = [1085 + $emu[0], 380 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode3()
    Local $minCoor[2] = [1100 + $emu[0], 180 + $emu[1]]
    Local $maxCoor[2] = [1145 + $emu[0], 225 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode4()
    Local $minCoor[2] = [1010 + $emu[0], 460 + $emu[1]]
    Local $maxCoor[2] = [1050 + $emu[0], 495 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectNode5()
    Local $minCoor[2] = [1015 + $emu[0], 237 + $emu[1]]
    Local $maxCoor[2] = [1075 + $emu[0], 290 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func RepaireButtonClick()
    MouseClick( $MOUSE_CLICK_LEFT, Random(835 + $emu[0],1015 +$emu[0]), Random(265 + $emu[1],330 +$emu[1]))
EndFunc

Func SelectRepairSlot()
    Local $minCoor[2] = [50 + $emu[0], 179 + $emu[1]]
    Local $maxCoor[2] = [770 + $emu[0], 690 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectRepairDoll()
    Local $minCoor[2] = [20 + $emu[0], 145 + $emu[1]]
    Local $maxCoor[2] = [170 + $emu[0], 420 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func RepairOkClick()
    Local $minCoor[2] = [1100 + $emu[0], 530 + $emu[1]]
    Local $maxCoor[2] = [1265 + $emu[0], 630 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func SelectQuickRepair()
    Local $minCoor[2] = [285 + $emu[0], 505 + $emu[1]]
    Local $maxCoor[2] = [350 + $emu[0], 565 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func RepairResourceCostOkClick()
    Local $minCoor[2] = [845 + $emu[0], 505 + $emu[1]]
    Local $maxCoor[2] = [1010 + $emu[0], 565 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func RepeatLogisticConfirmClick()
    Local $minCoor[2] = [670 + $emu[0], 495 + $emu[1]]
    Local $maxCoor[2] = [830 + $emu[0], 555 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
EndFunc

Func ChangeFilterRF()
    Local $minCoor[2] = [1110 + $emu[0], 270 + $emu[1]]
    Local $maxCoor[2] = [1250 + $emu[0], 355 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
    Sleep(Random(1000,1500))
    Local $minCoor2[2] = [900 + $emu[0], 390 + $emu[1]]
    Local $maxCoor2[2] = [1060 + $emu[0], 460 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor2[0],$maxCoor2[0]), Random($minCoor2[1],$maxCoor2[1]))
    Sleep(Random(1500,2500))
    SelectUnit1()
EndFunc

Func ChangeFilterAR()
    Local $minCoor[2] = [1110 + $emu[0], 270 + $emu[1]]
    Local $maxCoor[2] = [1250 + $emu[0], 355 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
    Sleep(Random(1000,1500))
    Local $minCoor2[2] = [535 + $emu[0], 480 + $emu[1]]
    Local $maxCoor2[2] = [700 + $emu[0], 545 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor2[0],$maxCoor2[0]), Random($minCoor2[1],$maxCoor2[1]))
    Sleep(Random(1500,2500))
    SelectUnit1()
EndFunc

Func ChangeFilterMG()
    Local $minCoor[2] = [1110 + $emu[0], 270 + $emu[1]]
    Local $maxCoor[2] = [1250 + $emu[0], 355 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor[0],$maxCoor[0]), Random($minCoor[1],$maxCoor[1]))
    Sleep(Random(1000,1500))
    Local $minCoor2[2] = [720 + $emu[0], 485 + $emu[1]]
    Local $maxCoor2[2] = [875 + $emu[0], 545 + $emu[1]]
    MouseClick( $MOUSE_CLICK_LEFT, Random($minCoor2[0],$maxCoor2[0]), Random($minCoor2[1],$maxCoor2[1]))
    Sleep(Random(1500,2500))
    SelectUnit1()
EndFunc

Func RestartLogi()
    Sleep(Random(4000,4500))
    MouseClick( $MOUSE_CLICK_LEFT, Random($emu[0]+500, $emu[2]+500), Random($emu[1]-500, $emu[3]-500))
    Sleep(Random(500,1000))
    RepeatLogisticConfirmClick()
    Sleep(Random(3500,4000))
    _ScreenCapture_Capture(@WorkingDir & "\formationButtonCurrent.jpg", 1050 + $emu[0], 440 + $emu[1], 1260 +$emu[0], 530 +$emu[1])
EndFunc

Func RepairLoop()
    While (not _CompareImages($repairButtonCurrent, $repairButtonDefault))
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
        _ScreenCapture_Capture(@WorkingDir & "\repairButtonCurrent.jpg", 835 + $emu[0], 265 + $emu[1], 1015 +$emu[0], 330 +$emu[1])
    WEnd
EndFunc
