with open('uerj.txt', 'r') as arquivo:
    texto = arquivo.read()

texto = texto.replace('\\x-', chr(129)) \
             .replace('\\v/', chr(131)) \
             .replace('\\GS', chr(133)) \
             .replace('\\pi', chr(135)) \
             .replace('\\<=', chr(137)) \
             .replace('\\=', chr(139)) \
             .replace('\\->', chr(141)) \
             .replace('\\|v', chr(143)) \
             .replace('\\Gg', chr(145)) \
             .replace('\\Ge', chr(147)) \
             .replace('\\Gh', chr(149)) \
             .replace('\\Gr', chr(151)) \
             .replace('\\Gt', chr(153)) \
             .replace('\\GD', chr(155)) \
             .replace('\\GW', chr(157)) \
             .replace('\\oo', chr(159)) \
             .replace('\\^o', chr(176)) \
             .replace('\\>>', chr(187)) \
             .replace('\\O/', chr(216)) \
             .replace('\\<)', chr(128)) \
             .replace('\\.V', chr(130)) \
             .replace('\\.S', chr(132)) \
             .replace('\\|>', chr(134)) \
             .replace('\\.d', chr(136)) \
             .replace('/\\Ga', chr(140)) \
             .replace('\\<-', chr(142)) \
             .replace('\\|^', chr(144)) \
             .replace('\\Gd', chr(146)) \
             .replace('\\Gn', chr(148)) \
             .replace('\\Gl', chr(150)) \
             .replace('\\Gs', chr(152)) \
             .replace('\\Gw', chr(154)) \
             .replace('\\PI', chr(156)) \
             .replace('\\[]', chr(158)) \
             .replace('\\<<', chr(171)) \
             .replace('\\Gm', chr(181)) \
             .replace('\\.x', chr(215)) \
             .replace('\\:-', chr(247))

with open('uerj.hpprg', 'w') as arquivo_modificado:
    arquivo_modificado.write(texto)
