#!/usr/bin/env python3

r"""
Usage:
- Pack IVs into hex:   ./ivs2.py hp atk def spd sat sdf (decimal)
- Unpack IVs from hex: ./ivs2.py b1 b2 b3 b4 (hex)

Compatible with this asm macro for declaring IVs:

MACRO ivs
; input: \1 = hp (Hh), \2 = atk (a), \3 = def (d), \4 = spd (Ss), \5 = sat (t), \6 = sdf (f)
; output: db %0SSa_aaaa, %sssd_dddd, %0HHt_tttt, %hhhf_ffff
	db LOW((\2) | (((\4) << 2) & %1100000))
	db LOW((\3) | ((\4) << 5))
	db LOW((\5) | (((\1) << 2) & %1100000))
	db LOW((\6) | ((\1) << 5))
ENDM
"""

import sys

if len(sys.argv) == 5:
	b1, b2, b3, b4 = (int(arg, 16) for arg in sys.argv[1:])
	hp = ((b3 & 0b11_00000) >> 2) | ((b4 & 0b111_00000) >> 5)
	atk = b1 & 0b11111
	dfn = b2 & 0b11111
	spd = ((b1 & 0b11_00000) >> 2) | ((b2 & 0b111_00000) >> 5)
	sat = b3 & 0b11111
	sdf = b4 & 0b11111
	print(f'ivs {hp}, {atk}, {dfn}, {spd}, {sat}, {sdf}')
elif len(sys.argv) == 7:
	hp, atk, dfn, spd, sat, sdf = (int(arg) for arg in sys.argv[1:])
	b1 = (atk | (spd << 2) & 0b11_00000) & 0xff
	b2 = (dfn | (spd << 5)) & 0xff
	b3 = (sat | (hp << 2) & 0b11_00000) & 0xff
	b4 = (sdf | (hp << 5)) & 0xff
	print(f'db ${b1:02x}, ${b2:02x}, ${b3:02x}, ${b4:02x}')
else:
	print('Usage:', file=sys.stderr)
	print(f'- Pack IVs into hex:   {sys.argv[0]} hp atk def spd sat sdf (decimal)', file=sys.stderr)
	print(f'- Unpack IVs from hex: {sys.argv[0]} b1 b2 b3 b4 (hex)', file=sys.stderr)
	sys.exit(1)
