#maxThreadsPerHotkey, 2
InputBox, logs, how many tread you want to do?
if ErrorLevel = 1
{	
	ExitApp
}
Loop, 3
{	
	CenterWindow("ahk_exe RobloxPlayerBeta.exe")
	Sleep 100
}
CenterWindow(WinTitle)
{	
	WinGetPos,,, Width, Height, %WinTitle%
	WinMove, %WinTitle%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2), 400, 400
}

MsgBox, 0,Tutorial, F1 for running speed F2 for stamina 

removetooltip:
    ToolTip
return
F1::
macro_on := !macro_on
if (macro_on)
{	
	CoordMode , Pixel, Window
	slot = 1
	current = 0
	detectstam = False
	PixelGetColor , color2, 250, 134,
	Loop ,
	{	   
		CoordMode , Click, Window
		toolTip, %A_Index%
		SetTimer, removetooltip, -3000
		Click , 520, 310 ;select rs
		Sleep 1000
		Click , 340, 370 ; lvl 5
		Sleep 200
		Click , 340, 340 ; lvl 4
		Sleep 200
		Click , 340, 310 ; lvl 3
		Sleep 200
		Click , 340, 280 ; lvl 2
		Sleep 200
		Click , 340, 250 ; lvl 1
		Sleep 200
		Click , 410, 355 ; click the hand thing
		Sleep 3000 ; wait for 3 sec countdown before start
		Sleep 10000 ; example of sleep for 10 sec before start doing tread
		StartTime := A_TickCount
		Loop ,
		{			
			CoordMode , Pixel, Window
			CoordMode , Click, Window
			ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\w.png
			if (errorlevel = 0)
			{				
				Sendinput w
			}			
			ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\a.png
			if (errorlevel = 0)
			{				
				Sendinput a
			}			
			ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\s.png
			if (errorlevel = 0)
			{				
				Sendinput s
			}			
			ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\d.png
			if (errorlevel = 0)
			{				
				Sendinput d
			}

		} Until A_TickCount - StartTime > 50000 ;example of loop image search for 50 sec
		StartTime2 := A_TickCount
		Loop ,
		{			
			Click , 409, 296
			Sleep 16
		} Until A_TickCount - StartTime2 > 6000
		PixelSearch , x, y, 70, 144, 95, 146, 0x3A3A3A, *50, Fast
		If ErrorLevel = 0
		{
			if current <= 5
			{
				Sleep 1000
				Click , 410, 340
				Sleep 100
				Send %slot%
				Sleep 200
				Send {Click 10}
				Sleep 8000
				Send %slot%
				current++
				1 := A_TickCount
				Loop ,
				{					
					Click , 409, 296
					Sleep 16
				} Until A_TickCount - 1 > 1000
			}
			if slot = 0
			{
				if current >= 5
				{
					Send !{f4}
					Exitapp
				}
			}
			if current >= 5
			{
				slot++
				current = 0
				if slot >= 10
				{
					slot = 0
				}
			}
		}		
		if A_Index = %logs%
		{			
			Send !{f4}
			ExitApp
		}		
		StartTime4 := A_TickCount
		Loop,
		{			
			Sleep 100
			PixelSearch , x, y, 249, 133, 250, 135, color2, , Fast
			If ErrorLevel = 0
			{				
				Break
			}		
		} Until A_TickCount - StartTime4 > 17000
	}
}
else
{	
	ExitApp
}
Return

F2::
macro_on := !macro_on
if (macro_on)
{	
	CoordMode , Pixel, Window
	slot = 1
	current = 0
    detectstam = False
	PixelGetColor , color2, 250, 134,
	Loop ,
	{		
		CoordMode , Click, Window
		toolTip, %A_Index%
		SetTimer, removetooltip, -3000
		Click , 290, 310 ; select stamina
		Sleep 1000
		Click , 340, 370 ; lvl 5
		Sleep 200
		Click , 340, 340 ; lvl 4
		Sleep 200
		Click , 340, 310 ; lvl 3
		Sleep 200
		Click , 340, 280 ; lvl 2
		Sleep 200
		Click , 340, 250 ; lvl 1
		Sleep 200
		Click , 410, 355 ; click the hand thing
		Sleep 3000 ; wait for 3 sec countdown before start
		Sleep 10000 ; example of sleep for 10 sec before start doing tread
		StartTime := A_TickCount
		Loop ,
		{			
			CoordMode , Pixel, Window
			CoordMode , Click, Window
			ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\w.png
			if (errorlevel = 0)
			{				
				Sendinput w
			}			
			ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\a.png
			if (errorlevel = 0)
			{				
				Sendinput a
			}			
			ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\s.png
			if (errorlevel = 0)
			{				
				Sendinput s
			}			
			ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\d.png
			if (errorlevel = 0)
			{				
				Sendinput d
			}

		} Until A_TickCount - StartTime > 50000 ;example of loop image search for 50 sec
		StartTime2 := A_TickCount
		Loop ,
		{			
			Click , 409, 296
			Sleep 16
		} Until A_TickCount - StartTime2 > 6000
		PixelSearch , x, y, 70, 144, 95, 146, 0x3A3A3A, *50, Fast
		If ErrorLevel = 0
		{
			if current <= 5
			{
				Sleep 1000
				Click , 410, 340
				Sleep 100
				Send %slot%
				Sleep 200
				Send {Click 10}
				Sleep 8000
				Send %slot%
				current++
				1 := A_TickCount
				Loop ,
				{					
					Click , 409, 296
					Sleep 16
				} Until A_TickCount - 1 > 1000
			}
			if slot = 0
			{
				if current >= 5
				{
					Send !{f4}
					Exitapp
				}
			}
			if current >= 5
			{
				slot++
				current = 0
				if slot >= 10
				{
					slot = 0
				}
			}
		}		
		if A_Index = %logs%
		{			
			Send !{f4}
			ExitApp
		}		
		StartTime4 := A_TickCount
		Loop,
		{			
			Sleep 100
			PixelSearch , x, y, 249, 133, 250, 135, color2, , Fast
			If ErrorLevel = 0
			{				
				Break
			}		
		} Until A_TickCount - StartTime4 > 17000
	}
}
else
{	
	ExitApp
}
Return
end::reload
