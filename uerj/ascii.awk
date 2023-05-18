#! /usr/bin/awk -f

BEGIN {
    icon[92] = "\\\\"
    icon[129] = "\\x-"
    icon[131] = "\\v/"
    icon[133] = "\\GS"
    icon[135] = "\\pi"
    icon[137] = "\\<="
    icon[139] = "\\="
    icon[141] = "\\->"
    icon[143] = "\\|v"
    icon[145] = "\\Gg"
    icon[147] = "\\Ge"
    icon[149] = "\\Gh"
    icon[151] = "\\Gr"
    icon[153] = "\\Gt"
    icon[155] = "\\GD"
    icon[157] = "\\GW"
    icon[159] = "\\oo"
    icon[176] = "\\^o"
    icon[187] = "\\>>"
    icon[216] = "\\O/"
    icon[128] = "\\<)"
    icon[130] = "\\\\.V"
    icon[132] = "\\\\.S"
    icon[134] = "\\\|>"
    icon[136] = "\\\\.d"
    icon[140] = "/\\Ga"
    icon[142] = "\\<-"
    icon[144] = "\\\|^"
    icon[146] = "\\Gd"
    icon[148] = "\\Gn"
    icon[150] = "\\Gl"
    icon[152] = "\\Gs"
    icon[154] = "\\Gw"
    icon[156] = "\\PI"
    icon[158] = "\\[]"
    icon[171] = "\\<<"
    icon[181] = "\\Gm"
    icon[215] = "\\\\.x"
    icon[247] = "\\:-"
}

{
    for (i = 1; i <= NF; i++) {
        for (key in icon) {
            gsub(key, icon[key], $i)
        }
    }
    print
}
