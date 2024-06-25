[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=c7e1d6a7-4dd2-49cb-95ff-a9531cc9590d
Description=dianmond2
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
For 9999

intPlantX = 500  'column base pos, leftmost
intPlantIntervalX = 84  'column interval


'========== buy cards x 10 ==========
Delay 222
KeyDown "6", 1
Delay 49
KeyUp "6", 1  'go to inventory
MoveTo 1196, 691
Delay 222
LeftClick 1  'go to shop
MoveTo 1195, 691
Delay 222
RightClick 1  'switch to gold shop
MoveTo 1174, 348
Delay 222
LeftClick 1  'buy cards x 10
MoveTo 765, 546
Delay 222
LeftClick 3  'confirm purchase
MoveTo 1200, 750
Delay 222
LeftClick 1  'exit shop
'========== buy cards x 10 ==========



For 9  'plant in 9 columns
 
'========== use card and plant ==========
Delay 222
KeyDown "6", 1  'go to inventory
Delay 100
KeyUp "6", 1
MoveTo 1068, 754  'go to next page
Delay 222
LeftClick 1
MoveTo 1149, 353  'use card
Delay 222
LeftClick 1
Delay 700

FindColor 800,500,870,570,"FFFFFF",intX,intY  'find the dropped card pos
If intX > 0 And intY > 0 Then
End If

MoveTo intX, intY  'pick up card
Delay 222
LeftClick 1

MoveTo intPlantX, 301  'plant ca
Delay 222
LeftClick 1
'========== use card and plant ==========

intPlantX = intPlantX + intPlantIntervalX  'move to the next col

Next


Delay 185000  ' 3 min for holes to recover, 5 sec for dropped cards to disappear


Next 
