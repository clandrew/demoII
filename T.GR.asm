********************************
* DEMOII BY CA *
********************************
* OBJ $6000
 ORG $6000
*
TXTCLR EQU $C050
TXTSET EQU $C051
MIXCLR EQU $C052
LORES EQU $C056
CLRGR EQU $F832
KYBD EQU $C000
TBUFCLR EQU $FC58
CHIRP EQU $C030
WAIT EQU $FCA8
VSCROLL EQU $D7
*
 LDA #$00
 STA TXTCLR
 STA MIXCLR
 STA LORES
*
 JSR CLRGR
********************************
*
 LDA #$00
 STA VSCROLL
*
 JSR DSPAS0
 JSR R8
 JSR R8
*
 JSR DSPAS1
 JSR TN168 ; WE'RE
 JSR TN168
 JSR TN148 ; NO
 JSR TN148
*
 JSR DSPAS0
 JSR TN138 ; STRANG
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138 ;
*
 JSR DSPAS2 TO
 JSR TN124 ; TO
 JSR TN124 ;
 JSR TN148 ; LOO
 JSR TN148
*
 JSR DSPAS1
 JSR TN148
 JSR TN148
 JSR TN168 ; O
 JSR TN168
*
 JSR DSPAS0 
 JSR TN188 ; VE
 JSR TN188
 JSR R8
*
 JSR DSPAS1
 JSR TN188 ; VE
 JSR TN188
 JSR TN188
 JSR TN188
*
 JSR DSPAS3
 JSR R8
 JSR R8
*
 JSR DSPAS0
 JSR R8
 JSR TN168 ; YOU
 JSR TN168 ; 
*
 JSR DSPAS1
 JSR TN168 ; KNOW
 JSR TN168 ; 
 JSR TN148 ;THE
 JSR TN148
* 
 JSR DSPAS0
 JSR TN138 ; RU
 JSR TN138 ;
 JSR TN168 ;LES
 JSR TN168
*
 JSR DSPAS2
 JSR R8
 JSR TN188 ; AND
 JSR TN188
*
 JSR DSPAS1
 JSR TN94 ; SO 
 JSR TN94 ; 
 JSR TN94 ; 
 JSR TN94 ; 
* 
 JSR DSPAS0
 JSR TN94 ; DO
 JSR TN94 ;
 JSR TN124 ; I
 JSR TN124 ;
*
 JSR DSPAS1
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
*
 JSR DSPAS3
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
*
 INC VSCROLL
 JSR DSPTUN
 JSR R8
 JSR TN168 ; A
 JSR TN168
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN168 ; FULL
 JSR TN168
 JSR TN148 ;COM
 JSR TN148
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN138 ; MIT
 JSR TN138 ;
 JSR TN168 ; MENT'S
 JSR TN168
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN138 ; WHAT
 JSR TN138 ;
 JSR TN124 ; I'M
 JSR TN124 ;
*
 INC VSCROLL
 JSR DSPTUN
 JSR R8
 JSR TN148 ; DREA
 JSR TN148
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN168 ; MING
 JSR TN168
 JSR TN188 ; OF
 JSR TN188
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN188 ; F
 JSR TN188
 JSR TN188
 JSR TN188
*
 INC VSCROLL
 JSR DSPTUN
 JSR R8
 JSR R8
*
 INC VSCROLL
 JSR DSPTUN
 JSR R8
 JSR TN168 ; YOU
 JSR TN168
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN168 ;
 JSR TN168 ; WOULD
 JSR TN148 ; N'T
 JSR TN148
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN138 ; GET
 JSR TN138 ;
 JSR TN168 ; THIS
 JSR TN168
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN188 ; FROM
 JSR TN188
 JSR TN188
 JSR TN188
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN124 ; ANY
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
*
 INC VSCROLL
 JSR DSPTUN
 JSR TN124 ; O
 JSR TN124 ;
 JSR TN112 ; THER
 JSR TN112
* 
 INC VSCROLL
 JSR DSPTUN
 JSR TN124 ; GUY
 JSR TN124 ;
 JSR R8
*
 INC VSCROLL 
 JSR DSPTUN
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
*
 JSR DSPAS0
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138 ; AND
*
 JSR DSPAS1
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138 ;
* 
 JSR DSPAS0
 JSR TN138 ;
 JSR TN138 ;
 JSR TN124 ; I
 JSR TN124 ;
