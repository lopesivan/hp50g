#!/bin/sed -f

s@\\<-@ �@g
s@ �@�@g
s@\\->@�@g
s@\\>>@�@g
s@\\<<@�@g

s@\\GS@ @g
s@ @@g

s@\\Ge@@g
s@\\Gg@@g
s@\\Gh@@g
s@\\Gr@@g
s@\\Gt@@g
s@\\GD@@g
s@\\GW@@g
s@\\Gd@@g
s@\\Gn@@g
s@\\Gl@@g
s@\\Gs@@g
s@\\Gw@@g
s@\\PI@@g
#s@\\.S@@g

/^@/ d

# s@\\x-@@g
# s@\\v/@@g
# s@\\pi@@g
# s@\\<=@@g
# s@\\=@@g
# s@\\|v@@g
# s@\\oo@@g
# s@\\^o@°@g
# s@\\O/@Ø@g
# s@\\<)@@g
# s@\\.V@@g
# s@\\|>@@g
# s@\\.d@@g
# s@\/\Ga@@g
# s@\\|^@@g
# #s@\\[]@@g
# s@\\Gm@µ@g
# s@\\.x@×@g
# s@\\:-@÷@g

