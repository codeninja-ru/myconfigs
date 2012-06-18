Config { font = "xft:Ubuntu:style=Regular:size=11:antialias=true"
       , borderColor = "#555555"
       , border = TopB
       , bgColor = "#444444"
       , fgColor = "#eeeeee"
       , position = Top
       , lowerOnStart = True
       , commands = [ Run Weather "UHWW" ["-t","<tempC>C","-L","18","-H","25","--normal","green","--high","red","--low","lightblue"] 36000
                    , Run Network "eth0" ["-L","0","-H","32","--normal","green","--high","red"] 10
                    , Run Network "eth1" ["-L","0","-H","32","--normal","green","--high","red"] 10
                    , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run Com "uname" ["-s","-r"] "" 36000
    		    , Run Date "%a %b %_d %Y %H:%M:%S" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%cpu% | %memory% | %eth0% }{ <fc=#ee9a00>%date%</fc>| %UHWW% | %uname%"
       }