*
 JSR DSPAS2
 JSR TN112 ; IF
 JSR TN112
 JSR TN138 ; YOU
 JSR TN138 ;
*
 JSR DSPAS1
 JSR TN124 ; ASK ME HOW
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
*
 JSR DSPAS0
 JSR TN124 
 JSR TN124 
 JSR TN112 ; I'M
 JSR TN112
*
 JSR DSPAS1
 JSR TN124 ; FEE
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
*
 JSR DSPAS3
 JSR TN188 ; LING
 JSR TN188
 JSR TN188
 JSR TN188
*
 JSR DSPAS0
 JSR R8
 JSR R8
*
 JSR DSPAS1
 JSR R8
 JSR R8
*
 JSR DSPAS0
 JSR TN168 ; GOT
 JSR TN168
 JSR TN148 ; TA
 JSR TN148
*
 JSR DSPAS2
 JSR TN138 ;MAKE
 JSR TN138 ;
 JSR TN168 ; YOU
 JSR TN168
*
 JSR DSPAS1
 JSR R8
 JSR TN124 ; UN
 JSR TN124 ;
*
 JSR DSPAS0
 JSR TN112 ; DER
 JSR TN112
 JSR TN124 ; STAND
 JSR TN124 ;
*
 JSR DSPAS1
 JSR R8
 JSR R8
*
 JSR DSPAS3
 JSR TN188 ; NE
 JSR TN168 ; VER
 JSR TN138 ; GON
 JSR TN168 ; NA
*
 JSR DSPAS0
 JSR TN112 ; GIVE
 JSR TN112
 JSR TN112
 JSR TN112
*
 JSR DSPAS1
 JSR TN112 ; YOU
 JSR TN112
 JSR TN124 ; UP
 JSR TN124 ;
*
 JSR DSPAS0
 JSR R8
 JSR R8
*
 JSR DSPAS2
 JSR TN188 ; NE
 JSR TN168 ; VER
 JSR TN138 ; GON
 JSR TN168 ; NA
*
 JSR DSPAS1
 JSR TN124 ; LET
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
*
 JSR DSPAS0
 JSR TN124 ; YOU
 JSR TN124 ;
 JSR TN138 ; DOWN
 JSR TN138 ;
*
 JSR DSPAS1
 JSR R8
 JSR R8
*
 JSR DSPAS3
 JSR TN188 ; NE
 JSR TN168 ; VER
 JSR TN138 ; GON
 JSR TN168 ; NA
*
 JSR DSPAS0
 JSR TN138 ; RUN
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138 ;
*
 JSR DSPAS1
 JSR TN124 ; A
 JSR TN124 ;
 JSR TN148 ; ROUND
 JSR TN148
*
 JSR DSPAS0
 JSR TN148 ;
 JSR TN148
 JSR TN168 ; AND
 JSR TN188 ; DE
 JSR TN188
*
 JSR DSPAS2
 JSR TN188 ; DE
 JSR TN188
 JSR TN188
 JSR TN188
 JSR TN188
*
 JSR DSPAS1
 JSR TN124 ; SERT
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
*
 JSR DSPAS0
 JSR TN138 ; YOU
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138 ;
*
 JSR DSPAS1
 JSR R8
 JSR R8
*
 JSR DSPAS3
 JSR TN188 ; NE
 JSR TN168 ; VER
 JSR TN138 ; GON
 JSR TN168 ; NA
*
 JSR DSPAS0
 JSR TN112 ; MAKE
 JSR TN112 ;
 JSR TN112 ;
 JSR TN112 ;
*
 JSR DSPAS1
 JSR TN112 ; YOU
 JSR TN112 ;
 JSR TN124 ; CRY
 JSR TN124 ;
*
 JSR DSPAS0
 JSR R8
 JSR R8
*
 JSR DSPAS2
 JSR TN188 ; NE
 JSR TN168 ; VER
 JSR TN138 ; GON
 JSR TN168 ; NA
*
 JSR DSPAS1
 JSR TN94 ; SAY
 JSR TN94
 JSR TN94
 JSR TN94
*
 JSR DSPAS0
 JSR TN148 ; GOOD
 JSR TN148
 JSR TN138 ; BYE
 JSR TN138 ;
*
 JSR DSPAS1
 JSR TN138 ;
 JSR TN148 ; E
 JSR TN168 ; E
 JSR TN168
