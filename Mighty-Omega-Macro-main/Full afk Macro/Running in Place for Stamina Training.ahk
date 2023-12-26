; test

end::reload
#MaxThreadsPerHotkey, 2
f1::
macro_on := !macro_on
if (macro_on)
{
    CoordMode Pixel, Window
    CoordMode Mouse, Window
    eat = 1
    temp = 0
    PixelGetColor , color2, 230, 134,
    Loop,
    {
        Sleep 100
        Sendinput, {w down}{w up}{w down}{s down}
        Loop,
        {
            PixelSearch , x, y, 40, 133, 45, 135, 0x3A3A3A, 40, Fast
            If ErrorLevel = 0
            {
                Sendinput, {w up}{s up}
                StartTime11 := A_TickCount
                Loop,
                {	
                    CoordMode , Pixel, Window
                    PixelSearch , x, y, 229, 133, 231, 135, color2, 3, Fast
                    If ErrorLevel = 0
                    {
                        Sleep 100
                        Break
                    }
                } Until A_TickCount - StartTime11 > 21000
                Break
            }
        }
        PixelSearch , x, y, 70, 144, 80, 146, 0x3A3A3A, 40, Fast
            If ErrorLevel = 0
            {
                if eat = 1
                {
                    temp++
                    Sendinput, {w up}{s up}
                    Send 2
                    Sleep 50
                    Send {Click}
                    Sleep 5000
                    Send 2
                    Sleep 200
                    
                    if temp = 5
                    {
                    temp = 0
                    eat = 2
                    }
                }
                if eat = 2
                {
                    temp++
                    Sendinput, {w up}{s up}
                    Send 3
                    Sleep 50
                    Send {Click}
                    Sleep 5000
                    Send 3
                    Sleep 200
                    
                    if temp = 5
                    {
                    temp = 0
                    eat = 3
                    }
                }
                if eat = 3
                {
                    temp++
                    Sendinput, {w up}{s up}
                    Send 4
                    Sleep 50
                    Send {Click}
                    Sleep 5000
                    Send 4
                    Sleep 200
                    
                    if temp = 5
                    {
                    temp = 0
                    eat = 4
                    }
                }
                if eat = 4
                {
                    temp++
                    Sendinput, {w up}{s up}
                    Send 5
                    Sleep 50
                    Send {Click}
                    Sleep 5000
                    Send 5
                    Sleep 200
                    if temp = 5
                    {
                    temp = 0
                    eat = 5
                    }
                }
                if eat = 5
                {
                    temp++
                    Sendinput, {w up}{s up}
                    Send 6
                    Sleep 50
                    Send {Click}
                    Sleep 5000
                    Send 6
                    Sleep 200
                    if temp = 5
                    {
                        temp = 0
                        eat = 6
                    }
                }
                if eat = 6
                {
                temp++
                Sendinput, {w up}{s up}
                Send 7
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 7
                Sleep 200
                if temp = 5
                {
                    temp = 0
                    eat = 7
                }
            }
            if eat = 7
            {
                temp++
                Sendinput, {w up}{s up}
                Send 8
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 8
                Sleep 200
                if temp = 5
                {
                    temp = 0
                    eat = 8
                }
            }
            if eat = 8
            {
                temp++
                Sendinput, {w up}{s up}
                Send 9
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 9
                Sleep 200
                if temp = 5
                {
                temp = 0
                eat = 9
                }
            }
            if eat = 9
            {
                temp++
                Sendinput, {w up}{s up}
                Send 0
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 0
                Sleep 200
                if temp = 5
                {
                    temp = 0
                    eat = 10
                }
            }
            If eat = 10
            {
                Send !{f4}
                reload
            }
        }
    }
}
else
{
    Sleep 100
    Sendinput, {w up}{s up}
    Sleep 100
    ExitApp
}

return
