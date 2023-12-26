end::reload
removetooltip:
   ToolTip
return
f1::
   CoordMode, Pixel, Screen
   CoordMode, Mouse, Screen
   T := !T
   If T
   {
      MouseGetPos, x1, y1
      ToolTip, Saved First Position
      SetTimer, removetooltip, -500
   }else  {
      MouseGetPos, x2, y2
      ToolTip, Saved Seconds Position
      SetTimer, removetooltip, -500
   }
return

f2::
   heal = ok
   screen = one
   eats1 = 1
   temps1 = 0
   eats2 = 1
   temps2 = 0
   CoordMode, Pixel, Screen
   CoordMode, Mouse, Screen
   Loop,
   {
      ;start screen 1
      if screen = one
      {
         Click, %x1% %y1%
         Sleep 25
         Click, %x1% %y1%
         Sleep 400
         Send 2
         Sleep 150
         Send {Click}
         Sleep 300
         Click, %x2% %y2%
         Sleep 25
         Click, %x2% %y2%
         Sleep 100
         Send 1
         Sleep 100
         Send r
         loop,
         {
            ; amongus
            PixelSearch, x, y, 54, 114, 56, 116, 0x3D3DA2,, Fast 
            If ErrorLevel = 0
            {
               Send 1
               Sleep 100
               Click, %x1% %y1%
               Sleep 25
               Click, %x1% %y1%
               Send {Click}
               screen = two
               break
            }else  {
               Click, %x2%, %y2%
               Sleep 25
            }
            PixelSearch, x, y, 54, 114, 56, 116, 0x444444,, Fast 
            If ErrorLevel = 0
            {
               Send 1
               Sleep 100
               Click, %x1%, %y1%
               Sleep 25
               Click, %x1%, %y1%
               Send {Click}
               screen = two
               break
            }else  {
               Click, %x2%, %y2%
               Sleep 25
               PixelSearch, x, y, 1429, 244, 1431, 246, 0x212121,, Fast 
               If ErrorLevel = 0
               {
                  Sleep 100
                  Send e
                  Sleep 100
               }}}
         if screen = two
         {
            Click, %x2% %y2%
            Sleep 25
            Click, %x2% %y2%
            Sleep 400
            Send 2
            Sleep 150
            Send {Click}
            Sleep 300
            Click, %x1% %y1%
            Sleep 25
            Click, %x1% %y1%
            Sleep 100
            Send 1
            Sleep 100
            Send r
            loop,
            {
               ; amongus
               PixelSearch, x, y, 1020, 114, 1025, 116, 0x3D3DA2,, Fast 
               If ErrorLevel = 0
               {
                  Send 1
                  Sleep 100
                  Click, %x2% %y2%
                  Sleep 25
                  Click, %x2% %y2%
                  Send {Click}
                  screen = one
                  heal = now
                  break
               }else  {
                  Click, %x1%, %y1%
                  Sleep 25
               }
               PixelSearch, x, y, 1020, 114, 1025, 116, 0x444444,, Fast 
               If ErrorLevel = 0
               {
                  Send 1
                  Sleep 100
                  Click, %x2%, %y2%
                  Sleep 25
                  Click, %x2%, %y2%
                  Send {Click}
                  screen = one
                  heal = now
                  break
               }else  {
                  Click, %x1%, %y1%
                  Sleep 25
                  PixelSearch, x, y, 479, 259, 481, 261, 0x1E1E1E,, Fast 
                  If ErrorLevel = 0
                  {
                     Sleep 100
                     Send e
                     Sleep 100
                  }}}
            ; back to first screen to check auto eat
            Click, %x1% %y1%
            Sleep 25
            Click, %x1% %y1%
            Sleep 400
            PixelSearch, x, y, 70, 144, 90, 145, 0x444444,, Fast ; food under 50%
            If ErrorLevel = 0
            {
               if eats1 = 1
               {
                  temps1++
                  Send 3
                  Sleep 50
                  Send {Click}
                  Sleep 5000
                  Send 3
                  Sleep 200
                  if temps1 = 5
                  {
                     temps1 = 0
                     eats1 = 2
                  }}
               if eats1 = 2
               {
                  temps1++
                  Send 4
                  Sleep 50
                  Send {Click}
                  Sleep 5000
                  Send 4
                  Sleep 200
                  if temps1 = 5
                  {
                     temps1 = 0
                     eats1 = 3
                  }}
               if eats1 = 3
               {
                  temps1++
                  Send 5
                  Sleep 50
                  Send {Click}
                  Sleep 5000
                  Send 5
                  Sleep 200
                  if temps1 = 5
                  {
                     temps1 = 0
                     eats1 = 4
                  }}
               if eats1 = 4
               {
                  temps1++
                  Send 6
                  Sleep 50
                  Send {Click}
                  Sleep 5000
                  Send 6
                  Sleep 200
                  if temps1 = 5
                  {
                     temps1 = 0
                     eats1 = 5
                  }}
               if eats1 = 5
               {
                  temps1++
                  Send 7
                  Sleep 50
                  Send {Click}
                  Sleep 5000
                  Send 7
                  Sleep 200
                  if temps1 = 5
                  {
                     temps1 = 0
                     eats1 = 6
                  }}
               if eats1 = 6
               {
                  temps1++
                  Send 8
                  Sleep 50
                  Send {Click}
                  Sleep 5000
                  Send 8
                  Sleep 200
                  if temps1 = 5
                  {
                     temps1 = 0
                     eats1 = 7
                  }}
               if eats1 = 7
               {
                  temps1++
                  Send 9
                  Sleep 50
                  Send {Click}
                  Sleep 5000
                  Send 9
                  Sleep 200
                  if temps1 = 5
                  {
                     temps1 = 0
                     eats1 = 8
                  }
                  if eats2 = 8
                  {
                     temps2++
                     Send 9
                     Sleep 50
                     Send {Click}
                     Sleep 5000
                     Send 9
                     Sleep 200
                     if temps2 = 5
                     {
                        Send !{F4}
                     }}}}}
         ;screen 2
         Click, %x2% %y2%
         Sleep 25
         Click, %x2% %y2%
         Sleep 400
         PixelSearch, x, y, 1035, 144, 1055, 145, 0x444444,, Fast ; food under 50%
         If ErrorLevel = 0
         {
            if eats2 = 1
            {
               temps2++
               Send 3
               Sleep 50
               Send {Click}
               Sleep 5000
               Send 3
               Sleep 200
               if temps2 = 5
               {
                  temps2 = 0
                  eats2 = 2
               }}
            if eats2 = 2
            {
               temps2++
               Send 4
               Sleep 50
               Send {Click}
               Sleep 5000
               Send 4
               Sleep 200
               if temps2 = 5
               {
                  temps2 = 0
                  eats2 = 3
               }}
            if eats2 = 3
            {
               temps2++
               Send 5
               Sleep 50
               Send {Click}
               Sleep 5000
               Send 5
               Sleep 200
               if temps2 = 5
               {
                  temps2 = 0
                  eats2 = 4
               }}
            if eats2 = 4
            {
               temps2++
               Send 6
               Sleep 50
               Send {Click}
               Sleep 5000
               Send 6
               Sleep 200
               if temps2 = 5
               {
                  temps2 = 0
                  eats2 = 5
               }}
            if eats2 = 5
            {
               temps2++
               Send 7
               Sleep 50
               Send {Click}
               Sleep 5000
               Send 7
               Sleep 200
               if temps2 = 5
               {
                  temps2 = 0
                  eats2 = 6
               }}
            if eats2 = 6
            {
               temps2++
               Send 8
               Sleep 50
               Send {Click}
               Sleep 5000
               Send 8
               Sleep 200
               if temps2 = 5
               {
                  temps2 = 0
                  eats2 = 7
               }}
            if eats2 = 7
            {
               temps2++
               Send 9
               Sleep 50
               Send {Click}
               Sleep 5000
               Send 9
               Sleep 200
               if temps2 = 5
               {
                  temps2 = 0
                  eats2 = 8
               }}
            if eats2 = 8
            {
               temps2++
               Send 9
               Sleep 50
               Send {Click}
               Sleep 5000
               Send 9
               Sleep 200
               if temps2 = 5
               {
                  Send !{F4}
               }}}}
      
      if heal = now
      {
         Loop,
         {
            PixelSearch, x, y, 299, 114, 301, 116, 0x3CFA5F,, Fast 
            If ErrorLevel = 0
            {
               Sleep 6000
               break
            }
            Sleep 1000
         }
         heal = Ok
      }}
return              