*
 JSR DSPAS3
 JSR TN188 ; NE
 JSR TN168 ; VER
 JSR TN138 ; GON
 JSR TN168 ; NA
*
 JSR DSPAS0
 JSR TN138 ; TELL
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138 ;
*
 JSR DSPAS1
 JSR TN124 ;
 JSR TN124 ;
 JSR TN148 ; LIE
 JSR TN148
*
 JSR DSPAS0
 JSR TN148 ;
 JSR TN168 ; E
 JSR TN188 ; E
 JSR TN188
*
 JSR DSPAS2
 JSR TN188 ; AND
 JSR TN188
 JSR TN188
 JSR TN188
*
 JSR DSPAS1
 JSR TN124 ; HURT
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124 ;
*
 JSR DSPAS0
 JSR TN112 ;YOU
 JSR TN112
 JSR TN112
 JSR TN112
*
 JSR DSPAS1
 JSR R8
 JSR TN112
 JSR TN112
*
 JSR DSPAS3
 JSR TN188 ; NE
 JSR TN168 ; VER
 JSR TN138 ; GON
 JSR TN168 ; NA
*
 JSR DSPAS0
 JSR TN138 ; INSTRUMENTAL
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138 ;
*
 JSR DSPAS1
 JSR TN124 ;
 JSR TN124 ;
 JSR TN148 ; 
 JSR TN148
*
 JSR DSPAS0
 JSR TN148 ;
 JSR TN168 ; 
 JSR TN188 ; 
 JSR TN188
*
 JSR DSPAS2
 JSR TN188
 JSR TN188
 JSR TN124 ;
 JSR TN124 ;
 JSR TN124
 JSR TN138 ;
 JSR TN138 ;
 JSR TN138
 JSR TN112
 JSR TN112
 JSR TN112
 JSR TN68
 JSR TN68
 JSR TN68
 JSR TN68

********************************
*
* SWITCH INTO MIXED
LOOP NOP
 LDA KYBD
 CMP #$80
 BCC LOOP
 LDA #$00
 STA TXTSET
 JSR TBUFCLR
 RTS ; END MAINLINE
*
********************************
DSPAS0 LDA #<ASTLE0
 STA $EB
 LDA #>ASTLE0
 STA $EC
 JSR FILLIMG
 RTS
********************************
DSPAS1 LDA #<ASTLE1
 STA $EB
 LDA #>ASTLE1
 STA $EC
 JSR FILLIMG
 RTS
********************************
DSPAS2 LDA #<ASTLE2
 STA $EB
 LDA #>ASTLE2
 STA $EC
 JSR FILLIMG
 RTS
********************************
DSPAS3 LDA #<ASTLE3
 STA $EB
 LDA #>ASTLE3
 STA $EC
 JSR FILLIMG
 RTS
********************************
DSPTUN LDA #<TUNNEL
 STA $EB
 LDA #>TUNNEL
 STA $EC
 JSR FILLIMG
 RTS
*
********************************
* INCIMGBASE
* INCREMENTS IMGBASE BY #$28.
INCIMGBASE LDA IMGBASE0
 CLC
 ADC #$28
 STA IMGBASE0
 BCC NOCARRY
 INC IMGBASE1
NOCARRY RTS
*
********************************
* FILLIMG
* REQUIRES ADDRESS OF IMAGE IN EB-EC.
* CLOBBERS EB-EC.
*
FILLIMG LDY #$00
*
* APPLY SCROLLING AMOUNT.
 LDX VSCROLL
APPLYSCROLL CPX #$00
 BEQ DONESCROLL
 JSR INCIMGBASE
 DEX
 JMP APPLYSCROLL
DONESCROLL
*
ROWPAIR NOP
 LDA LORESR0,Y
 STA $E9
 LDA LORESR0+1,Y
 STA $E8
*
 LDX #$0
*
IMGBYTE NOP
 TYA
 PHA
 TXA
 TAY
 LDA ($EB),Y
 STA ($E8),Y
 PLA
 TAY
 INX
 CPX #$28
 BNE IMGBYTE
*
 JSR INCIMGBASE
 INY
 INY
 CPY #$30
 BNE ROWPAIR
 RTS
*
********************************
*
* SOUND CODE MIGHT SEEM JANKY BUT IS VERY SENSITIVE TO TIMINGS.
* I HAVE IT THIS WAY BECAUSE A REFACTOR CAN CAUSE WRONG SOUND
TN188 LDA #188
 STA $06
 LDA #106
 STA $07
 JSR TONE
 RTS
