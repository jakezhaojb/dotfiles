Config {
    font = "xft:Lihei Pro:size=10:bold:antialias=true"
    , bgColor = "#2d2d2d"
    , fgColor = "#F3F2F5"
    , position = Static { xpos = 0 , ypos = 0, width = 1200, height = 16 }
    , commands = [
        -- Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10 
        Run Weather "ZBAA" ["-t","<tempC>℃ <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#0266C8"] 3000
        -- , Run Network "eth0" ["-L","0","-H","70","--normal","green","--high","red"] 10   
        -- , Run Memory ["-t","Mem: <usedratio>%"] 10  
        -- , Run Com "~/.xmonad/bin/volume.sh" [] "vol" 10
        , Run Date "%a %b %_d %H:%M" "date" 10  
        ,  Run BatteryP ["BAT0"]
              ["-t", "<acstatus>",
               "-L", "10", "-H", "80", "-p", "3",
               "--", "-O", "Charging", "-o", "Battery: <left>%",
               "-L", "-15", "-H", "-5",
               "-l", "red", "-m", "blue", "-h", "green"]
              600
        , Run StdinReader
    ]
    , sepChar = "%"
    , alignSep = "}{"
    -- , template = " %StdinReader%}{<fc=#ee9a00>%date%</fc> ~  <fc=grey>%cpu% </fc> <fc=red>%cpuTemp%</fc>°C<fc=grey> ~ %memory% ~ %eth0%</fc> ~ Vol: <fc=green>%volume%</fc>"  
     , template = " %StdinReader%}<fc=#0266C8>%date%</fc>{AC:%battery% / ZBAA:%ZBAA%<3L"
}
