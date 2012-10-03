-- solarized
-- ethanschoonover.com/solarized

Config { font = "xft:Ubuntu:style=Regular:size=11:antialias=true"
       , borderColor = "#eee8d5"
       , border = TopB
       , bgColor = "#eee8d5"
       , fgColor = "#93a1a1"
       , position = Bottom
       , lowerOnStart = True
       , commands = [ Run Weather "UHWW" ["-t","<tempC>C","-L","18","-H","25","--normal","#859900","--high","#dc322f","--low","#268bd2"] 36000
                    , Run Network "eth0" ["-L","0","-H","32","--normal","#859900","--high","#dc322f"] 10
                    , Run Cpu ["-L","3","-H","50","--normal","#859900","--high","#dc322f"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run Com "uname" ["-s","-r"] "" 36000
                    , Run Date "%H:%M:%S" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%cpu% | %memory% | %eth0% }{ <fc=#b58900>%date%</fc> | %UHWW%"
       } 