*
TN168 LDA #168
 STA $06
 LDA #118
 STA $07
 JSR TONE
 RTS
*
TN148 LDA #148
 STA $06
 LDA #134
 STA $07
 JSR TONE
 RTS
*
TN138 LDA #138
 STA $06
 LDA #144
 STA $07
 JSR TONE
 RTS
*
TN124 LDA #124
 STA $06
 LDA #160
 STA $07
 JSR TONE
 RTS
*
TN112 LDA #112
 STA $06
 LDA #177
 STA $07
 JSR TONE
 RTS
*
TN94 LDA #94
 STA $06
 LDA #210
 STA $07
 JSR TONE
 RTS
*
TN68 LDA #68
 STA $06
 LDA #211
 STA $07
 JSR TONE
 RTS
*
R8 LDA #136
 JSR WAIT
 JSR WAIT
 RTS
*
TONE LDX $07
DUR LDY $06
 LDA CHIRP
PCH DEY
 BNE PCH
 DEX
 BNE DUR
 RTS
*
ASTLE0 HEX 55555555555555555555557575555575
 HEX 75775775755777757555557575555555
 HEX 55555555555555555555555555557555
 HEX 55577755755555775757557575555757
 HEX 77555575557757555575555555555555
 HEX 55555575757777557777757557555555
 HEX 77557777777755775555555775757777
 HEX 55777775755555555555577777775775
 HEX 77777757755555878888888888857575
 HEX 77555575577777777557777777575555
 HEX 55775555577755777757557757558888
 HEX 88888888888888777755555777555777
 HEX 77557757555577557557757775555557
 HEX 75577575575588D8DDDDDDDDDDD88875
 HEX 57555557757557755755557577755775
 HEX 7775577777775557777557577555D8DD
 HEX DDDDDDDDDDDD88775555557557577577
 HEX 57557777775775777755777777777755
 HEX 557577557755DDDDDDDDDDDDDDDDDD57
 HEX 75555577557775555577777777775577
 HEX 575775577757755755557755775555DD
 HEX DDDDDDDDDDDD75777755557755775555
 HEX 57755777577557577755755755577555
 HEX 77755575755555000D0D0D0D0D507557
 HEX 77555575755575775575575557755577
 HEX 7755777755777755777755575705F0F0
 HEX DD5D5D5DFDF007775555555757557777
 HEX 55777755777755775755777555757705
 HEX 070507200000FFFFFF505555FFFF0000
 HEX 05050577557755575577755575775557
 HEX 75557557550720202222220022002F75
 HEX 57505555775F00200222200005077777
 HEX 55755755577555755577777755002222
 HEX 22020022222220062676557776060022
 HEX 22002222222000557777775577777755
 HEX 57777777550022222220020222D2D222
 HEX 00765556062022222202202222220055
 HEX 77777755777777577775577507002222
 HEX 222222D0DDDDDD220076557600222222
 HEX 02202222222200777557757775577577
 HEX 5757555700002202020200DDDDDDDD22
 HEX 00565556002222002222222222220057
 HEX 57555757575557577755777700000020
 HEX 2222008D8D0D22220056557600220220
 HEX 22002222222200777777557777775577
 HEX 77557777702022222222202000002222
 HEX 00565576002200222200222222020077
 HEX 77775577777755777755777777002222
 HEX 22222202002222220056557600002022
 HEX 22002202D0DDDDDD7777557777775577
 HEX 75557575755000020202002222222202
 HEX 005655760020222222002200DDDDDDDD
 HEX DD755575757555757755777777557777
 HEX 77550022222222002256557600222222
 HEX 22222000088D8D7D7777557777775577
 HEX 72557272725572727205002222222200
 HEX 22555500202222222222020072725572
 HEX 72725572727255722222222222222222
 HEX 22002222222222002222550022222222
 HEX 22020000022222222222222222222222
