NOP
NOP
NOP
JMP	0x18d4
NOP
NOP
PUSH	PSW
PUSH	B
PUSH	D
PUSH	H
JMP	0x008c
NOP
PUSH	PSW
PUSH	B
PUSH	D
PUSH	H
MVI	A, #$0x80
STA	0x2072
LXI	H, #$0x20c0
DCR	M
CALL	0x17cd
IN	#$0x01
RRC
JC	0x0067
LDA	0x20EA
ANA	A
JZ	0x0042
LDA	0x20EB
CPI	#$0x99
JZ	0x003e
ADI	#$0x01
DAA
STA	0x20eb
CALL	0x1947
XRA	A
STA	0x20ea
LDA	0x20E9
ANA	A
JZ	0x0082
LDA	0x20EF
ANA	A
JNZ	0x006F
LDA	0x20EB
ANA	A
JNZ	0x005D
CALL	0x0abf
JMP	0x0082
LDA	0x2093
ANA	A
JNZ	0x0082
JMP	0x0765
MVI	A, #$0x01
STA	0x20ea
JMP	0x003f
CALL	0x1740
LDA	0x2032
STA	0x2080
CALL	0x0100
CALL	0x0248
CALL	0x0913
NOP
POP	H
POP	D
POP	B
POP	PSW
EI
RET
NOP
NOP
NOP
NOP
XRA	A
STA	0x2072
LDA	0x20E9
ANA	A
JZ	0x0082
LDA	0x20EF
ANA	A
JNZ	0x00A5
LDA	0x20C1
RRC
JNC	0x0082
LXI	H, #$0x2020
CALL	0x024b
CALL	0x0141
JMP	0x0082
CALL	0x0886
PUSH	H
MOV	A, M
INX	H
MOV	H, M
MOV	L, A
SHLD	0x2009
SHLD	0x200b
POP	H
DCX	H
MOV	A, M
CPI	#$0x03
JNZ	0x00C8
DCR	A
STA	0x2008
CPI	#$0xfe
MVI	A, #$0x00
JNZ	0x00D3
INR	A
STA	0x200d
RET
MVI	A, #$0x02
STA	0x21fb
STA	0x22fb
JMP	0x08e4
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
LXI	H, #$0x2002
MOV	A, M
ANA	A
JNZ	0x1538
PUSH	H
LDA	0x2006
MOV	L, A
LDA	0x2067
MOV	H, A
MOV	A, M
ANA	A
POP	H
JZ	0x0136
INX	H
INX	H
MOV	A, M
INX	H
MOV	B, M
ANI	#$0xfe
RLC
RLC
RLC
MOV	E, A
DCR	D
NOP
LXI	H, #$0x1c00
DAD	D
XCHG
MOV	A, B
ANA	A
CNZ	0x013b
LHLD	 0x200b
MVI	B, #$0x10
CALL	0x15d3
XRA	A
STA	0x2000
RET
LXI	H, #$0x0030
DAD	D
XCHG
RET
LDA	0x2068
ANA	A
RZ
LDA	0x2000
ANA	A
RNZ
LDA	0x2067
MOV	H, A
LDA	0x2006
DCR	D
STAX	B
INR	A
CPI	#$0x37
CZ	0x01a1
MOV	L, A
MOV	B, M
DCR	B
JNZ	0x0154
STA	0x2006
CALL	0x017a
MOV	H, C
SHLD	0x200b
MOV	A, L
CPI	#$0x28
JC	0x1971
MOV	A, D
STA	0x2004
MVI	A, #$0x01
STA	0x2000
RET
DCR	D
NOP
MOV	A, L
LXI	H, #$0x2009
MOV	B, M
INX	H
MOV	C, M
CPI	#$0x0b
JM	0x0194
SBI	#$0x0b
MOV	E, A
MOV	A, B
ADI	#$0x10
MOV	B, A
MOV	A, E
INR	D
JMP	0x0183
MOV	L, B
ANA	A
RZ
MOV	E, A
MOV	A, C
ADI	#$0x10
MOV	C, A
MOV	A, E
DCR	A
JMP	0x0195
DCR	D
JZ	0x01cd
LXI	H, #$0x2006
MVI	M, #$0x00
INX	H
MOV	C, M
MVI	M, #$0x00
CALL	0x01d9
LXI	H, #$0x2005
MOV	A, M
INR	A
ANI	#$0x01
MOV	M, A
XRA	A
LXI	H, #$0x2067
MOV	H, M
RET
NOP
LXI	H, #$0x2100
MVI	B, #$0x37
MVI	M, #$0x01
INX	H
DCR	B
JNZ	0x01C5
RET
POP	H
RET
MVI	A, #$0x01
MVI	B, #$0xe0
LXI	H, #$0x2402
JMP	0x14cc
INX	H
MOV	B, M
INX	H
MOV	A, C
ADD	M
MOV	M, A
INX	H
MOV	A, B
ADD	M
MOV	M, A
RET
MVI	B, #$0xc0
LXI	D, #$0x1b00
LXI	H, #$0x2000
JMP	0x1a32
LXI	H, #$0x2142
JMP	0x01f8
LXI	H, #$0x2242
MVI	C, #$0x04
LXI	D, #$0x1d20
PUSH	D
MVI	B, #$0x2c
CALL	0x1a32
POP	D
DCR	C
JNZ	0x01FD
RET
MVI	A, #$0x01
JMP	0x021b
MVI	A, #$0x01
JMP	0x0214
XRA	A
LXI	D, #$0x2242
JMP	0x021e
XRA	A
LXI	D, #$0x2142
STA	0x2081
LXI	B, #$0x1602
LXI	H, #$0x2806
MVI	A, #$0x04
PUSH	PSW
PUSH	B
LDA	0x2081
ANA	A
JNZ	0x0242
CALL	0x1a69
POP	B
POP	PSW
DCR	A
RZ
PUSH	D
LXI	D, #$0x02e0
DAD	D
POP	D
JMP	0x0229
CALL	0x147c
JMP	0x0235
LXI	H, #$0x2010
MOV	A, M
CPI	#$0xff
RZ
CPI	#$0xfe
JZ	0x0281
INX	H
MOV	B, M
MOV	C, A
ORA	B
MOV	A, C
JNZ	0x0277
INX	H
MOV	A, M
ANA	A
JNZ	0x0288
INX	H
MOV	E, M
INX	H
MOV	D, M
PUSH	H
XCHG
PUSH	H
LXI	H, #$0x026f
XTHL
PUSH	D
PCHL
POP	H
LXI	D, #$0x000c
DAD	D
JMP	0x024b
DCR	B
INR	B
JNZ	0x027D
DCR	A
DCR	B
MOV	M, B
DCX	H
MOV	M, A
LXI	D, #$0x0010
DAD	D
JMP	0x024b
DCR	M
DCX	H
DCX	H
JMP	0x0281
POP	H
INX	H
MOV	A, M
CPI	#$0xff
JZ	0x033b
INX	H
DCR	M
RNZ
MOV	B, A
XRA	A
STA	0x2068
STA	0x2069
MVI	A, #$0x30
STA	0x206a
MOV	A, B
MVI	M, #$0x05
INX	H
DCR	M
JNZ	0x039B
LHLD	 0x201a
MVI	B, #$0x10
CALL	0x1424
LXI	H, #$0x2010
LXI	D, #$0x1b10
MVI	B, #$0x10
CALL	0x1a32
MVI	B, #$0x00
CALL	0x19dc
LDA	0x206D
ANA	A
RNZ
LDA	0x20EF
ANA	A
RZ
LXI	SP, #$0x2400
EI
CALL	0x19d7
CALL	0x092e
ANA	A
JZ	0x166d
CALL	0x18e7
MOV	A, M
ANA	A
JZ	0x032c
LDA	0x20CE
ANA	A
JZ	0x032c
LDA	0x2067
PUSH	PSW
RRC
JC	0x0332
CALL	0x020e
CALL	0x0878
MOV	M, E
INX	H
MOV	M, D
DCX	H
DCX	H
MOV	M, B
NOP
CALL	0x01e4
POP	PSW
RRC
MVI	A, #$0x21
MVI	B, #$0x00
JNC	0x0312
MVI	B, #$0x20
MVI	A, #$0x22
STA	0x2067
CALL	0x0ab6
XRA	A
STA	0x2011
MOV	A, B
OUT	#$0x05
INR	A
STA	0x2098
CALL	0x09d6
CALL	0x1a7f
JMP	0x07f9
CALL	0x1a7f
JMP	0x0817
CALL	0x0209
JMP	0x02f8
NOP
NOP
NOP
LXI	H, #$0x2068
MVI	M, #$0x01
INX	H
MOV	A, M
ANA	A
JMP	0x03b0
NOP
DCX	H
MVI	M, #$0x01
LDA	0x201B
MOV	B, A
LDA	0x20EF
ANA	A
JNZ	0x0363
LDA	0x201D
RRC
JC	0x0381
RRC
JC	0x038e
JMP	0x036f
CALL	0x17c0
RLC
RLC
JC	0x0381
RLC
JC	0x038e
LXI	H, #$0x2018
CALL	0x1a3b
CALL	0x1a47
CALL	0x1439
MVI	A, #$0x00
STA	0x2012
RET
MOV	A, B
CPI	#$0xd9
JZ	0x036f
INR	A
STA	0x201b
JMP	0x036f
MOV	A, B
CPI	#$0x30
JZ	0x036f
DCR	A
STA	0x201b
JMP	0x036f
INR	A
ANI	#$0x01
STA	0x2015
RLC
RLC
RLC
RLC
LXI	H, #$0x1c70
ADD	L
MOV	L, A
SHLD	0x2018
JMP	0x036f
JNZ	0x034A
INX	H
DCR	M
JNZ	0x034A
JMP	0x0346
LXI	D, #$0x202a
CALL	0x1a06
POP	H
RNC
INX	H
MOV	A, M
ANA	A
RZ
CPI	#$0x01
JZ	0x03fa
CPI	#$0x02
JZ	0x040a
INX	H
CPI	#$0x03
JNZ	0x042A
DCR	M
JZ	0x0436
MOV	A, M
CPI	#$0x0f
RNZ
PUSH	H
CALL	0x0430
CALL	0x1452
POP	H
INX	H
INR	M
INX	H
INX	H
DCR	M
DCR	M
INX	H
DCR	M
DCR	M
DCR	M
INX	H
MVI	M, #$0x08
CALL	0x0430
JMP	0x1400
INR	A
MOV	M, A
LDA	0x201B
ADI	#$0x08
STA	0x202a
CALL	0x0430
JMP	0x1400
CALL	0x0430
PUSH	D
PUSH	H
PUSH	B
CALL	0x1452
POP	B
POP	H
POP	D
LDA	0x202C
ADD	L
MOV	L, A
STA	0x2029
CALL	0x1491
LDA	0x2061
ANA	A
RZ
STA	0x2002
RET
CPI	#$0x05
RZ
JMP	0x0436
LXI	H, #$0x2027
JMP	0x1a3b
CALL	0x0430
CALL	0x1452
LXI	H, #$0x2025
LXI	D, #$0x1b25
MVI	B, #$0x07
CALL	0x1a32
LHLD	 0x208d
INR	L
MOV	A, L
CPI	#$0x63
JC	0x0453
MVI	L, #$0x54
SHLD	0x208d
LHLD	 0x208f
INR	L
SHLD	0x208f
LDA	0x2084
ANA	A
RNZ
MOV	A, M
ANI	#$0x01
LXI	B, #$0x0229
JNZ	0x046E
LXI	B, #$0xfee0
LXI	H, #$0x208a
MOV	M, C
INX	H
INX	H
MOV	M, B
RET
POP	H
LDA	0x1b32
STA	0x2032
LHLD	 0x2038
MOV	A, L
ORA	H
JNZ	0x048A
DCX	H
SHLD	0x2038
RET
LXI	D, #$0x2035
MVI	A, #$0xf9
CALL	0x0550
LDA	0x2046
STA	0x2070
LDA	0x2056
STA	0x2071
CALL	0x0563
LDA	0x2078
ANA	A
LXI	H, #$0x2035
JNZ	0x055B
LXI	D, #$0x1b30
LXI	H, #$0x2030
MVI	B, #$0x10
JMP	0x1a32
POP	H
LDA	0x206E
ANA	A
RNZ
LDA	0x2080
CPI	#$0x01
RNZ
LXI	D, #$0x2045
MVI	A, #$0xed
CALL	0x0550
LDA	0x2036
STA	0x2070
LDA	0x2056
STA	0x2071
CALL	0x0563
LDA	0x2076
CPI	#$0x10
JC	0x04e7
LDA	0x1b48
STA	0x2076
LDA	0x2078
ANA	A
LXI	H, #$0x2045
JNZ	0x055B
LXI	D, #$0x1b40
LXI	H, #$0x2040
MVI	B, #$0x10
CALL	0x1a32
LDA	0x2082
DCR	A
JNZ	0x0508
MVI	A, #$0x01
STA	0x206e
LHLD	 0x2076
JMP	0x067e
POP	H
LXI	D, #$0x2055
MVI	A, #$0xdb
CALL	0x0550
LDA	0x2046
STA	0x2070
LDA	0x2036
STA	0x2071
CALL	0x0563
LDA	0x2076
CPI	#$0x15
JC	0x0534
LDA	0x1b58
STA	0x2076
LDA	0x2078
ANA	A
LXI	H, #$0x2055
JNZ	0x055B
LXI	D, #$0x1b50
LXI	H, #$0x2050
MVI	B, #$0x10
CALL	0x1a32
LHLD	 0x2076
SHLD	0x2058
RET
STA	0x207f
LXI	H, #$0x2073
MVI	B, #$0x0b
JMP	0x1a32
LXI	D, #$0x2073
MVI	B, #$0x0b
JMP	0x1a32
LXI	H, #$0x2073
MOV	A, M
ANI	#$0x80
JNZ	0x05C1
LDA	0x20C1
CPI	#$0x04
LDA	0x2069
JZ	0x05b7
ANA	A
RZ
INX	H
MVI	M, #$0x00
LDA	0x2070
ANA	A
JZ	0x0589
MOV	B, A
LDA	0x20CF
CMP	B
RNC
LDA	0x2071
ANA	A
JZ	0x0596
MOV	B, A
LDA	0x20CF
CMP	B
RNC
INX	H
MOV	A, M
ANA	A
JZ	0x061b
LHLD	 0x2076
MOV	C, M
INX	H
NOP
SHLD	0x2076
CALL	0x062f
RNC
CALL	0x017a
MOV	A, C
ADI	#$0x07
MOV	H, A
MOV	A, L
SUI	#$0x0a
MOV	L, A
SHLD	0x207b
LXI	H, #$0x2073
MOV	A, M
ORD	#$0x80
MOV	M, A
INX	H
INR	M
RET
LXI	D, #$0x207c
CALL	0x1a06
RNC
INX	H
MOV	A, M
ANI	#$0x01
JNZ	0x0644
INX	H
INR	M
CALL	0x0675
LDA	0x2079
ADI	#$0x03
LXI	H, #$0x207f
CMP	M
JC	0x05e2
SUI	#$0x0c
STA	0x2079
LDA	0x207B
MOV	B, A
LDA	0x207E
ADD	B
STA	0x207b
CALL	0x066c
LDA	0x207B
CPI	#$0x15
JC	0x0612
LDA	0x2061
ANA	A
RZ
LDA	0x207B
CPI	#$0x1e
JC	0x0612
CPI	#$0x27
NOP
JNC	0x0612
SUB	A
STA	0x2015
LDA	0x2073
ORD	#$0x01
STA	0x2073
RET
LDA	0x201B
ADI	#$0x08
MOV	H, A
CALL	0x156f
MOV	A, C
CPI	#$0x0c
JC	0x05a5
MVI	C, #$0x0b
JMP	0x05a5
DCR	C
LDA	0x2067
MOV	H, A
MOV	L, C
DCR	D
DCR	B
MOV	A, M
ANA	A
STC
RNZ
MOV	A, L
ADI	#$0x0b
MOV	L, A
DCR	D
JNZ	0x0637
RET
LXI	H, #$0x2078
DCR	M
MOV	A, M
CPI	#$0x03
JNZ	0x0667
CALL	0x0675
LXI	H, #$0x1cdc
SHLD	0x2079
LXI	H, #$0x207c
DCR	M
DCR	M
DCX	H
DCR	M
DCR	M
MVI	A, #$0x06
STA	0x207d
JMP	0x066c
ANA	A
RNZ
JMP	0x0675
LXI	H, #$0x2079
CALL	0x1a3b
JMP	0x1491
LXI	H, #$0x2079
CALL	0x1a3b
JMP	0x1452
SHLD	0x2048
RET
POP	H
LDA	0x2080
CPI	#$0x02
RNZ
LXI	H, #$0x2083
MOV	A, M
ANA	A
JZ	0x050f
LDA	0x2056
ANA	A
JNZ	0x050F
INX	H
MOV	A, M
ANA	A
JNZ	0x06AB
LDA	0x2082
CPI	#$0x08
JC	0x050f
MVI	M, #$0x01
CALL	0x073c
LXI	D, #$0x208a
CALL	0x1a06
RNC
LXI	H, #$0x2085
MOV	A, M
ANA	A
JNZ	0x06D6
LXI	H, #$0x208a
MOV	A, M
INX	H
INX	H
ADD	M
STA	0x208a
CALL	0x073c
LXI	H, #$0x208a
MOV	A, M
CPI	#$0x28
JC	0x06f9
CPI	#$0xe1
JNC	0x06f9
RET
MVI	B, #$0xfe
CALL	0x19dc
INX	H
DCR	M
MOV	A, M
CPI	#$0x1f
JZ	0x074b
CPI	#$0x18
JZ	0x070c
ANA	A
RNZ
MVI	B, #$0xef
LXI	H, #$0x2098
MOV	A, M
ANA	B
MOV	M, A
ANI	#$0x20
OUT	#$0x05
NOP
NOP
NOP
CALL	0x0742
CALL	0x14cb
LXI	H, #$0x2083
MVI	B, #$0x0a
CALL	0x075f
MVI	B, #$0xfe
JMP	0x19dc
MVI	A, #$0x01
STA	0x20f1
LHLD	 0x208d
MOV	B, M
MVI	C, #$0x04
LXI	H, #$0x1d50
LXI	D, #$0x1d4c
LDAX	D
CMP	B
JZ	0x0728
INX	H
INX	D
DCR	C
JNZ	0x071D
MOV	A, M
STA	0x2087
MVI	H, #$0x00
MOV	L, B
DAD	H
DAD	H
DAD	H
DAD	H
SHLD	0x20f2
CALL	0x0742
JMP	0x08f1
CALL	0x0742
JMP	0x1439
LXI	H, #$0x2087
CALL	0x1a3b
JMP	0x1a47
MVI	B, #$0x10
LXI	H, #$0x2098
MOV	A, M
ORA	B
MOV	M, A
CALL	0x1770
LXI	H, #$0x1d7c
SHLD	0x2087
JMP	0x073c
LXI	D, #$0x1b83
JMP	0x1a32
MVI	A, #$0x01
STA	0x2093
LXI	SP, #$0x2400
EI
CALL	0x1979
CALL	0x09d6
LXI	H, #$0x3013
LXI	D, #$0x1ff3
MVI	C, #$0x04
CALL	0x08f3
LDA	0x20EB
DCR	A
LXI	H, #$0x2810
MVI	C, #$0x14
JNZ	0x0857
LXI	D, #$0x1acf
CALL	0x08f3
IN	#$0x01
ANI	#$0x04
JZ	0x077f
MVI	B, #$0x99
XRA	A
STA	0x20ce
LDA	0x20EB
ADD	B
DAA
STA	0x20eb
CALL	0x1947
LXI	H, #$0x0000
SHLD	0x20f8
SHLD	0x20fc
CALL	0x1925
CALL	0x192b
CALL	0x19d7
LXI	H, #$0x0101
MOV	A, H
STA	0x20ef
SHLD	0x20e7
SHLD	0x20e5
CALL	0x1956
CALL	0x01ef
CALL	0x01f5
CALL	0x08d1
STA	0x21ff
STA	0x22ff
CALL	0x00d7
XRA	A
STA	0x21fe
STA	0x22fe
CALL	0x01c0
CALL	0x1904
LXI	H, #$0x3878
SHLD	0x21fc
SHLD	0x22fc
CALL	0x01e4
CALL	0x1a7f
CALL	0x088d
CALL	0x09d6
NOP