*
ASTLE1 HEX 55555555555555555555557575555575
 HEX 75775775755777757555557575555555
 HEX 55555555555555555555555555557555
 HEX 55577755755555775757557575555757
 HEX 77555575557757555575555555555555
 HEX 55555575757777557777757557555555
 HEX 77557777777755775555555775757777
 HEX 55777775755555555555577777775775
 HEX 77777757755555878888888888857575
 HEX 77555575577777777557777777575555
 HEX 55775555577755777757557757558888
 HEX 88888888888888777755555777555777
 HEX 77557757555577557557757775555557
 HEX 75577575575588D8DDDDDDDDDDD88875
 HEX 57555557757557755755557577755775
 HEX 777557777777555777755757755588DD
 HEX DDDDDDDDDDDDD8775555557557577577
 HEX 57557777775775777755777777777755
 HEX 557577557755DDDDDDDDDDDDDDDDDD57
 HEX 75555577557775555577777777775577
 HEX 575775577757755755557755775555DD
 HEX DDDDDDDDDDDD75777755557755775555
 HEX 57755777577557577755755755577555
 HEX 77755575755555700D0D0D0D0D007557
 HEX 77555575755575775575575557755577
 HEX 775577775577775577775557575505F0
 HEX FD5D5D5DDDF0F0075555555757557777
 HEX 55777755777755775755777555757755
 HEX 57550705070000FFFF555550FFFFFF00
 HEX 00200507050755575577755575775557
 HEX 7555755755577505070020220220007F
 HEX 5755555077552F002200222222202007
 HEX 55755755577555755577777755770020
 HEX 22222200222200067675557626062022
 HEX 22220002222222007777775577777755
 HEX 57777777557700222222200222222220
 HEX 067655560022D2D22202022022222200
 HEX 77777755777777577775577577750022
 HEX 2222222002222222007655760022DDDD
 HEX DDD02222222222000557757775577577
 HEX 57575557575700222222222222002222
 HEX 005655560022DDDDDDDD000202022200
 HEX 00555757575557577755777777550022
 HEX 2222220022200222005655760022220D
 HEX 8D8D0022222000000077557777775577
 HEX 77557777775500022222220022220022
 HEX 00565576002222000020202222222220
 HEX 70775577777755777755777777DDDDDD
 HEX D0022200222220000056557600222222
 HEX 00022222222222007777557777775577
 HEX 75557575DDDDDDDDDD00220022222220
 HEX 00565576000222222222000202020070
 HEX 757555757575557577557777775D8D8D
 HEX 08002022222222220056557622002222
 HEX 22220077777755777777557777775577
 HEX 72557272725572727200022222222222
 HEX 20005572220022222222000272725572
 HEX 72725572727255722222222222222222
 HEX 02000002222222222200552222002222
 HEX 22222200222222222222222222222222
*
ASTLE2 HEX 55555555555555555555557575555575
 HEX 75775775755777757555557575555555
 HEX 55555555555555555555555555557555
 HEX 55577755755555775757557575555757
 HEX 77555575557757555575555555555555
 HEX 55555575757777557777757557555555
 HEX 77558787878785875555555775757777
 HEX 55777775755555555555577777775775
 HEX 77777757755555888888888888888888
 HEX 88855575577777777557777777575555
 HEX 55775555577755777757557757558888
 HEX 888888D8D8D8D8D80858555777555777
 HEX 77557757555577557557757775555557
 HEX 75577575575508888888D8DDDDDDDDDD
 HEX 00555557757557755755557577755775
 HEX 77755777777755577775575775555008
 HEX DDD8DDDDDDDDDDDD0055557557577577
 HEX 57557777775775777755777777777755
 HEX 55757755775555700DDDDDDDDDDDDDDD
 HEX 00555577557775555577777777775577
 HEX 57577557775775575555775577555507
 HEX 00DDDDDDDDDDDD007755557755775555
 HEX 57755777577557577755755755577555
 HEX 77755575750500FFDDDDDDD0D0F00057
 HEX 77555575755575775575575557755577
 HEX 775577775577775577070520200000FF
 HEX FFDDDDDDDDFFF0000505055757557777
 HEX 55777755777755775755777555750720
 HEX 202222220022200F7F7FFFFD7F5F5050
 HEX 52222220057755575577755575775557
 HEX 75557557555700222222020022222222
 HEX 00767676760055555022222200777777
 HEX 55755755577555755577777755002222
 HEX 22222220022222222006767666005555
 HEX 50222222005775557777775577777755
 HEX 57777777052022222222222222200222
 HEX 22007676670022552222002200557755
 HEX 77777755777777577775577500222222
 HEX 22222222222220022220060607002255
 HEX 22220022007577777557757775577577
 HEX 57575507202222222222222222220202
 HEX 00D2DDDDDD0D20552222002220075757
 HEX 57555757575557577755770022222222
 HEX 222020202020222200DDDDDDDD002255
 HEX 22220022220055777777557777775577
 HEX 77557700222222222222222222222222
 HEX 00080D0D600022552202202222222007
 HEX 0707D0D0070705777755777770020202
 HEX 02020020202020202022220007002255
 HEX 220002020202222200DDDDDDDDDD0D00
 HEX 75557575755575757500222222222222
 HEX 22222222007600552200007575705070
 HEX 00080DDDDD0D50757755777777557777
 HEX 77002222222222222222222200060055
 HEX 22005577777755777777557070775577
 HEX 72557272725572727200222222222222
 HEX 22222222005500552250057272725572
 HEX 72725572727255722222222222222222
 HEX 22002222222222222222222200550055
 HEX 22220022222222222222222222222222
*
ASTLE3 HEX 55555555555555555555557575555575
 HEX 75775775755777757555557575555555
 HEX 55555555555555555555555555557555
 HEX 55577755755555775757557575555757
 HEX 77555575557757555575555555555555
 HEX 55555575757777557777757557555555
 HEX 87858787878755775555555775757777
 HEX 55777775755555555555577777775775
 HEX 77777757755585888888888888888888
 HEX 88555575577777777557777777575555
 HEX 55775555577755777757557757555808
 HEX D8D8D8D8D88888888888555777555777
 HEX 77557757555577557557757775555557
 HEX 7557757557555500DDDDDDDDDDD88888
 HEX 88085557757557755755557577755775
 HEX 77755777777755577775575775555500
 HEX DDDDDDDDDDDDD8DD0850557557577577
 HEX 57557777775775777755777777777755
 HEX 5575775577555500DDDDDDDDDDDDDD0D
 HEX 70555577557775555577777777775577
 HEX 57577557775775575555775577555577
 HEX 00DDDDDDDDDDDD000755557755775555
 HEX 57755777577557577755755755577555
 HEX 77755575755555775700F0D0D0DDDDDD
 HEX FF000575755575775575575557755577
 HEX 77557777557777557777555757050505
 HEX 00F0FFDDDDDDDDFFFF00002020050777
 HEX 55777755777755775755777555757755
 HEX 575577052022225250505F7FFDFF7F7F
 HEX 0F202200222222202007755575775557
 HEX 75557557555775557777770022222250
 HEX 55550076767676002222222200022222
 HEX 22005755577555755577777755777777
 HEX 55755700222222505555006676760620
 HEX 22222202202222222222005577777755
 HEX 57777777557777775577550022002222
 HEX 55220067767600222202202222222222
 HEX 22222005777777577775577577755775
 HEX 77777500220022225522000706062022
 HEX 02202222222222222222220075577577
 HEX 57575557575755575757072022002222
 HEX 55200DDDDDDDD2000202222222222222
 HEX 22222220075557577755777777557777
 HEX 7755002222002222552200DDDDDDDD00
 HEX 22222020202020222222222200775577
 HEX 77050707D0D007070720222222200222
 HEX 552200600D0D08002222222222222222
 HEX 2222222200775577000DDDDDDDDDDD00
 HEX 22220202020200225522000700222220
 HEX 20202020200002020202027077775577
 HEX 75500DDDDD0D08007050707575000022
 HEX 55007600222222222222222222220075
 HEX 75755575757555757755777070557777
 HEX 77557777775500225500060022222222
 HEX 22222222222200777777557777775577
 HEX 72557272725572727255727272055022
 HEX 55005500222222222222222222220072
 HEX 72725572727255722222222222222222
 HEX 22222222220022225500550022222222
 HEX 22222222222200222222222222222222
*
TUNNEL HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 222222222222D2222222222222222222
 HEX 2222D222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222D22222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22D22222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 2D22222222222222222222222D222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 2222D222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222D22222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222202020202020222222222
 HEX 22222222222222222222222222222222
 HEX 22222222222222222222222222220000
 HEX 00000000222222222222222222222222
 HEX 00000000222222222222222222222222
 HEX 22222222222200000000000022222222
 HEX 22222222222222220000000022222222
 HEX 22222222222222222222222222220000
 HEX 00000000220202020222222200000000
 HEX 00000000222222222222222222222222
 HEX 22222222222200000000000022000000
 HEX 00222222000000000000000022000000
 HEX 22222222220202020202022222220000
 HEX 00000000000000000022222200000000
 HEX 00000000020000002200000000000000
 HEX 00000000000000000000000000000000
 HEX 00222222000000000000000000000000
 HEX 00000000000000000000000000000000
 HEX 00000000000000000000000000000000
 HEX 00000000000000000000000000000000
 HEX 00000000000000000000000000000000
 HEX 00000000000000008000800080008000
 HEX 80008000800080008000800080008000
 HEX 80008000800080008000800080008000
 HEX 08000800080008000800080008000800
 HEX 08000800080008000800080008000800
 HEX 08000800080008008888888888880088
 HEX 88888888888800888888888888880088
 HEX 88888888888800888888888888880088
 HEX 08080808080800080808080808080008
 HEX 08080808080800080808080808080008
 HEX 08080808080800088800888888888888
 HEX 88008888888888888800888888888888
 HEX 88008888888888888800888888888888
 HEX 88008888888888888800888888888888
 HEX 88008888888888888800888888888888
 HEX 88008888888888888080808000808080
 HEX 80808080008080808080808000808080
 HEX 80808080008080808080808000808080
 HEX 88888888008888888888888800888888
 HEX 88888888008888888888888800888888
 HEX 88888888008888880909090800090909
 HEX 09090908000909090909090800090909
 HEX 09090908000808080808080800080808
 HEX 80808080808080808080808080808080
 HEX 80808080808080808080808080808080
 HEX 80000000000000000000202020202020
 HEX 20202020202020202020202020202020
 HEX 20202020202020200888888080808080
 HEX 02020000000000000000000000000000
 HEX 00000000000000000000000000000000
 HEX 00080808080808080000000000000000
 HEX 00000000000000000000000000000000
 HEX 00000000000000000000999998880088
 HEX 00000000000000000000000000000000
 HEX 00000000000000000000000000000000
 HEX 00009000808080800000000000000000
 HEX 00000000000000000000000000000000
 HEX 00000000000000000000090008080808
 HEX 20202020202020202060606020202020
 HEX 20202020000202020222222222222020
 HEX 20000099888888882222222262622626
 HEX 26222222222222222222222222222222
 HEX 22202020020202022222200808000808
 HEX 22226226222222222222222222222222
 HEX 22222222222222222222222222222222
 HEX 20606262620080806226222222222222
 HEX 22222222222222222222222222222222
 HEX 22222222226262060680202020200808
 HEX 66222222222222222222222222626262
 HEX 62626262626262626262626206808008
 HEX 08882222222200086666666666666666
 HEX 66666666666666868666666666666686
 HEX 88866666008888808088222222220000
 HEX 66666666868888888666666666868888
 HEX 88888666666688888888886600880808
 HEX 88882222220088086666668888888888
 HEX 88886666668888988898886666668888
 HEX 88888866008800008808020202008080
 HEX 66666698989998989998666666999999
 HEX 99999966666698989999980600000050
 HEX 50555555550008086666669999999999
 HEX 99996666669999D8D899996666669979
 HEX 79797777555555555555555555008800
 HEX 6666669999999999999966060609E90D
 HEX 0DE77777707057575757777777777775
 HEX 75555555550000006606067979797977
 HEX 7777777775DEEE0000EE5E7D77777775
 HEX 75555555577777777777777575008888
 HEX 5050575777777777777777777777EE00
 HEX 7000EE55575757777777777775757555
 HEX 57777777770080805555555555555555
 HEX 57577777777700707700777775755555
 HEX 57777777777777777777770700000808
 HEX 55555555555555555555555757777077
 HEX 77707077777777757555555757777777
 HEX 77777700888800885555555555555555
 HEX 55555555555555575777777777777777
 HEX 77777775755555575777770000000000
*
LORESR0 HEX 0400
 HEX 0480
 HEX 0500
 HEX 0580
 HEX 0600
 HEX 0680
 HEX 0700
 HEX 0780
 HEX 0428
 HEX 04A8
 HEX 0528
 HEX 05A8
 HEX 0628
 HEX 06A8
 HEX 0728
 HEX 07A8
 HEX 0450
 HEX 04D0
 HEX 0550
 HEX 05D0
 HEX 0650
 HEX 06D0
 HEX 0750
 HEX 07D0
