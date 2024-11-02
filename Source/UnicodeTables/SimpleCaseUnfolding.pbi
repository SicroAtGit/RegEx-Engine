
; Version: 14.0.0
; Date: 2021-03-08, 19:35:41 GMT
; https://www.unicode.org/Public/UCD/latest/ucd/CaseFolding.txt

Structure CaseUnfoldStruc
  charsCount.a
  chars.u[0] ; Maximum array index is the value of `charsCount`
EndStructure

Global Dim *caseUnfold.CaseUnfoldStruc($FFFF)

; *caseUnfold((charCode) = ?caseUnfoldTable + offset

*caseUnfold($0041) = ?caseUnfoldTable + $0000
*caseUnfold($0061) = ?caseUnfoldTable + $0003
*caseUnfold($0042) = ?caseUnfoldTable + $0006
*caseUnfold($0062) = ?caseUnfoldTable + $0009
*caseUnfold($0043) = ?caseUnfoldTable + $000C
*caseUnfold($0063) = ?caseUnfoldTable + $000F
*caseUnfold($0044) = ?caseUnfoldTable + $0012
*caseUnfold($0064) = ?caseUnfoldTable + $0015
*caseUnfold($0045) = ?caseUnfoldTable + $0018
*caseUnfold($0065) = ?caseUnfoldTable + $001B
*caseUnfold($0046) = ?caseUnfoldTable + $001E
*caseUnfold($0066) = ?caseUnfoldTable + $0021
*caseUnfold($0047) = ?caseUnfoldTable + $0024
*caseUnfold($0067) = ?caseUnfoldTable + $0027
*caseUnfold($0048) = ?caseUnfoldTable + $002A
*caseUnfold($0068) = ?caseUnfoldTable + $002D
*caseUnfold($0049) = ?caseUnfoldTable + $0030
*caseUnfold($0069) = ?caseUnfoldTable + $0033
*caseUnfold($004A) = ?caseUnfoldTable + $0036
*caseUnfold($006A) = ?caseUnfoldTable + $0039
*caseUnfold($004B) = ?caseUnfoldTable + $003C
*caseUnfold($006B) = ?caseUnfoldTable + $0041
*caseUnfold($212A) = ?caseUnfoldTable + $0046
*caseUnfold($004C) = ?caseUnfoldTable + $004B
*caseUnfold($006C) = ?caseUnfoldTable + $004E
*caseUnfold($004D) = ?caseUnfoldTable + $0051
*caseUnfold($006D) = ?caseUnfoldTable + $0054
*caseUnfold($004E) = ?caseUnfoldTable + $0057
*caseUnfold($006E) = ?caseUnfoldTable + $005A
*caseUnfold($004F) = ?caseUnfoldTable + $005D
*caseUnfold($006F) = ?caseUnfoldTable + $0060
*caseUnfold($0050) = ?caseUnfoldTable + $0063
*caseUnfold($0070) = ?caseUnfoldTable + $0066
*caseUnfold($0051) = ?caseUnfoldTable + $0069
*caseUnfold($0071) = ?caseUnfoldTable + $006C
*caseUnfold($0052) = ?caseUnfoldTable + $006F
*caseUnfold($0072) = ?caseUnfoldTable + $0072
*caseUnfold($0053) = ?caseUnfoldTable + $0075
*caseUnfold($0073) = ?caseUnfoldTable + $007A
*caseUnfold($017F) = ?caseUnfoldTable + $007F
*caseUnfold($0054) = ?caseUnfoldTable + $0084
*caseUnfold($0074) = ?caseUnfoldTable + $0087
*caseUnfold($0055) = ?caseUnfoldTable + $008A
*caseUnfold($0075) = ?caseUnfoldTable + $008D
*caseUnfold($0056) = ?caseUnfoldTable + $0090
*caseUnfold($0076) = ?caseUnfoldTable + $0093
*caseUnfold($0057) = ?caseUnfoldTable + $0096
*caseUnfold($0077) = ?caseUnfoldTable + $0099
*caseUnfold($0058) = ?caseUnfoldTable + $009C
*caseUnfold($0078) = ?caseUnfoldTable + $009F
*caseUnfold($0059) = ?caseUnfoldTable + $00A2
*caseUnfold($0079) = ?caseUnfoldTable + $00A5
*caseUnfold($005A) = ?caseUnfoldTable + $00A8
*caseUnfold($007A) = ?caseUnfoldTable + $00AB
*caseUnfold($00B5) = ?caseUnfoldTable + $00AE
*caseUnfold($03BC) = ?caseUnfoldTable + $00B3
*caseUnfold($039C) = ?caseUnfoldTable + $00B8
*caseUnfold($00C0) = ?caseUnfoldTable + $00BD
*caseUnfold($00E0) = ?caseUnfoldTable + $00C0
*caseUnfold($00C1) = ?caseUnfoldTable + $00C3
*caseUnfold($00E1) = ?caseUnfoldTable + $00C6
*caseUnfold($00C2) = ?caseUnfoldTable + $00C9
*caseUnfold($00E2) = ?caseUnfoldTable + $00CC
*caseUnfold($00C3) = ?caseUnfoldTable + $00CF
*caseUnfold($00E3) = ?caseUnfoldTable + $00D2
*caseUnfold($00C4) = ?caseUnfoldTable + $00D5
*caseUnfold($00E4) = ?caseUnfoldTable + $00D8
*caseUnfold($00C5) = ?caseUnfoldTable + $00DB
*caseUnfold($00E5) = ?caseUnfoldTable + $00E0
*caseUnfold($212B) = ?caseUnfoldTable + $00E5
*caseUnfold($00C6) = ?caseUnfoldTable + $00EA
*caseUnfold($00E6) = ?caseUnfoldTable + $00ED
*caseUnfold($00C7) = ?caseUnfoldTable + $00F0
*caseUnfold($00E7) = ?caseUnfoldTable + $00F3
*caseUnfold($00C8) = ?caseUnfoldTable + $00F6
*caseUnfold($00E8) = ?caseUnfoldTable + $00F9
*caseUnfold($00C9) = ?caseUnfoldTable + $00FC
*caseUnfold($00E9) = ?caseUnfoldTable + $00FF
*caseUnfold($00CA) = ?caseUnfoldTable + $0102
*caseUnfold($00EA) = ?caseUnfoldTable + $0105
*caseUnfold($00CB) = ?caseUnfoldTable + $0108
*caseUnfold($00EB) = ?caseUnfoldTable + $010B
*caseUnfold($00CC) = ?caseUnfoldTable + $010E
*caseUnfold($00EC) = ?caseUnfoldTable + $0111
*caseUnfold($00CD) = ?caseUnfoldTable + $0114
*caseUnfold($00ED) = ?caseUnfoldTable + $0117
*caseUnfold($00CE) = ?caseUnfoldTable + $011A
*caseUnfold($00EE) = ?caseUnfoldTable + $011D
*caseUnfold($00CF) = ?caseUnfoldTable + $0120
*caseUnfold($00EF) = ?caseUnfoldTable + $0123
*caseUnfold($00D0) = ?caseUnfoldTable + $0126
*caseUnfold($00F0) = ?caseUnfoldTable + $0129
*caseUnfold($00D1) = ?caseUnfoldTable + $012C
*caseUnfold($00F1) = ?caseUnfoldTable + $012F
*caseUnfold($00D2) = ?caseUnfoldTable + $0132
*caseUnfold($00F2) = ?caseUnfoldTable + $0135
*caseUnfold($00D3) = ?caseUnfoldTable + $0138
*caseUnfold($00F3) = ?caseUnfoldTable + $013B
*caseUnfold($00D4) = ?caseUnfoldTable + $013E
*caseUnfold($00F4) = ?caseUnfoldTable + $0141
*caseUnfold($00D5) = ?caseUnfoldTable + $0144
*caseUnfold($00F5) = ?caseUnfoldTable + $0147
*caseUnfold($00D6) = ?caseUnfoldTable + $014A
*caseUnfold($00F6) = ?caseUnfoldTable + $014D
*caseUnfold($00D8) = ?caseUnfoldTable + $0150
*caseUnfold($00F8) = ?caseUnfoldTable + $0153
*caseUnfold($00D9) = ?caseUnfoldTable + $0156
*caseUnfold($00F9) = ?caseUnfoldTable + $0159
*caseUnfold($00DA) = ?caseUnfoldTable + $015C
*caseUnfold($00FA) = ?caseUnfoldTable + $015F
*caseUnfold($00DB) = ?caseUnfoldTable + $0162
*caseUnfold($00FB) = ?caseUnfoldTable + $0165
*caseUnfold($00DC) = ?caseUnfoldTable + $0168
*caseUnfold($00FC) = ?caseUnfoldTable + $016B
*caseUnfold($00DD) = ?caseUnfoldTable + $016E
*caseUnfold($00FD) = ?caseUnfoldTable + $0171
*caseUnfold($00DE) = ?caseUnfoldTable + $0174
*caseUnfold($00FE) = ?caseUnfoldTable + $0177
*caseUnfold($0100) = ?caseUnfoldTable + $017A
*caseUnfold($0101) = ?caseUnfoldTable + $017D
*caseUnfold($0102) = ?caseUnfoldTable + $0180
*caseUnfold($0103) = ?caseUnfoldTable + $0183
*caseUnfold($0104) = ?caseUnfoldTable + $0186
*caseUnfold($0105) = ?caseUnfoldTable + $0189
*caseUnfold($0106) = ?caseUnfoldTable + $018C
*caseUnfold($0107) = ?caseUnfoldTable + $018F
*caseUnfold($0108) = ?caseUnfoldTable + $0192
*caseUnfold($0109) = ?caseUnfoldTable + $0195
*caseUnfold($010A) = ?caseUnfoldTable + $0198
*caseUnfold($010B) = ?caseUnfoldTable + $019B
*caseUnfold($010C) = ?caseUnfoldTable + $019E
*caseUnfold($010D) = ?caseUnfoldTable + $01A1
*caseUnfold($010E) = ?caseUnfoldTable + $01A4
*caseUnfold($010F) = ?caseUnfoldTable + $01A7
*caseUnfold($0110) = ?caseUnfoldTable + $01AA
*caseUnfold($0111) = ?caseUnfoldTable + $01AD
*caseUnfold($0112) = ?caseUnfoldTable + $01B0
*caseUnfold($0113) = ?caseUnfoldTable + $01B3
*caseUnfold($0114) = ?caseUnfoldTable + $01B6
*caseUnfold($0115) = ?caseUnfoldTable + $01B9
*caseUnfold($0116) = ?caseUnfoldTable + $01BC
*caseUnfold($0117) = ?caseUnfoldTable + $01BF
*caseUnfold($0118) = ?caseUnfoldTable + $01C2
*caseUnfold($0119) = ?caseUnfoldTable + $01C5
*caseUnfold($011A) = ?caseUnfoldTable + $01C8
*caseUnfold($011B) = ?caseUnfoldTable + $01CB
*caseUnfold($011C) = ?caseUnfoldTable + $01CE
*caseUnfold($011D) = ?caseUnfoldTable + $01D1
*caseUnfold($011E) = ?caseUnfoldTable + $01D4
*caseUnfold($011F) = ?caseUnfoldTable + $01D7
*caseUnfold($0120) = ?caseUnfoldTable + $01DA
*caseUnfold($0121) = ?caseUnfoldTable + $01DD
*caseUnfold($0122) = ?caseUnfoldTable + $01E0
*caseUnfold($0123) = ?caseUnfoldTable + $01E3
*caseUnfold($0124) = ?caseUnfoldTable + $01E6
*caseUnfold($0125) = ?caseUnfoldTable + $01E9
*caseUnfold($0126) = ?caseUnfoldTable + $01EC
*caseUnfold($0127) = ?caseUnfoldTable + $01EF
*caseUnfold($0128) = ?caseUnfoldTable + $01F2
*caseUnfold($0129) = ?caseUnfoldTable + $01F5
*caseUnfold($012A) = ?caseUnfoldTable + $01F8
*caseUnfold($012B) = ?caseUnfoldTable + $01FB
*caseUnfold($012C) = ?caseUnfoldTable + $01FE
*caseUnfold($012D) = ?caseUnfoldTable + $0201
*caseUnfold($012E) = ?caseUnfoldTable + $0204
*caseUnfold($012F) = ?caseUnfoldTable + $0207
*caseUnfold($0132) = ?caseUnfoldTable + $020A
*caseUnfold($0133) = ?caseUnfoldTable + $020D
*caseUnfold($0134) = ?caseUnfoldTable + $0210
*caseUnfold($0135) = ?caseUnfoldTable + $0213
*caseUnfold($0136) = ?caseUnfoldTable + $0216
*caseUnfold($0137) = ?caseUnfoldTable + $0219
*caseUnfold($0139) = ?caseUnfoldTable + $021C
*caseUnfold($013A) = ?caseUnfoldTable + $021F
*caseUnfold($013B) = ?caseUnfoldTable + $0222
*caseUnfold($013C) = ?caseUnfoldTable + $0225
*caseUnfold($013D) = ?caseUnfoldTable + $0228
*caseUnfold($013E) = ?caseUnfoldTable + $022B
*caseUnfold($013F) = ?caseUnfoldTable + $022E
*caseUnfold($0140) = ?caseUnfoldTable + $0231
*caseUnfold($0141) = ?caseUnfoldTable + $0234
*caseUnfold($0142) = ?caseUnfoldTable + $0237
*caseUnfold($0143) = ?caseUnfoldTable + $023A
*caseUnfold($0144) = ?caseUnfoldTable + $023D
*caseUnfold($0145) = ?caseUnfoldTable + $0240
*caseUnfold($0146) = ?caseUnfoldTable + $0243
*caseUnfold($0147) = ?caseUnfoldTable + $0246
*caseUnfold($0148) = ?caseUnfoldTable + $0249
*caseUnfold($014A) = ?caseUnfoldTable + $024C
*caseUnfold($014B) = ?caseUnfoldTable + $024F
*caseUnfold($014C) = ?caseUnfoldTable + $0252
*caseUnfold($014D) = ?caseUnfoldTable + $0255
*caseUnfold($014E) = ?caseUnfoldTable + $0258
*caseUnfold($014F) = ?caseUnfoldTable + $025B
*caseUnfold($0150) = ?caseUnfoldTable + $025E
*caseUnfold($0151) = ?caseUnfoldTable + $0261
*caseUnfold($0152) = ?caseUnfoldTable + $0264
*caseUnfold($0153) = ?caseUnfoldTable + $0267
*caseUnfold($0154) = ?caseUnfoldTable + $026A
*caseUnfold($0155) = ?caseUnfoldTable + $026D
*caseUnfold($0156) = ?caseUnfoldTable + $0270
*caseUnfold($0157) = ?caseUnfoldTable + $0273
*caseUnfold($0158) = ?caseUnfoldTable + $0276
*caseUnfold($0159) = ?caseUnfoldTable + $0279
*caseUnfold($015A) = ?caseUnfoldTable + $027C
*caseUnfold($015B) = ?caseUnfoldTable + $027F
*caseUnfold($015C) = ?caseUnfoldTable + $0282
*caseUnfold($015D) = ?caseUnfoldTable + $0285
*caseUnfold($015E) = ?caseUnfoldTable + $0288
*caseUnfold($015F) = ?caseUnfoldTable + $028B
*caseUnfold($0160) = ?caseUnfoldTable + $028E
*caseUnfold($0161) = ?caseUnfoldTable + $0291
*caseUnfold($0162) = ?caseUnfoldTable + $0294
*caseUnfold($0163) = ?caseUnfoldTable + $0297
*caseUnfold($0164) = ?caseUnfoldTable + $029A
*caseUnfold($0165) = ?caseUnfoldTable + $029D
*caseUnfold($0166) = ?caseUnfoldTable + $02A0
*caseUnfold($0167) = ?caseUnfoldTable + $02A3
*caseUnfold($0168) = ?caseUnfoldTable + $02A6
*caseUnfold($0169) = ?caseUnfoldTable + $02A9
*caseUnfold($016A) = ?caseUnfoldTable + $02AC
*caseUnfold($016B) = ?caseUnfoldTable + $02AF
*caseUnfold($016C) = ?caseUnfoldTable + $02B2
*caseUnfold($016D) = ?caseUnfoldTable + $02B5
*caseUnfold($016E) = ?caseUnfoldTable + $02B8
*caseUnfold($016F) = ?caseUnfoldTable + $02BB
*caseUnfold($0170) = ?caseUnfoldTable + $02BE
*caseUnfold($0171) = ?caseUnfoldTable + $02C1
*caseUnfold($0172) = ?caseUnfoldTable + $02C4
*caseUnfold($0173) = ?caseUnfoldTable + $02C7
*caseUnfold($0174) = ?caseUnfoldTable + $02CA
*caseUnfold($0175) = ?caseUnfoldTable + $02CD
*caseUnfold($0176) = ?caseUnfoldTable + $02D0
*caseUnfold($0177) = ?caseUnfoldTable + $02D3
*caseUnfold($0178) = ?caseUnfoldTable + $02D6
*caseUnfold($00FF) = ?caseUnfoldTable + $02D9
*caseUnfold($0179) = ?caseUnfoldTable + $02DC
*caseUnfold($017A) = ?caseUnfoldTable + $02DF
*caseUnfold($017B) = ?caseUnfoldTable + $02E2
*caseUnfold($017C) = ?caseUnfoldTable + $02E5
*caseUnfold($017D) = ?caseUnfoldTable + $02E8
*caseUnfold($017E) = ?caseUnfoldTable + $02EB
*caseUnfold($0181) = ?caseUnfoldTable + $02EE
*caseUnfold($0253) = ?caseUnfoldTable + $02F1
*caseUnfold($0182) = ?caseUnfoldTable + $02F4
*caseUnfold($0183) = ?caseUnfoldTable + $02F7
*caseUnfold($0184) = ?caseUnfoldTable + $02FA
*caseUnfold($0185) = ?caseUnfoldTable + $02FD
*caseUnfold($0186) = ?caseUnfoldTable + $0300
*caseUnfold($0254) = ?caseUnfoldTable + $0303
*caseUnfold($0187) = ?caseUnfoldTable + $0306
*caseUnfold($0188) = ?caseUnfoldTable + $0309
*caseUnfold($0189) = ?caseUnfoldTable + $030C
*caseUnfold($0256) = ?caseUnfoldTable + $030F
*caseUnfold($018A) = ?caseUnfoldTable + $0312
*caseUnfold($0257) = ?caseUnfoldTable + $0315
*caseUnfold($018B) = ?caseUnfoldTable + $0318
*caseUnfold($018C) = ?caseUnfoldTable + $031B
*caseUnfold($018E) = ?caseUnfoldTable + $031E
*caseUnfold($01DD) = ?caseUnfoldTable + $0321
*caseUnfold($018F) = ?caseUnfoldTable + $0324
*caseUnfold($0259) = ?caseUnfoldTable + $0327
*caseUnfold($0190) = ?caseUnfoldTable + $032A
*caseUnfold($025B) = ?caseUnfoldTable + $032D
*caseUnfold($0191) = ?caseUnfoldTable + $0330
*caseUnfold($0192) = ?caseUnfoldTable + $0333
*caseUnfold($0193) = ?caseUnfoldTable + $0336
*caseUnfold($0260) = ?caseUnfoldTable + $0339
*caseUnfold($0194) = ?caseUnfoldTable + $033C
*caseUnfold($0263) = ?caseUnfoldTable + $033F
*caseUnfold($0196) = ?caseUnfoldTable + $0342
*caseUnfold($0269) = ?caseUnfoldTable + $0345
*caseUnfold($0197) = ?caseUnfoldTable + $0348
*caseUnfold($0268) = ?caseUnfoldTable + $034B
*caseUnfold($0198) = ?caseUnfoldTable + $034E
*caseUnfold($0199) = ?caseUnfoldTable + $0351
*caseUnfold($019C) = ?caseUnfoldTable + $0354
*caseUnfold($026F) = ?caseUnfoldTable + $0357
*caseUnfold($019D) = ?caseUnfoldTable + $035A
*caseUnfold($0272) = ?caseUnfoldTable + $035D
*caseUnfold($019F) = ?caseUnfoldTable + $0360
*caseUnfold($0275) = ?caseUnfoldTable + $0363
*caseUnfold($01A0) = ?caseUnfoldTable + $0366
*caseUnfold($01A1) = ?caseUnfoldTable + $0369
*caseUnfold($01A2) = ?caseUnfoldTable + $036C
*caseUnfold($01A3) = ?caseUnfoldTable + $036F
*caseUnfold($01A4) = ?caseUnfoldTable + $0372
*caseUnfold($01A5) = ?caseUnfoldTable + $0375
*caseUnfold($01A6) = ?caseUnfoldTable + $0378
*caseUnfold($0280) = ?caseUnfoldTable + $037B
*caseUnfold($01A7) = ?caseUnfoldTable + $037E
*caseUnfold($01A8) = ?caseUnfoldTable + $0381
*caseUnfold($01A9) = ?caseUnfoldTable + $0384
*caseUnfold($0283) = ?caseUnfoldTable + $0387
*caseUnfold($01AC) = ?caseUnfoldTable + $038A
*caseUnfold($01AD) = ?caseUnfoldTable + $038D
*caseUnfold($01AE) = ?caseUnfoldTable + $0390
*caseUnfold($0288) = ?caseUnfoldTable + $0393
*caseUnfold($01AF) = ?caseUnfoldTable + $0396
*caseUnfold($01B0) = ?caseUnfoldTable + $0399
*caseUnfold($01B1) = ?caseUnfoldTable + $039C
*caseUnfold($028A) = ?caseUnfoldTable + $039F
*caseUnfold($01B2) = ?caseUnfoldTable + $03A2
*caseUnfold($028B) = ?caseUnfoldTable + $03A5
*caseUnfold($01B3) = ?caseUnfoldTable + $03A8
*caseUnfold($01B4) = ?caseUnfoldTable + $03AB
*caseUnfold($01B5) = ?caseUnfoldTable + $03AE
*caseUnfold($01B6) = ?caseUnfoldTable + $03B1
*caseUnfold($01B7) = ?caseUnfoldTable + $03B4
*caseUnfold($0292) = ?caseUnfoldTable + $03B7
*caseUnfold($01B8) = ?caseUnfoldTable + $03BA
*caseUnfold($01B9) = ?caseUnfoldTable + $03BD
*caseUnfold($01BC) = ?caseUnfoldTable + $03C0
*caseUnfold($01BD) = ?caseUnfoldTable + $03C3
*caseUnfold($01C4) = ?caseUnfoldTable + $03C6
*caseUnfold($01C6) = ?caseUnfoldTable + $03CB
*caseUnfold($01C5) = ?caseUnfoldTable + $03D0
*caseUnfold($01C7) = ?caseUnfoldTable + $03D5
*caseUnfold($01C9) = ?caseUnfoldTable + $03DA
*caseUnfold($01C8) = ?caseUnfoldTable + $03DF
*caseUnfold($01CA) = ?caseUnfoldTable + $03E4
*caseUnfold($01CC) = ?caseUnfoldTable + $03E9
*caseUnfold($01CB) = ?caseUnfoldTable + $03EE
*caseUnfold($01CD) = ?caseUnfoldTable + $03F3
*caseUnfold($01CE) = ?caseUnfoldTable + $03F6
*caseUnfold($01CF) = ?caseUnfoldTable + $03F9
*caseUnfold($01D0) = ?caseUnfoldTable + $03FC
*caseUnfold($01D1) = ?caseUnfoldTable + $03FF
*caseUnfold($01D2) = ?caseUnfoldTable + $0402
*caseUnfold($01D3) = ?caseUnfoldTable + $0405
*caseUnfold($01D4) = ?caseUnfoldTable + $0408
*caseUnfold($01D5) = ?caseUnfoldTable + $040B
*caseUnfold($01D6) = ?caseUnfoldTable + $040E
*caseUnfold($01D7) = ?caseUnfoldTable + $0411
*caseUnfold($01D8) = ?caseUnfoldTable + $0414
*caseUnfold($01D9) = ?caseUnfoldTable + $0417
*caseUnfold($01DA) = ?caseUnfoldTable + $041A
*caseUnfold($01DB) = ?caseUnfoldTable + $041D
*caseUnfold($01DC) = ?caseUnfoldTable + $0420
*caseUnfold($01DE) = ?caseUnfoldTable + $0423
*caseUnfold($01DF) = ?caseUnfoldTable + $0426
*caseUnfold($01E0) = ?caseUnfoldTable + $0429
*caseUnfold($01E1) = ?caseUnfoldTable + $042C
*caseUnfold($01E2) = ?caseUnfoldTable + $042F
*caseUnfold($01E3) = ?caseUnfoldTable + $0432
*caseUnfold($01E4) = ?caseUnfoldTable + $0435
*caseUnfold($01E5) = ?caseUnfoldTable + $0438
*caseUnfold($01E6) = ?caseUnfoldTable + $043B
*caseUnfold($01E7) = ?caseUnfoldTable + $043E
*caseUnfold($01E8) = ?caseUnfoldTable + $0441
*caseUnfold($01E9) = ?caseUnfoldTable + $0444
*caseUnfold($01EA) = ?caseUnfoldTable + $0447
*caseUnfold($01EB) = ?caseUnfoldTable + $044A
*caseUnfold($01EC) = ?caseUnfoldTable + $044D
*caseUnfold($01ED) = ?caseUnfoldTable + $0450
*caseUnfold($01EE) = ?caseUnfoldTable + $0453
*caseUnfold($01EF) = ?caseUnfoldTable + $0456
*caseUnfold($01F1) = ?caseUnfoldTable + $0459
*caseUnfold($01F3) = ?caseUnfoldTable + $045E
*caseUnfold($01F2) = ?caseUnfoldTable + $0463
*caseUnfold($01F4) = ?caseUnfoldTable + $0468
*caseUnfold($01F5) = ?caseUnfoldTable + $046B
*caseUnfold($01F6) = ?caseUnfoldTable + $046E
*caseUnfold($0195) = ?caseUnfoldTable + $0471
*caseUnfold($01F7) = ?caseUnfoldTable + $0474
*caseUnfold($01BF) = ?caseUnfoldTable + $0477
*caseUnfold($01F8) = ?caseUnfoldTable + $047A
*caseUnfold($01F9) = ?caseUnfoldTable + $047D
*caseUnfold($01FA) = ?caseUnfoldTable + $0480
*caseUnfold($01FB) = ?caseUnfoldTable + $0483
*caseUnfold($01FC) = ?caseUnfoldTable + $0486
*caseUnfold($01FD) = ?caseUnfoldTable + $0489
*caseUnfold($01FE) = ?caseUnfoldTable + $048C
*caseUnfold($01FF) = ?caseUnfoldTable + $048F
*caseUnfold($0200) = ?caseUnfoldTable + $0492
*caseUnfold($0201) = ?caseUnfoldTable + $0495
*caseUnfold($0202) = ?caseUnfoldTable + $0498
*caseUnfold($0203) = ?caseUnfoldTable + $049B
*caseUnfold($0204) = ?caseUnfoldTable + $049E
*caseUnfold($0205) = ?caseUnfoldTable + $04A1
*caseUnfold($0206) = ?caseUnfoldTable + $04A4
*caseUnfold($0207) = ?caseUnfoldTable + $04A7
*caseUnfold($0208) = ?caseUnfoldTable + $04AA
*caseUnfold($0209) = ?caseUnfoldTable + $04AD
*caseUnfold($020A) = ?caseUnfoldTable + $04B0
*caseUnfold($020B) = ?caseUnfoldTable + $04B3
*caseUnfold($020C) = ?caseUnfoldTable + $04B6
*caseUnfold($020D) = ?caseUnfoldTable + $04B9
*caseUnfold($020E) = ?caseUnfoldTable + $04BC
*caseUnfold($020F) = ?caseUnfoldTable + $04BF
*caseUnfold($0210) = ?caseUnfoldTable + $04C2
*caseUnfold($0211) = ?caseUnfoldTable + $04C5
*caseUnfold($0212) = ?caseUnfoldTable + $04C8
*caseUnfold($0213) = ?caseUnfoldTable + $04CB
*caseUnfold($0214) = ?caseUnfoldTable + $04CE
*caseUnfold($0215) = ?caseUnfoldTable + $04D1
*caseUnfold($0216) = ?caseUnfoldTable + $04D4
*caseUnfold($0217) = ?caseUnfoldTable + $04D7
*caseUnfold($0218) = ?caseUnfoldTable + $04DA
*caseUnfold($0219) = ?caseUnfoldTable + $04DD
*caseUnfold($021A) = ?caseUnfoldTable + $04E0
*caseUnfold($021B) = ?caseUnfoldTable + $04E3
*caseUnfold($021C) = ?caseUnfoldTable + $04E6
*caseUnfold($021D) = ?caseUnfoldTable + $04E9
*caseUnfold($021E) = ?caseUnfoldTable + $04EC
*caseUnfold($021F) = ?caseUnfoldTable + $04EF
*caseUnfold($0220) = ?caseUnfoldTable + $04F2
*caseUnfold($019E) = ?caseUnfoldTable + $04F5
*caseUnfold($0222) = ?caseUnfoldTable + $04F8
*caseUnfold($0223) = ?caseUnfoldTable + $04FB
*caseUnfold($0224) = ?caseUnfoldTable + $04FE
*caseUnfold($0225) = ?caseUnfoldTable + $0501
*caseUnfold($0226) = ?caseUnfoldTable + $0504
*caseUnfold($0227) = ?caseUnfoldTable + $0507
*caseUnfold($0228) = ?caseUnfoldTable + $050A
*caseUnfold($0229) = ?caseUnfoldTable + $050D
*caseUnfold($022A) = ?caseUnfoldTable + $0510
*caseUnfold($022B) = ?caseUnfoldTable + $0513
*caseUnfold($022C) = ?caseUnfoldTable + $0516
*caseUnfold($022D) = ?caseUnfoldTable + $0519
*caseUnfold($022E) = ?caseUnfoldTable + $051C
*caseUnfold($022F) = ?caseUnfoldTable + $051F
*caseUnfold($0230) = ?caseUnfoldTable + $0522
*caseUnfold($0231) = ?caseUnfoldTable + $0525
*caseUnfold($0232) = ?caseUnfoldTable + $0528
*caseUnfold($0233) = ?caseUnfoldTable + $052B
*caseUnfold($023A) = ?caseUnfoldTable + $052E
*caseUnfold($2C65) = ?caseUnfoldTable + $0531
*caseUnfold($023B) = ?caseUnfoldTable + $0534
*caseUnfold($023C) = ?caseUnfoldTable + $0537
*caseUnfold($023D) = ?caseUnfoldTable + $053A
*caseUnfold($019A) = ?caseUnfoldTable + $053D
*caseUnfold($023E) = ?caseUnfoldTable + $0540
*caseUnfold($2C66) = ?caseUnfoldTable + $0543
*caseUnfold($0241) = ?caseUnfoldTable + $0546
*caseUnfold($0242) = ?caseUnfoldTable + $0549
*caseUnfold($0243) = ?caseUnfoldTable + $054C
*caseUnfold($0180) = ?caseUnfoldTable + $054F
*caseUnfold($0244) = ?caseUnfoldTable + $0552
*caseUnfold($0289) = ?caseUnfoldTable + $0555
*caseUnfold($0245) = ?caseUnfoldTable + $0558
*caseUnfold($028C) = ?caseUnfoldTable + $055B
*caseUnfold($0246) = ?caseUnfoldTable + $055E
*caseUnfold($0247) = ?caseUnfoldTable + $0561
*caseUnfold($0248) = ?caseUnfoldTable + $0564
*caseUnfold($0249) = ?caseUnfoldTable + $0567
*caseUnfold($024A) = ?caseUnfoldTable + $056A
*caseUnfold($024B) = ?caseUnfoldTable + $056D
*caseUnfold($024C) = ?caseUnfoldTable + $0570
*caseUnfold($024D) = ?caseUnfoldTable + $0573
*caseUnfold($024E) = ?caseUnfoldTable + $0576
*caseUnfold($024F) = ?caseUnfoldTable + $0579
*caseUnfold($0345) = ?caseUnfoldTable + $057C
*caseUnfold($03B9) = ?caseUnfoldTable + $0583
*caseUnfold($1FBE) = ?caseUnfoldTable + $058A
*caseUnfold($0399) = ?caseUnfoldTable + $0591
*caseUnfold($0370) = ?caseUnfoldTable + $0598
*caseUnfold($0371) = ?caseUnfoldTable + $059B
*caseUnfold($0372) = ?caseUnfoldTable + $059E
*caseUnfold($0373) = ?caseUnfoldTable + $05A1
*caseUnfold($0376) = ?caseUnfoldTable + $05A4
*caseUnfold($0377) = ?caseUnfoldTable + $05A7
*caseUnfold($037F) = ?caseUnfoldTable + $05AA
*caseUnfold($03F3) = ?caseUnfoldTable + $05AD
*caseUnfold($0386) = ?caseUnfoldTable + $05B0
*caseUnfold($03AC) = ?caseUnfoldTable + $05B3
*caseUnfold($0388) = ?caseUnfoldTable + $05B6
*caseUnfold($03AD) = ?caseUnfoldTable + $05B9
*caseUnfold($0389) = ?caseUnfoldTable + $05BC
*caseUnfold($03AE) = ?caseUnfoldTable + $05BF
*caseUnfold($038A) = ?caseUnfoldTable + $05C2
*caseUnfold($03AF) = ?caseUnfoldTable + $05C5
*caseUnfold($038C) = ?caseUnfoldTable + $05C8
*caseUnfold($03CC) = ?caseUnfoldTable + $05CB
*caseUnfold($038E) = ?caseUnfoldTable + $05CE
*caseUnfold($03CD) = ?caseUnfoldTable + $05D1
*caseUnfold($038F) = ?caseUnfoldTable + $05D4
*caseUnfold($03CE) = ?caseUnfoldTable + $05D7
*caseUnfold($0391) = ?caseUnfoldTable + $05DA
*caseUnfold($03B1) = ?caseUnfoldTable + $05DD
*caseUnfold($0392) = ?caseUnfoldTable + $05E0
*caseUnfold($03B2) = ?caseUnfoldTable + $05E5
*caseUnfold($03D0) = ?caseUnfoldTable + $05EA
*caseUnfold($0393) = ?caseUnfoldTable + $05EF
*caseUnfold($03B3) = ?caseUnfoldTable + $05F2
*caseUnfold($0394) = ?caseUnfoldTable + $05F5
*caseUnfold($03B4) = ?caseUnfoldTable + $05F8
*caseUnfold($0395) = ?caseUnfoldTable + $05FB
*caseUnfold($03B5) = ?caseUnfoldTable + $0600
*caseUnfold($03F5) = ?caseUnfoldTable + $0605
*caseUnfold($0396) = ?caseUnfoldTable + $060A
*caseUnfold($03B6) = ?caseUnfoldTable + $060D
*caseUnfold($0397) = ?caseUnfoldTable + $0610
*caseUnfold($03B7) = ?caseUnfoldTable + $0613
*caseUnfold($0398) = ?caseUnfoldTable + $0616
*caseUnfold($03B8) = ?caseUnfoldTable + $061D
*caseUnfold($03F4) = ?caseUnfoldTable + $0624
*caseUnfold($03D1) = ?caseUnfoldTable + $062B
*caseUnfold($039A) = ?caseUnfoldTable + $0632
*caseUnfold($03BA) = ?caseUnfoldTable + $0637
*caseUnfold($03F0) = ?caseUnfoldTable + $063C
*caseUnfold($039B) = ?caseUnfoldTable + $0641
*caseUnfold($03BB) = ?caseUnfoldTable + $0644
*caseUnfold($039D) = ?caseUnfoldTable + $0647
*caseUnfold($03BD) = ?caseUnfoldTable + $064A
*caseUnfold($039E) = ?caseUnfoldTable + $064D
*caseUnfold($03BE) = ?caseUnfoldTable + $0650
*caseUnfold($039F) = ?caseUnfoldTable + $0653
*caseUnfold($03BF) = ?caseUnfoldTable + $0656
*caseUnfold($03A0) = ?caseUnfoldTable + $0659
*caseUnfold($03C0) = ?caseUnfoldTable + $065E
*caseUnfold($03D6) = ?caseUnfoldTable + $0663
*caseUnfold($03A1) = ?caseUnfoldTable + $0668
*caseUnfold($03C1) = ?caseUnfoldTable + $066D
*caseUnfold($03F1) = ?caseUnfoldTable + $0672
*caseUnfold($03A3) = ?caseUnfoldTable + $0677
*caseUnfold($03C3) = ?caseUnfoldTable + $067C
*caseUnfold($03C2) = ?caseUnfoldTable + $0681
*caseUnfold($03A4) = ?caseUnfoldTable + $0686
*caseUnfold($03C4) = ?caseUnfoldTable + $0689
*caseUnfold($03A5) = ?caseUnfoldTable + $068C
*caseUnfold($03C5) = ?caseUnfoldTable + $068F
*caseUnfold($03A6) = ?caseUnfoldTable + $0692
*caseUnfold($03C6) = ?caseUnfoldTable + $0697
*caseUnfold($03D5) = ?caseUnfoldTable + $069C
*caseUnfold($03A7) = ?caseUnfoldTable + $06A1
*caseUnfold($03C7) = ?caseUnfoldTable + $06A4
*caseUnfold($03A8) = ?caseUnfoldTable + $06A7
*caseUnfold($03C8) = ?caseUnfoldTable + $06AA
*caseUnfold($03A9) = ?caseUnfoldTable + $06AD
*caseUnfold($03C9) = ?caseUnfoldTable + $06B2
*caseUnfold($2126) = ?caseUnfoldTable + $06B7
*caseUnfold($03AA) = ?caseUnfoldTable + $06BC
*caseUnfold($03CA) = ?caseUnfoldTable + $06BF
*caseUnfold($03AB) = ?caseUnfoldTable + $06C2
*caseUnfold($03CB) = ?caseUnfoldTable + $06C5
*caseUnfold($03CF) = ?caseUnfoldTable + $06C8
*caseUnfold($03D7) = ?caseUnfoldTable + $06CB
*caseUnfold($03D8) = ?caseUnfoldTable + $06CE
*caseUnfold($03D9) = ?caseUnfoldTable + $06D1
*caseUnfold($03DA) = ?caseUnfoldTable + $06D4
*caseUnfold($03DB) = ?caseUnfoldTable + $06D7
*caseUnfold($03DC) = ?caseUnfoldTable + $06DA
*caseUnfold($03DD) = ?caseUnfoldTable + $06DD
*caseUnfold($03DE) = ?caseUnfoldTable + $06E0
*caseUnfold($03DF) = ?caseUnfoldTable + $06E3
*caseUnfold($03E0) = ?caseUnfoldTable + $06E6
*caseUnfold($03E1) = ?caseUnfoldTable + $06E9
*caseUnfold($03E2) = ?caseUnfoldTable + $06EC
*caseUnfold($03E3) = ?caseUnfoldTable + $06EF
*caseUnfold($03E4) = ?caseUnfoldTable + $06F2
*caseUnfold($03E5) = ?caseUnfoldTable + $06F5
*caseUnfold($03E6) = ?caseUnfoldTable + $06F8
*caseUnfold($03E7) = ?caseUnfoldTable + $06FB
*caseUnfold($03E8) = ?caseUnfoldTable + $06FE
*caseUnfold($03E9) = ?caseUnfoldTable + $0701
*caseUnfold($03EA) = ?caseUnfoldTable + $0704
*caseUnfold($03EB) = ?caseUnfoldTable + $0707
*caseUnfold($03EC) = ?caseUnfoldTable + $070A
*caseUnfold($03ED) = ?caseUnfoldTable + $070D
*caseUnfold($03EE) = ?caseUnfoldTable + $0710
*caseUnfold($03EF) = ?caseUnfoldTable + $0713
*caseUnfold($03F7) = ?caseUnfoldTable + $0716
*caseUnfold($03F8) = ?caseUnfoldTable + $0719
*caseUnfold($03F9) = ?caseUnfoldTable + $071C
*caseUnfold($03F2) = ?caseUnfoldTable + $071F
*caseUnfold($03FA) = ?caseUnfoldTable + $0722
*caseUnfold($03FB) = ?caseUnfoldTable + $0725
*caseUnfold($03FD) = ?caseUnfoldTable + $0728
*caseUnfold($037B) = ?caseUnfoldTable + $072B
*caseUnfold($03FE) = ?caseUnfoldTable + $072E
*caseUnfold($037C) = ?caseUnfoldTable + $0731
*caseUnfold($03FF) = ?caseUnfoldTable + $0734
*caseUnfold($037D) = ?caseUnfoldTable + $0737
*caseUnfold($0400) = ?caseUnfoldTable + $073A
*caseUnfold($0450) = ?caseUnfoldTable + $073D
*caseUnfold($0401) = ?caseUnfoldTable + $0740
*caseUnfold($0451) = ?caseUnfoldTable + $0743
*caseUnfold($0402) = ?caseUnfoldTable + $0746
*caseUnfold($0452) = ?caseUnfoldTable + $0749
*caseUnfold($0403) = ?caseUnfoldTable + $074C
*caseUnfold($0453) = ?caseUnfoldTable + $074F
*caseUnfold($0404) = ?caseUnfoldTable + $0752
*caseUnfold($0454) = ?caseUnfoldTable + $0755
*caseUnfold($0405) = ?caseUnfoldTable + $0758
*caseUnfold($0455) = ?caseUnfoldTable + $075B
*caseUnfold($0406) = ?caseUnfoldTable + $075E
*caseUnfold($0456) = ?caseUnfoldTable + $0761
*caseUnfold($0407) = ?caseUnfoldTable + $0764
*caseUnfold($0457) = ?caseUnfoldTable + $0767
*caseUnfold($0408) = ?caseUnfoldTable + $076A
*caseUnfold($0458) = ?caseUnfoldTable + $076D
*caseUnfold($0409) = ?caseUnfoldTable + $0770
*caseUnfold($0459) = ?caseUnfoldTable + $0773
*caseUnfold($040A) = ?caseUnfoldTable + $0776
*caseUnfold($045A) = ?caseUnfoldTable + $0779
*caseUnfold($040B) = ?caseUnfoldTable + $077C
*caseUnfold($045B) = ?caseUnfoldTable + $077F
*caseUnfold($040C) = ?caseUnfoldTable + $0782
*caseUnfold($045C) = ?caseUnfoldTable + $0785
*caseUnfold($040D) = ?caseUnfoldTable + $0788
*caseUnfold($045D) = ?caseUnfoldTable + $078B
*caseUnfold($040E) = ?caseUnfoldTable + $078E
*caseUnfold($045E) = ?caseUnfoldTable + $0791
*caseUnfold($040F) = ?caseUnfoldTable + $0794
*caseUnfold($045F) = ?caseUnfoldTable + $0797
*caseUnfold($0410) = ?caseUnfoldTable + $079A
*caseUnfold($0430) = ?caseUnfoldTable + $079D
*caseUnfold($0411) = ?caseUnfoldTable + $07A0
*caseUnfold($0431) = ?caseUnfoldTable + $07A3
*caseUnfold($0412) = ?caseUnfoldTable + $07A6
*caseUnfold($0432) = ?caseUnfoldTable + $07AB
*caseUnfold($1C80) = ?caseUnfoldTable + $07B0
*caseUnfold($0413) = ?caseUnfoldTable + $07B5
*caseUnfold($0433) = ?caseUnfoldTable + $07B8
*caseUnfold($0414) = ?caseUnfoldTable + $07BB
*caseUnfold($0434) = ?caseUnfoldTable + $07C0
*caseUnfold($1C81) = ?caseUnfoldTable + $07C5
*caseUnfold($0415) = ?caseUnfoldTable + $07CA
*caseUnfold($0435) = ?caseUnfoldTable + $07CD
*caseUnfold($0416) = ?caseUnfoldTable + $07D0
*caseUnfold($0436) = ?caseUnfoldTable + $07D3
*caseUnfold($0417) = ?caseUnfoldTable + $07D6
*caseUnfold($0437) = ?caseUnfoldTable + $07D9
*caseUnfold($0418) = ?caseUnfoldTable + $07DC
*caseUnfold($0438) = ?caseUnfoldTable + $07DF
*caseUnfold($0419) = ?caseUnfoldTable + $07E2
*caseUnfold($0439) = ?caseUnfoldTable + $07E5
*caseUnfold($041A) = ?caseUnfoldTable + $07E8
*caseUnfold($043A) = ?caseUnfoldTable + $07EB
*caseUnfold($041B) = ?caseUnfoldTable + $07EE
*caseUnfold($043B) = ?caseUnfoldTable + $07F1
*caseUnfold($041C) = ?caseUnfoldTable + $07F4
*caseUnfold($043C) = ?caseUnfoldTable + $07F7
*caseUnfold($041D) = ?caseUnfoldTable + $07FA
*caseUnfold($043D) = ?caseUnfoldTable + $07FD
*caseUnfold($041E) = ?caseUnfoldTable + $0800
*caseUnfold($043E) = ?caseUnfoldTable + $0805
*caseUnfold($1C82) = ?caseUnfoldTable + $080A
*caseUnfold($041F) = ?caseUnfoldTable + $080F
*caseUnfold($043F) = ?caseUnfoldTable + $0812
*caseUnfold($0420) = ?caseUnfoldTable + $0815
*caseUnfold($0440) = ?caseUnfoldTable + $0818
*caseUnfold($0421) = ?caseUnfoldTable + $081B
*caseUnfold($0441) = ?caseUnfoldTable + $0820
*caseUnfold($1C83) = ?caseUnfoldTable + $0825
*caseUnfold($0422) = ?caseUnfoldTable + $082A
*caseUnfold($0442) = ?caseUnfoldTable + $0831
*caseUnfold($1C85) = ?caseUnfoldTable + $0838
*caseUnfold($1C84) = ?caseUnfoldTable + $083F
*caseUnfold($0423) = ?caseUnfoldTable + $0846
*caseUnfold($0443) = ?caseUnfoldTable + $0849
*caseUnfold($0424) = ?caseUnfoldTable + $084C
*caseUnfold($0444) = ?caseUnfoldTable + $084F
*caseUnfold($0425) = ?caseUnfoldTable + $0852
*caseUnfold($0445) = ?caseUnfoldTable + $0855
*caseUnfold($0426) = ?caseUnfoldTable + $0858
*caseUnfold($0446) = ?caseUnfoldTable + $085B
*caseUnfold($0427) = ?caseUnfoldTable + $085E
*caseUnfold($0447) = ?caseUnfoldTable + $0861
*caseUnfold($0428) = ?caseUnfoldTable + $0864
*caseUnfold($0448) = ?caseUnfoldTable + $0867
*caseUnfold($0429) = ?caseUnfoldTable + $086A
*caseUnfold($0449) = ?caseUnfoldTable + $086D
*caseUnfold($042A) = ?caseUnfoldTable + $0870
*caseUnfold($044A) = ?caseUnfoldTable + $0875
*caseUnfold($1C86) = ?caseUnfoldTable + $087A
*caseUnfold($042B) = ?caseUnfoldTable + $087F
*caseUnfold($044B) = ?caseUnfoldTable + $0882
*caseUnfold($042C) = ?caseUnfoldTable + $0885
*caseUnfold($044C) = ?caseUnfoldTable + $0888
*caseUnfold($042D) = ?caseUnfoldTable + $088B
*caseUnfold($044D) = ?caseUnfoldTable + $088E
*caseUnfold($042E) = ?caseUnfoldTable + $0891
*caseUnfold($044E) = ?caseUnfoldTable + $0894
*caseUnfold($042F) = ?caseUnfoldTable + $0897
*caseUnfold($044F) = ?caseUnfoldTable + $089A
*caseUnfold($0460) = ?caseUnfoldTable + $089D
*caseUnfold($0461) = ?caseUnfoldTable + $08A0
*caseUnfold($0462) = ?caseUnfoldTable + $08A3
*caseUnfold($0463) = ?caseUnfoldTable + $08A8
*caseUnfold($1C87) = ?caseUnfoldTable + $08AD
*caseUnfold($0464) = ?caseUnfoldTable + $08B2
*caseUnfold($0465) = ?caseUnfoldTable + $08B5
*caseUnfold($0466) = ?caseUnfoldTable + $08B8
*caseUnfold($0467) = ?caseUnfoldTable + $08BB
*caseUnfold($0468) = ?caseUnfoldTable + $08BE
*caseUnfold($0469) = ?caseUnfoldTable + $08C1
*caseUnfold($046A) = ?caseUnfoldTable + $08C4
*caseUnfold($046B) = ?caseUnfoldTable + $08C7
*caseUnfold($046C) = ?caseUnfoldTable + $08CA
*caseUnfold($046D) = ?caseUnfoldTable + $08CD
*caseUnfold($046E) = ?caseUnfoldTable + $08D0
*caseUnfold($046F) = ?caseUnfoldTable + $08D3
*caseUnfold($0470) = ?caseUnfoldTable + $08D6
*caseUnfold($0471) = ?caseUnfoldTable + $08D9
*caseUnfold($0472) = ?caseUnfoldTable + $08DC
*caseUnfold($0473) = ?caseUnfoldTable + $08DF
*caseUnfold($0474) = ?caseUnfoldTable + $08E2
*caseUnfold($0475) = ?caseUnfoldTable + $08E5
*caseUnfold($0476) = ?caseUnfoldTable + $08E8
*caseUnfold($0477) = ?caseUnfoldTable + $08EB
*caseUnfold($0478) = ?caseUnfoldTable + $08EE
*caseUnfold($0479) = ?caseUnfoldTable + $08F1
*caseUnfold($047A) = ?caseUnfoldTable + $08F4
*caseUnfold($047B) = ?caseUnfoldTable + $08F7
*caseUnfold($047C) = ?caseUnfoldTable + $08FA
*caseUnfold($047D) = ?caseUnfoldTable + $08FD
*caseUnfold($047E) = ?caseUnfoldTable + $0900
*caseUnfold($047F) = ?caseUnfoldTable + $0903
*caseUnfold($0480) = ?caseUnfoldTable + $0906
*caseUnfold($0481) = ?caseUnfoldTable + $0909
*caseUnfold($048A) = ?caseUnfoldTable + $090C
*caseUnfold($048B) = ?caseUnfoldTable + $090F
*caseUnfold($048C) = ?caseUnfoldTable + $0912
*caseUnfold($048D) = ?caseUnfoldTable + $0915
*caseUnfold($048E) = ?caseUnfoldTable + $0918
*caseUnfold($048F) = ?caseUnfoldTable + $091B
*caseUnfold($0490) = ?caseUnfoldTable + $091E
*caseUnfold($0491) = ?caseUnfoldTable + $0921
*caseUnfold($0492) = ?caseUnfoldTable + $0924
*caseUnfold($0493) = ?caseUnfoldTable + $0927
*caseUnfold($0494) = ?caseUnfoldTable + $092A
*caseUnfold($0495) = ?caseUnfoldTable + $092D
*caseUnfold($0496) = ?caseUnfoldTable + $0930
*caseUnfold($0497) = ?caseUnfoldTable + $0933
*caseUnfold($0498) = ?caseUnfoldTable + $0936
*caseUnfold($0499) = ?caseUnfoldTable + $0939
*caseUnfold($049A) = ?caseUnfoldTable + $093C
*caseUnfold($049B) = ?caseUnfoldTable + $093F
*caseUnfold($049C) = ?caseUnfoldTable + $0942
*caseUnfold($049D) = ?caseUnfoldTable + $0945
*caseUnfold($049E) = ?caseUnfoldTable + $0948
*caseUnfold($049F) = ?caseUnfoldTable + $094B
*caseUnfold($04A0) = ?caseUnfoldTable + $094E
*caseUnfold($04A1) = ?caseUnfoldTable + $0951
*caseUnfold($04A2) = ?caseUnfoldTable + $0954
*caseUnfold($04A3) = ?caseUnfoldTable + $0957
*caseUnfold($04A4) = ?caseUnfoldTable + $095A
*caseUnfold($04A5) = ?caseUnfoldTable + $095D
*caseUnfold($04A6) = ?caseUnfoldTable + $0960
*caseUnfold($04A7) = ?caseUnfoldTable + $0963
*caseUnfold($04A8) = ?caseUnfoldTable + $0966
*caseUnfold($04A9) = ?caseUnfoldTable + $0969
*caseUnfold($04AA) = ?caseUnfoldTable + $096C
*caseUnfold($04AB) = ?caseUnfoldTable + $096F
*caseUnfold($04AC) = ?caseUnfoldTable + $0972
*caseUnfold($04AD) = ?caseUnfoldTable + $0975
*caseUnfold($04AE) = ?caseUnfoldTable + $0978
*caseUnfold($04AF) = ?caseUnfoldTable + $097B
*caseUnfold($04B0) = ?caseUnfoldTable + $097E
*caseUnfold($04B1) = ?caseUnfoldTable + $0981
*caseUnfold($04B2) = ?caseUnfoldTable + $0984
*caseUnfold($04B3) = ?caseUnfoldTable + $0987
*caseUnfold($04B4) = ?caseUnfoldTable + $098A
*caseUnfold($04B5) = ?caseUnfoldTable + $098D
*caseUnfold($04B6) = ?caseUnfoldTable + $0990
*caseUnfold($04B7) = ?caseUnfoldTable + $0993
*caseUnfold($04B8) = ?caseUnfoldTable + $0996
*caseUnfold($04B9) = ?caseUnfoldTable + $0999
*caseUnfold($04BA) = ?caseUnfoldTable + $099C
*caseUnfold($04BB) = ?caseUnfoldTable + $099F
*caseUnfold($04BC) = ?caseUnfoldTable + $09A2
*caseUnfold($04BD) = ?caseUnfoldTable + $09A5
*caseUnfold($04BE) = ?caseUnfoldTable + $09A8
*caseUnfold($04BF) = ?caseUnfoldTable + $09AB
*caseUnfold($04C0) = ?caseUnfoldTable + $09AE
*caseUnfold($04CF) = ?caseUnfoldTable + $09B1
*caseUnfold($04C1) = ?caseUnfoldTable + $09B4
*caseUnfold($04C2) = ?caseUnfoldTable + $09B7
*caseUnfold($04C3) = ?caseUnfoldTable + $09BA
*caseUnfold($04C4) = ?caseUnfoldTable + $09BD
*caseUnfold($04C5) = ?caseUnfoldTable + $09C0
*caseUnfold($04C6) = ?caseUnfoldTable + $09C3
*caseUnfold($04C7) = ?caseUnfoldTable + $09C6
*caseUnfold($04C8) = ?caseUnfoldTable + $09C9
*caseUnfold($04C9) = ?caseUnfoldTable + $09CC
*caseUnfold($04CA) = ?caseUnfoldTable + $09CF
*caseUnfold($04CB) = ?caseUnfoldTable + $09D2
*caseUnfold($04CC) = ?caseUnfoldTable + $09D5
*caseUnfold($04CD) = ?caseUnfoldTable + $09D8
*caseUnfold($04CE) = ?caseUnfoldTable + $09DB
*caseUnfold($04D0) = ?caseUnfoldTable + $09DE
*caseUnfold($04D1) = ?caseUnfoldTable + $09E1
*caseUnfold($04D2) = ?caseUnfoldTable + $09E4
*caseUnfold($04D3) = ?caseUnfoldTable + $09E7
*caseUnfold($04D4) = ?caseUnfoldTable + $09EA
*caseUnfold($04D5) = ?caseUnfoldTable + $09ED
*caseUnfold($04D6) = ?caseUnfoldTable + $09F0
*caseUnfold($04D7) = ?caseUnfoldTable + $09F3
*caseUnfold($04D8) = ?caseUnfoldTable + $09F6
*caseUnfold($04D9) = ?caseUnfoldTable + $09F9
*caseUnfold($04DA) = ?caseUnfoldTable + $09FC
*caseUnfold($04DB) = ?caseUnfoldTable + $09FF
*caseUnfold($04DC) = ?caseUnfoldTable + $0A02
*caseUnfold($04DD) = ?caseUnfoldTable + $0A05
*caseUnfold($04DE) = ?caseUnfoldTable + $0A08
*caseUnfold($04DF) = ?caseUnfoldTable + $0A0B
*caseUnfold($04E0) = ?caseUnfoldTable + $0A0E
*caseUnfold($04E1) = ?caseUnfoldTable + $0A11
*caseUnfold($04E2) = ?caseUnfoldTable + $0A14
*caseUnfold($04E3) = ?caseUnfoldTable + $0A17
*caseUnfold($04E4) = ?caseUnfoldTable + $0A1A
*caseUnfold($04E5) = ?caseUnfoldTable + $0A1D
*caseUnfold($04E6) = ?caseUnfoldTable + $0A20
*caseUnfold($04E7) = ?caseUnfoldTable + $0A23
*caseUnfold($04E8) = ?caseUnfoldTable + $0A26
*caseUnfold($04E9) = ?caseUnfoldTable + $0A29
*caseUnfold($04EA) = ?caseUnfoldTable + $0A2C
*caseUnfold($04EB) = ?caseUnfoldTable + $0A2F
*caseUnfold($04EC) = ?caseUnfoldTable + $0A32
*caseUnfold($04ED) = ?caseUnfoldTable + $0A35
*caseUnfold($04EE) = ?caseUnfoldTable + $0A38
*caseUnfold($04EF) = ?caseUnfoldTable + $0A3B
*caseUnfold($04F0) = ?caseUnfoldTable + $0A3E
*caseUnfold($04F1) = ?caseUnfoldTable + $0A41
*caseUnfold($04F2) = ?caseUnfoldTable + $0A44
*caseUnfold($04F3) = ?caseUnfoldTable + $0A47
*caseUnfold($04F4) = ?caseUnfoldTable + $0A4A
*caseUnfold($04F5) = ?caseUnfoldTable + $0A4D
*caseUnfold($04F6) = ?caseUnfoldTable + $0A50
*caseUnfold($04F7) = ?caseUnfoldTable + $0A53
*caseUnfold($04F8) = ?caseUnfoldTable + $0A56
*caseUnfold($04F9) = ?caseUnfoldTable + $0A59
*caseUnfold($04FA) = ?caseUnfoldTable + $0A5C
*caseUnfold($04FB) = ?caseUnfoldTable + $0A5F
*caseUnfold($04FC) = ?caseUnfoldTable + $0A62
*caseUnfold($04FD) = ?caseUnfoldTable + $0A65
*caseUnfold($04FE) = ?caseUnfoldTable + $0A68
*caseUnfold($04FF) = ?caseUnfoldTable + $0A6B
*caseUnfold($0500) = ?caseUnfoldTable + $0A6E
*caseUnfold($0501) = ?caseUnfoldTable + $0A71
*caseUnfold($0502) = ?caseUnfoldTable + $0A74
*caseUnfold($0503) = ?caseUnfoldTable + $0A77
*caseUnfold($0504) = ?caseUnfoldTable + $0A7A
*caseUnfold($0505) = ?caseUnfoldTable + $0A7D
*caseUnfold($0506) = ?caseUnfoldTable + $0A80
*caseUnfold($0507) = ?caseUnfoldTable + $0A83
*caseUnfold($0508) = ?caseUnfoldTable + $0A86
*caseUnfold($0509) = ?caseUnfoldTable + $0A89
*caseUnfold($050A) = ?caseUnfoldTable + $0A8C
*caseUnfold($050B) = ?caseUnfoldTable + $0A8F
*caseUnfold($050C) = ?caseUnfoldTable + $0A92
*caseUnfold($050D) = ?caseUnfoldTable + $0A95
*caseUnfold($050E) = ?caseUnfoldTable + $0A98
*caseUnfold($050F) = ?caseUnfoldTable + $0A9B
*caseUnfold($0510) = ?caseUnfoldTable + $0A9E
*caseUnfold($0511) = ?caseUnfoldTable + $0AA1
*caseUnfold($0512) = ?caseUnfoldTable + $0AA4
*caseUnfold($0513) = ?caseUnfoldTable + $0AA7
*caseUnfold($0514) = ?caseUnfoldTable + $0AAA
*caseUnfold($0515) = ?caseUnfoldTable + $0AAD
*caseUnfold($0516) = ?caseUnfoldTable + $0AB0
*caseUnfold($0517) = ?caseUnfoldTable + $0AB3
*caseUnfold($0518) = ?caseUnfoldTable + $0AB6
*caseUnfold($0519) = ?caseUnfoldTable + $0AB9
*caseUnfold($051A) = ?caseUnfoldTable + $0ABC
*caseUnfold($051B) = ?caseUnfoldTable + $0ABF
*caseUnfold($051C) = ?caseUnfoldTable + $0AC2
*caseUnfold($051D) = ?caseUnfoldTable + $0AC5
*caseUnfold($051E) = ?caseUnfoldTable + $0AC8
*caseUnfold($051F) = ?caseUnfoldTable + $0ACB
*caseUnfold($0520) = ?caseUnfoldTable + $0ACE
*caseUnfold($0521) = ?caseUnfoldTable + $0AD1
*caseUnfold($0522) = ?caseUnfoldTable + $0AD4
*caseUnfold($0523) = ?caseUnfoldTable + $0AD7
*caseUnfold($0524) = ?caseUnfoldTable + $0ADA
*caseUnfold($0525) = ?caseUnfoldTable + $0ADD
*caseUnfold($0526) = ?caseUnfoldTable + $0AE0
*caseUnfold($0527) = ?caseUnfoldTable + $0AE3
*caseUnfold($0528) = ?caseUnfoldTable + $0AE6
*caseUnfold($0529) = ?caseUnfoldTable + $0AE9
*caseUnfold($052A) = ?caseUnfoldTable + $0AEC
*caseUnfold($052B) = ?caseUnfoldTable + $0AEF
*caseUnfold($052C) = ?caseUnfoldTable + $0AF2
*caseUnfold($052D) = ?caseUnfoldTable + $0AF5
*caseUnfold($052E) = ?caseUnfoldTable + $0AF8
*caseUnfold($052F) = ?caseUnfoldTable + $0AFB
*caseUnfold($0531) = ?caseUnfoldTable + $0AFE
*caseUnfold($0561) = ?caseUnfoldTable + $0B01
*caseUnfold($0532) = ?caseUnfoldTable + $0B04
*caseUnfold($0562) = ?caseUnfoldTable + $0B07
*caseUnfold($0533) = ?caseUnfoldTable + $0B0A
*caseUnfold($0563) = ?caseUnfoldTable + $0B0D
*caseUnfold($0534) = ?caseUnfoldTable + $0B10
*caseUnfold($0564) = ?caseUnfoldTable + $0B13
*caseUnfold($0535) = ?caseUnfoldTable + $0B16
*caseUnfold($0565) = ?caseUnfoldTable + $0B19
*caseUnfold($0536) = ?caseUnfoldTable + $0B1C
*caseUnfold($0566) = ?caseUnfoldTable + $0B1F
*caseUnfold($0537) = ?caseUnfoldTable + $0B22
*caseUnfold($0567) = ?caseUnfoldTable + $0B25
*caseUnfold($0538) = ?caseUnfoldTable + $0B28
*caseUnfold($0568) = ?caseUnfoldTable + $0B2B
*caseUnfold($0539) = ?caseUnfoldTable + $0B2E
*caseUnfold($0569) = ?caseUnfoldTable + $0B31
*caseUnfold($053A) = ?caseUnfoldTable + $0B34
*caseUnfold($056A) = ?caseUnfoldTable + $0B37
*caseUnfold($053B) = ?caseUnfoldTable + $0B3A
*caseUnfold($056B) = ?caseUnfoldTable + $0B3D
*caseUnfold($053C) = ?caseUnfoldTable + $0B40
*caseUnfold($056C) = ?caseUnfoldTable + $0B43
*caseUnfold($053D) = ?caseUnfoldTable + $0B46
*caseUnfold($056D) = ?caseUnfoldTable + $0B49
*caseUnfold($053E) = ?caseUnfoldTable + $0B4C
*caseUnfold($056E) = ?caseUnfoldTable + $0B4F
*caseUnfold($053F) = ?caseUnfoldTable + $0B52
*caseUnfold($056F) = ?caseUnfoldTable + $0B55
*caseUnfold($0540) = ?caseUnfoldTable + $0B58
*caseUnfold($0570) = ?caseUnfoldTable + $0B5B
*caseUnfold($0541) = ?caseUnfoldTable + $0B5E
*caseUnfold($0571) = ?caseUnfoldTable + $0B61
*caseUnfold($0542) = ?caseUnfoldTable + $0B64
*caseUnfold($0572) = ?caseUnfoldTable + $0B67
*caseUnfold($0543) = ?caseUnfoldTable + $0B6A
*caseUnfold($0573) = ?caseUnfoldTable + $0B6D
*caseUnfold($0544) = ?caseUnfoldTable + $0B70
*caseUnfold($0574) = ?caseUnfoldTable + $0B73
*caseUnfold($0545) = ?caseUnfoldTable + $0B76
*caseUnfold($0575) = ?caseUnfoldTable + $0B79
*caseUnfold($0546) = ?caseUnfoldTable + $0B7C
*caseUnfold($0576) = ?caseUnfoldTable + $0B7F
*caseUnfold($0547) = ?caseUnfoldTable + $0B82
*caseUnfold($0577) = ?caseUnfoldTable + $0B85
*caseUnfold($0548) = ?caseUnfoldTable + $0B88
*caseUnfold($0578) = ?caseUnfoldTable + $0B8B
*caseUnfold($0549) = ?caseUnfoldTable + $0B8E
*caseUnfold($0579) = ?caseUnfoldTable + $0B91
*caseUnfold($054A) = ?caseUnfoldTable + $0B94
*caseUnfold($057A) = ?caseUnfoldTable + $0B97
*caseUnfold($054B) = ?caseUnfoldTable + $0B9A
*caseUnfold($057B) = ?caseUnfoldTable + $0B9D
*caseUnfold($054C) = ?caseUnfoldTable + $0BA0
*caseUnfold($057C) = ?caseUnfoldTable + $0BA3
*caseUnfold($054D) = ?caseUnfoldTable + $0BA6
*caseUnfold($057D) = ?caseUnfoldTable + $0BA9
*caseUnfold($054E) = ?caseUnfoldTable + $0BAC
*caseUnfold($057E) = ?caseUnfoldTable + $0BAF
*caseUnfold($054F) = ?caseUnfoldTable + $0BB2
*caseUnfold($057F) = ?caseUnfoldTable + $0BB5
*caseUnfold($0550) = ?caseUnfoldTable + $0BB8
*caseUnfold($0580) = ?caseUnfoldTable + $0BBB
*caseUnfold($0551) = ?caseUnfoldTable + $0BBE
*caseUnfold($0581) = ?caseUnfoldTable + $0BC1
*caseUnfold($0552) = ?caseUnfoldTable + $0BC4
*caseUnfold($0582) = ?caseUnfoldTable + $0BC7
*caseUnfold($0553) = ?caseUnfoldTable + $0BCA
*caseUnfold($0583) = ?caseUnfoldTable + $0BCD
*caseUnfold($0554) = ?caseUnfoldTable + $0BD0
*caseUnfold($0584) = ?caseUnfoldTable + $0BD3
*caseUnfold($0555) = ?caseUnfoldTable + $0BD6
*caseUnfold($0585) = ?caseUnfoldTable + $0BD9
*caseUnfold($0556) = ?caseUnfoldTable + $0BDC
*caseUnfold($0586) = ?caseUnfoldTable + $0BDF
*caseUnfold($10A0) = ?caseUnfoldTable + $0BE2
*caseUnfold($2D00) = ?caseUnfoldTable + $0BE5
*caseUnfold($10A1) = ?caseUnfoldTable + $0BE8
*caseUnfold($2D01) = ?caseUnfoldTable + $0BEB
*caseUnfold($10A2) = ?caseUnfoldTable + $0BEE
*caseUnfold($2D02) = ?caseUnfoldTable + $0BF1
*caseUnfold($10A3) = ?caseUnfoldTable + $0BF4
*caseUnfold($2D03) = ?caseUnfoldTable + $0BF7
*caseUnfold($10A4) = ?caseUnfoldTable + $0BFA
*caseUnfold($2D04) = ?caseUnfoldTable + $0BFD
*caseUnfold($10A5) = ?caseUnfoldTable + $0C00
*caseUnfold($2D05) = ?caseUnfoldTable + $0C03
*caseUnfold($10A6) = ?caseUnfoldTable + $0C06
*caseUnfold($2D06) = ?caseUnfoldTable + $0C09
*caseUnfold($10A7) = ?caseUnfoldTable + $0C0C
*caseUnfold($2D07) = ?caseUnfoldTable + $0C0F
*caseUnfold($10A8) = ?caseUnfoldTable + $0C12
*caseUnfold($2D08) = ?caseUnfoldTable + $0C15
*caseUnfold($10A9) = ?caseUnfoldTable + $0C18
*caseUnfold($2D09) = ?caseUnfoldTable + $0C1B
*caseUnfold($10AA) = ?caseUnfoldTable + $0C1E
*caseUnfold($2D0A) = ?caseUnfoldTable + $0C21
*caseUnfold($10AB) = ?caseUnfoldTable + $0C24
*caseUnfold($2D0B) = ?caseUnfoldTable + $0C27
*caseUnfold($10AC) = ?caseUnfoldTable + $0C2A
*caseUnfold($2D0C) = ?caseUnfoldTable + $0C2D
*caseUnfold($10AD) = ?caseUnfoldTable + $0C30
*caseUnfold($2D0D) = ?caseUnfoldTable + $0C33
*caseUnfold($10AE) = ?caseUnfoldTable + $0C36
*caseUnfold($2D0E) = ?caseUnfoldTable + $0C39
*caseUnfold($10AF) = ?caseUnfoldTable + $0C3C
*caseUnfold($2D0F) = ?caseUnfoldTable + $0C3F
*caseUnfold($10B0) = ?caseUnfoldTable + $0C42
*caseUnfold($2D10) = ?caseUnfoldTable + $0C45
*caseUnfold($10B1) = ?caseUnfoldTable + $0C48
*caseUnfold($2D11) = ?caseUnfoldTable + $0C4B
*caseUnfold($10B2) = ?caseUnfoldTable + $0C4E
*caseUnfold($2D12) = ?caseUnfoldTable + $0C51
*caseUnfold($10B3) = ?caseUnfoldTable + $0C54
*caseUnfold($2D13) = ?caseUnfoldTable + $0C57
*caseUnfold($10B4) = ?caseUnfoldTable + $0C5A
*caseUnfold($2D14) = ?caseUnfoldTable + $0C5D
*caseUnfold($10B5) = ?caseUnfoldTable + $0C60
*caseUnfold($2D15) = ?caseUnfoldTable + $0C63
*caseUnfold($10B6) = ?caseUnfoldTable + $0C66
*caseUnfold($2D16) = ?caseUnfoldTable + $0C69
*caseUnfold($10B7) = ?caseUnfoldTable + $0C6C
*caseUnfold($2D17) = ?caseUnfoldTable + $0C6F
*caseUnfold($10B8) = ?caseUnfoldTable + $0C72
*caseUnfold($2D18) = ?caseUnfoldTable + $0C75
*caseUnfold($10B9) = ?caseUnfoldTable + $0C78
*caseUnfold($2D19) = ?caseUnfoldTable + $0C7B
*caseUnfold($10BA) = ?caseUnfoldTable + $0C7E
*caseUnfold($2D1A) = ?caseUnfoldTable + $0C81
*caseUnfold($10BB) = ?caseUnfoldTable + $0C84
*caseUnfold($2D1B) = ?caseUnfoldTable + $0C87
*caseUnfold($10BC) = ?caseUnfoldTable + $0C8A
*caseUnfold($2D1C) = ?caseUnfoldTable + $0C8D
*caseUnfold($10BD) = ?caseUnfoldTable + $0C90
*caseUnfold($2D1D) = ?caseUnfoldTable + $0C93
*caseUnfold($10BE) = ?caseUnfoldTable + $0C96
*caseUnfold($2D1E) = ?caseUnfoldTable + $0C99
*caseUnfold($10BF) = ?caseUnfoldTable + $0C9C
*caseUnfold($2D1F) = ?caseUnfoldTable + $0C9F
*caseUnfold($10C0) = ?caseUnfoldTable + $0CA2
*caseUnfold($2D20) = ?caseUnfoldTable + $0CA5
*caseUnfold($10C1) = ?caseUnfoldTable + $0CA8
*caseUnfold($2D21) = ?caseUnfoldTable + $0CAB
*caseUnfold($10C2) = ?caseUnfoldTable + $0CAE
*caseUnfold($2D22) = ?caseUnfoldTable + $0CB1
*caseUnfold($10C3) = ?caseUnfoldTable + $0CB4
*caseUnfold($2D23) = ?caseUnfoldTable + $0CB7
*caseUnfold($10C4) = ?caseUnfoldTable + $0CBA
*caseUnfold($2D24) = ?caseUnfoldTable + $0CBD
*caseUnfold($10C5) = ?caseUnfoldTable + $0CC0
*caseUnfold($2D25) = ?caseUnfoldTable + $0CC3
*caseUnfold($10C7) = ?caseUnfoldTable + $0CC6
*caseUnfold($2D27) = ?caseUnfoldTable + $0CC9
*caseUnfold($10CD) = ?caseUnfoldTable + $0CCC
*caseUnfold($2D2D) = ?caseUnfoldTable + $0CCF
*caseUnfold($13F8) = ?caseUnfoldTable + $0CD2
*caseUnfold($13F0) = ?caseUnfoldTable + $0CD5
*caseUnfold($13F9) = ?caseUnfoldTable + $0CD8
*caseUnfold($13F1) = ?caseUnfoldTable + $0CDB
*caseUnfold($13FA) = ?caseUnfoldTable + $0CDE
*caseUnfold($13F2) = ?caseUnfoldTable + $0CE1
*caseUnfold($13FB) = ?caseUnfoldTable + $0CE4
*caseUnfold($13F3) = ?caseUnfoldTable + $0CE7
*caseUnfold($13FC) = ?caseUnfoldTable + $0CEA
*caseUnfold($13F4) = ?caseUnfoldTable + $0CED
*caseUnfold($13FD) = ?caseUnfoldTable + $0CF0
*caseUnfold($13F5) = ?caseUnfoldTable + $0CF3
*caseUnfold($1C88) = ?caseUnfoldTable + $0CF6
*caseUnfold($A64B) = ?caseUnfoldTable + $0CFB
*caseUnfold($A64A) = ?caseUnfoldTable + $0D00
*caseUnfold($1C90) = ?caseUnfoldTable + $0D05
*caseUnfold($10D0) = ?caseUnfoldTable + $0D08
*caseUnfold($1C91) = ?caseUnfoldTable + $0D0B
*caseUnfold($10D1) = ?caseUnfoldTable + $0D0E
*caseUnfold($1C92) = ?caseUnfoldTable + $0D11
*caseUnfold($10D2) = ?caseUnfoldTable + $0D14
*caseUnfold($1C93) = ?caseUnfoldTable + $0D17
*caseUnfold($10D3) = ?caseUnfoldTable + $0D1A
*caseUnfold($1C94) = ?caseUnfoldTable + $0D1D
*caseUnfold($10D4) = ?caseUnfoldTable + $0D20
*caseUnfold($1C95) = ?caseUnfoldTable + $0D23
*caseUnfold($10D5) = ?caseUnfoldTable + $0D26
*caseUnfold($1C96) = ?caseUnfoldTable + $0D29
*caseUnfold($10D6) = ?caseUnfoldTable + $0D2C
*caseUnfold($1C97) = ?caseUnfoldTable + $0D2F
*caseUnfold($10D7) = ?caseUnfoldTable + $0D32
*caseUnfold($1C98) = ?caseUnfoldTable + $0D35
*caseUnfold($10D8) = ?caseUnfoldTable + $0D38
*caseUnfold($1C99) = ?caseUnfoldTable + $0D3B
*caseUnfold($10D9) = ?caseUnfoldTable + $0D3E
*caseUnfold($1C9A) = ?caseUnfoldTable + $0D41
*caseUnfold($10DA) = ?caseUnfoldTable + $0D44
*caseUnfold($1C9B) = ?caseUnfoldTable + $0D47
*caseUnfold($10DB) = ?caseUnfoldTable + $0D4A
*caseUnfold($1C9C) = ?caseUnfoldTable + $0D4D
*caseUnfold($10DC) = ?caseUnfoldTable + $0D50
*caseUnfold($1C9D) = ?caseUnfoldTable + $0D53
*caseUnfold($10DD) = ?caseUnfoldTable + $0D56
*caseUnfold($1C9E) = ?caseUnfoldTable + $0D59
*caseUnfold($10DE) = ?caseUnfoldTable + $0D5C
*caseUnfold($1C9F) = ?caseUnfoldTable + $0D5F
*caseUnfold($10DF) = ?caseUnfoldTable + $0D62
*caseUnfold($1CA0) = ?caseUnfoldTable + $0D65
*caseUnfold($10E0) = ?caseUnfoldTable + $0D68
*caseUnfold($1CA1) = ?caseUnfoldTable + $0D6B
*caseUnfold($10E1) = ?caseUnfoldTable + $0D6E
*caseUnfold($1CA2) = ?caseUnfoldTable + $0D71
*caseUnfold($10E2) = ?caseUnfoldTable + $0D74
*caseUnfold($1CA3) = ?caseUnfoldTable + $0D77
*caseUnfold($10E3) = ?caseUnfoldTable + $0D7A
*caseUnfold($1CA4) = ?caseUnfoldTable + $0D7D
*caseUnfold($10E4) = ?caseUnfoldTable + $0D80
*caseUnfold($1CA5) = ?caseUnfoldTable + $0D83
*caseUnfold($10E5) = ?caseUnfoldTable + $0D86
*caseUnfold($1CA6) = ?caseUnfoldTable + $0D89
*caseUnfold($10E6) = ?caseUnfoldTable + $0D8C
*caseUnfold($1CA7) = ?caseUnfoldTable + $0D8F
*caseUnfold($10E7) = ?caseUnfoldTable + $0D92
*caseUnfold($1CA8) = ?caseUnfoldTable + $0D95
*caseUnfold($10E8) = ?caseUnfoldTable + $0D98
*caseUnfold($1CA9) = ?caseUnfoldTable + $0D9B
*caseUnfold($10E9) = ?caseUnfoldTable + $0D9E
*caseUnfold($1CAA) = ?caseUnfoldTable + $0DA1
*caseUnfold($10EA) = ?caseUnfoldTable + $0DA4
*caseUnfold($1CAB) = ?caseUnfoldTable + $0DA7
*caseUnfold($10EB) = ?caseUnfoldTable + $0DAA
*caseUnfold($1CAC) = ?caseUnfoldTable + $0DAD
*caseUnfold($10EC) = ?caseUnfoldTable + $0DB0
*caseUnfold($1CAD) = ?caseUnfoldTable + $0DB3
*caseUnfold($10ED) = ?caseUnfoldTable + $0DB6
*caseUnfold($1CAE) = ?caseUnfoldTable + $0DB9
*caseUnfold($10EE) = ?caseUnfoldTable + $0DBC
*caseUnfold($1CAF) = ?caseUnfoldTable + $0DBF
*caseUnfold($10EF) = ?caseUnfoldTable + $0DC2
*caseUnfold($1CB0) = ?caseUnfoldTable + $0DC5
*caseUnfold($10F0) = ?caseUnfoldTable + $0DC8
*caseUnfold($1CB1) = ?caseUnfoldTable + $0DCB
*caseUnfold($10F1) = ?caseUnfoldTable + $0DCE
*caseUnfold($1CB2) = ?caseUnfoldTable + $0DD1
*caseUnfold($10F2) = ?caseUnfoldTable + $0DD4
*caseUnfold($1CB3) = ?caseUnfoldTable + $0DD7
*caseUnfold($10F3) = ?caseUnfoldTable + $0DDA
*caseUnfold($1CB4) = ?caseUnfoldTable + $0DDD
*caseUnfold($10F4) = ?caseUnfoldTable + $0DE0
*caseUnfold($1CB5) = ?caseUnfoldTable + $0DE3
*caseUnfold($10F5) = ?caseUnfoldTable + $0DE6
*caseUnfold($1CB6) = ?caseUnfoldTable + $0DE9
*caseUnfold($10F6) = ?caseUnfoldTable + $0DEC
*caseUnfold($1CB7) = ?caseUnfoldTable + $0DEF
*caseUnfold($10F7) = ?caseUnfoldTable + $0DF2
*caseUnfold($1CB8) = ?caseUnfoldTable + $0DF5
*caseUnfold($10F8) = ?caseUnfoldTable + $0DF8
*caseUnfold($1CB9) = ?caseUnfoldTable + $0DFB
*caseUnfold($10F9) = ?caseUnfoldTable + $0DFE
*caseUnfold($1CBA) = ?caseUnfoldTable + $0E01
*caseUnfold($10FA) = ?caseUnfoldTable + $0E04
*caseUnfold($1CBD) = ?caseUnfoldTable + $0E07
*caseUnfold($10FD) = ?caseUnfoldTable + $0E0A
*caseUnfold($1CBE) = ?caseUnfoldTable + $0E0D
*caseUnfold($10FE) = ?caseUnfoldTable + $0E10
*caseUnfold($1CBF) = ?caseUnfoldTable + $0E13
*caseUnfold($10FF) = ?caseUnfoldTable + $0E16
*caseUnfold($1E00) = ?caseUnfoldTable + $0E19
*caseUnfold($1E01) = ?caseUnfoldTable + $0E1C
*caseUnfold($1E02) = ?caseUnfoldTable + $0E1F
*caseUnfold($1E03) = ?caseUnfoldTable + $0E22
*caseUnfold($1E04) = ?caseUnfoldTable + $0E25
*caseUnfold($1E05) = ?caseUnfoldTable + $0E28
*caseUnfold($1E06) = ?caseUnfoldTable + $0E2B
*caseUnfold($1E07) = ?caseUnfoldTable + $0E2E
*caseUnfold($1E08) = ?caseUnfoldTable + $0E31
*caseUnfold($1E09) = ?caseUnfoldTable + $0E34
*caseUnfold($1E0A) = ?caseUnfoldTable + $0E37
*caseUnfold($1E0B) = ?caseUnfoldTable + $0E3A
*caseUnfold($1E0C) = ?caseUnfoldTable + $0E3D
*caseUnfold($1E0D) = ?caseUnfoldTable + $0E40
*caseUnfold($1E0E) = ?caseUnfoldTable + $0E43
*caseUnfold($1E0F) = ?caseUnfoldTable + $0E46
*caseUnfold($1E10) = ?caseUnfoldTable + $0E49
*caseUnfold($1E11) = ?caseUnfoldTable + $0E4C
*caseUnfold($1E12) = ?caseUnfoldTable + $0E4F
*caseUnfold($1E13) = ?caseUnfoldTable + $0E52
*caseUnfold($1E14) = ?caseUnfoldTable + $0E55
*caseUnfold($1E15) = ?caseUnfoldTable + $0E58
*caseUnfold($1E16) = ?caseUnfoldTable + $0E5B
*caseUnfold($1E17) = ?caseUnfoldTable + $0E5E
*caseUnfold($1E18) = ?caseUnfoldTable + $0E61
*caseUnfold($1E19) = ?caseUnfoldTable + $0E64
*caseUnfold($1E1A) = ?caseUnfoldTable + $0E67
*caseUnfold($1E1B) = ?caseUnfoldTable + $0E6A
*caseUnfold($1E1C) = ?caseUnfoldTable + $0E6D
*caseUnfold($1E1D) = ?caseUnfoldTable + $0E70
*caseUnfold($1E1E) = ?caseUnfoldTable + $0E73
*caseUnfold($1E1F) = ?caseUnfoldTable + $0E76
*caseUnfold($1E20) = ?caseUnfoldTable + $0E79
*caseUnfold($1E21) = ?caseUnfoldTable + $0E7C
*caseUnfold($1E22) = ?caseUnfoldTable + $0E7F
*caseUnfold($1E23) = ?caseUnfoldTable + $0E82
*caseUnfold($1E24) = ?caseUnfoldTable + $0E85
*caseUnfold($1E25) = ?caseUnfoldTable + $0E88
*caseUnfold($1E26) = ?caseUnfoldTable + $0E8B
*caseUnfold($1E27) = ?caseUnfoldTable + $0E8E
*caseUnfold($1E28) = ?caseUnfoldTable + $0E91
*caseUnfold($1E29) = ?caseUnfoldTable + $0E94
*caseUnfold($1E2A) = ?caseUnfoldTable + $0E97
*caseUnfold($1E2B) = ?caseUnfoldTable + $0E9A
*caseUnfold($1E2C) = ?caseUnfoldTable + $0E9D
*caseUnfold($1E2D) = ?caseUnfoldTable + $0EA0
*caseUnfold($1E2E) = ?caseUnfoldTable + $0EA3
*caseUnfold($1E2F) = ?caseUnfoldTable + $0EA6
*caseUnfold($1E30) = ?caseUnfoldTable + $0EA9
*caseUnfold($1E31) = ?caseUnfoldTable + $0EAC
*caseUnfold($1E32) = ?caseUnfoldTable + $0EAF
*caseUnfold($1E33) = ?caseUnfoldTable + $0EB2
*caseUnfold($1E34) = ?caseUnfoldTable + $0EB5
*caseUnfold($1E35) = ?caseUnfoldTable + $0EB8
*caseUnfold($1E36) = ?caseUnfoldTable + $0EBB
*caseUnfold($1E37) = ?caseUnfoldTable + $0EBE
*caseUnfold($1E38) = ?caseUnfoldTable + $0EC1
*caseUnfold($1E39) = ?caseUnfoldTable + $0EC4
*caseUnfold($1E3A) = ?caseUnfoldTable + $0EC7
*caseUnfold($1E3B) = ?caseUnfoldTable + $0ECA
*caseUnfold($1E3C) = ?caseUnfoldTable + $0ECD
*caseUnfold($1E3D) = ?caseUnfoldTable + $0ED0
*caseUnfold($1E3E) = ?caseUnfoldTable + $0ED3
*caseUnfold($1E3F) = ?caseUnfoldTable + $0ED6
*caseUnfold($1E40) = ?caseUnfoldTable + $0ED9
*caseUnfold($1E41) = ?caseUnfoldTable + $0EDC
*caseUnfold($1E42) = ?caseUnfoldTable + $0EDF
*caseUnfold($1E43) = ?caseUnfoldTable + $0EE2
*caseUnfold($1E44) = ?caseUnfoldTable + $0EE5
*caseUnfold($1E45) = ?caseUnfoldTable + $0EE8
*caseUnfold($1E46) = ?caseUnfoldTable + $0EEB
*caseUnfold($1E47) = ?caseUnfoldTable + $0EEE
*caseUnfold($1E48) = ?caseUnfoldTable + $0EF1
*caseUnfold($1E49) = ?caseUnfoldTable + $0EF4
*caseUnfold($1E4A) = ?caseUnfoldTable + $0EF7
*caseUnfold($1E4B) = ?caseUnfoldTable + $0EFA
*caseUnfold($1E4C) = ?caseUnfoldTable + $0EFD
*caseUnfold($1E4D) = ?caseUnfoldTable + $0F00
*caseUnfold($1E4E) = ?caseUnfoldTable + $0F03
*caseUnfold($1E4F) = ?caseUnfoldTable + $0F06
*caseUnfold($1E50) = ?caseUnfoldTable + $0F09
*caseUnfold($1E51) = ?caseUnfoldTable + $0F0C
*caseUnfold($1E52) = ?caseUnfoldTable + $0F0F
*caseUnfold($1E53) = ?caseUnfoldTable + $0F12
*caseUnfold($1E54) = ?caseUnfoldTable + $0F15
*caseUnfold($1E55) = ?caseUnfoldTable + $0F18
*caseUnfold($1E56) = ?caseUnfoldTable + $0F1B
*caseUnfold($1E57) = ?caseUnfoldTable + $0F1E
*caseUnfold($1E58) = ?caseUnfoldTable + $0F21
*caseUnfold($1E59) = ?caseUnfoldTable + $0F24
*caseUnfold($1E5A) = ?caseUnfoldTable + $0F27
*caseUnfold($1E5B) = ?caseUnfoldTable + $0F2A
*caseUnfold($1E5C) = ?caseUnfoldTable + $0F2D
*caseUnfold($1E5D) = ?caseUnfoldTable + $0F30
*caseUnfold($1E5E) = ?caseUnfoldTable + $0F33
*caseUnfold($1E5F) = ?caseUnfoldTable + $0F36
*caseUnfold($1E60) = ?caseUnfoldTable + $0F39
*caseUnfold($1E61) = ?caseUnfoldTable + $0F3E
*caseUnfold($1E9B) = ?caseUnfoldTable + $0F43
*caseUnfold($1E62) = ?caseUnfoldTable + $0F48
*caseUnfold($1E63) = ?caseUnfoldTable + $0F4B
*caseUnfold($1E64) = ?caseUnfoldTable + $0F4E
*caseUnfold($1E65) = ?caseUnfoldTable + $0F51
*caseUnfold($1E66) = ?caseUnfoldTable + $0F54
*caseUnfold($1E67) = ?caseUnfoldTable + $0F57
*caseUnfold($1E68) = ?caseUnfoldTable + $0F5A
*caseUnfold($1E69) = ?caseUnfoldTable + $0F5D
*caseUnfold($1E6A) = ?caseUnfoldTable + $0F60
*caseUnfold($1E6B) = ?caseUnfoldTable + $0F63
*caseUnfold($1E6C) = ?caseUnfoldTable + $0F66
*caseUnfold($1E6D) = ?caseUnfoldTable + $0F69
*caseUnfold($1E6E) = ?caseUnfoldTable + $0F6C
*caseUnfold($1E6F) = ?caseUnfoldTable + $0F6F
*caseUnfold($1E70) = ?caseUnfoldTable + $0F72
*caseUnfold($1E71) = ?caseUnfoldTable + $0F75
*caseUnfold($1E72) = ?caseUnfoldTable + $0F78
*caseUnfold($1E73) = ?caseUnfoldTable + $0F7B
*caseUnfold($1E74) = ?caseUnfoldTable + $0F7E
*caseUnfold($1E75) = ?caseUnfoldTable + $0F81
*caseUnfold($1E76) = ?caseUnfoldTable + $0F84
*caseUnfold($1E77) = ?caseUnfoldTable + $0F87
*caseUnfold($1E78) = ?caseUnfoldTable + $0F8A
*caseUnfold($1E79) = ?caseUnfoldTable + $0F8D
*caseUnfold($1E7A) = ?caseUnfoldTable + $0F90
*caseUnfold($1E7B) = ?caseUnfoldTable + $0F93
*caseUnfold($1E7C) = ?caseUnfoldTable + $0F96
*caseUnfold($1E7D) = ?caseUnfoldTable + $0F99
*caseUnfold($1E7E) = ?caseUnfoldTable + $0F9C
*caseUnfold($1E7F) = ?caseUnfoldTable + $0F9F
*caseUnfold($1E80) = ?caseUnfoldTable + $0FA2
*caseUnfold($1E81) = ?caseUnfoldTable + $0FA5
*caseUnfold($1E82) = ?caseUnfoldTable + $0FA8
*caseUnfold($1E83) = ?caseUnfoldTable + $0FAB
*caseUnfold($1E84) = ?caseUnfoldTable + $0FAE
*caseUnfold($1E85) = ?caseUnfoldTable + $0FB1
*caseUnfold($1E86) = ?caseUnfoldTable + $0FB4
*caseUnfold($1E87) = ?caseUnfoldTable + $0FB7
*caseUnfold($1E88) = ?caseUnfoldTable + $0FBA
*caseUnfold($1E89) = ?caseUnfoldTable + $0FBD
*caseUnfold($1E8A) = ?caseUnfoldTable + $0FC0
*caseUnfold($1E8B) = ?caseUnfoldTable + $0FC3
*caseUnfold($1E8C) = ?caseUnfoldTable + $0FC6
*caseUnfold($1E8D) = ?caseUnfoldTable + $0FC9
*caseUnfold($1E8E) = ?caseUnfoldTable + $0FCC
*caseUnfold($1E8F) = ?caseUnfoldTable + $0FCF
*caseUnfold($1E90) = ?caseUnfoldTable + $0FD2
*caseUnfold($1E91) = ?caseUnfoldTable + $0FD5
*caseUnfold($1E92) = ?caseUnfoldTable + $0FD8
*caseUnfold($1E93) = ?caseUnfoldTable + $0FDB
*caseUnfold($1E94) = ?caseUnfoldTable + $0FDE
*caseUnfold($1E95) = ?caseUnfoldTable + $0FE1
*caseUnfold($1E9E) = ?caseUnfoldTable + $0FE4
*caseUnfold($00DF) = ?caseUnfoldTable + $0FE7
*caseUnfold($1EA0) = ?caseUnfoldTable + $0FEA
*caseUnfold($1EA1) = ?caseUnfoldTable + $0FED
*caseUnfold($1EA2) = ?caseUnfoldTable + $0FF0
*caseUnfold($1EA3) = ?caseUnfoldTable + $0FF3
*caseUnfold($1EA4) = ?caseUnfoldTable + $0FF6
*caseUnfold($1EA5) = ?caseUnfoldTable + $0FF9
*caseUnfold($1EA6) = ?caseUnfoldTable + $0FFC
*caseUnfold($1EA7) = ?caseUnfoldTable + $0FFF
*caseUnfold($1EA8) = ?caseUnfoldTable + $1002
*caseUnfold($1EA9) = ?caseUnfoldTable + $1005
*caseUnfold($1EAA) = ?caseUnfoldTable + $1008
*caseUnfold($1EAB) = ?caseUnfoldTable + $100B
*caseUnfold($1EAC) = ?caseUnfoldTable + $100E
*caseUnfold($1EAD) = ?caseUnfoldTable + $1011
*caseUnfold($1EAE) = ?caseUnfoldTable + $1014
*caseUnfold($1EAF) = ?caseUnfoldTable + $1017
*caseUnfold($1EB0) = ?caseUnfoldTable + $101A
*caseUnfold($1EB1) = ?caseUnfoldTable + $101D
*caseUnfold($1EB2) = ?caseUnfoldTable + $1020
*caseUnfold($1EB3) = ?caseUnfoldTable + $1023
*caseUnfold($1EB4) = ?caseUnfoldTable + $1026
*caseUnfold($1EB5) = ?caseUnfoldTable + $1029
*caseUnfold($1EB6) = ?caseUnfoldTable + $102C
*caseUnfold($1EB7) = ?caseUnfoldTable + $102F
*caseUnfold($1EB8) = ?caseUnfoldTable + $1032
*caseUnfold($1EB9) = ?caseUnfoldTable + $1035
*caseUnfold($1EBA) = ?caseUnfoldTable + $1038
*caseUnfold($1EBB) = ?caseUnfoldTable + $103B
*caseUnfold($1EBC) = ?caseUnfoldTable + $103E
*caseUnfold($1EBD) = ?caseUnfoldTable + $1041
*caseUnfold($1EBE) = ?caseUnfoldTable + $1044
*caseUnfold($1EBF) = ?caseUnfoldTable + $1047
*caseUnfold($1EC0) = ?caseUnfoldTable + $104A
*caseUnfold($1EC1) = ?caseUnfoldTable + $104D
*caseUnfold($1EC2) = ?caseUnfoldTable + $1050
*caseUnfold($1EC3) = ?caseUnfoldTable + $1053
*caseUnfold($1EC4) = ?caseUnfoldTable + $1056
*caseUnfold($1EC5) = ?caseUnfoldTable + $1059
*caseUnfold($1EC6) = ?caseUnfoldTable + $105C
*caseUnfold($1EC7) = ?caseUnfoldTable + $105F
*caseUnfold($1EC8) = ?caseUnfoldTable + $1062
*caseUnfold($1EC9) = ?caseUnfoldTable + $1065
*caseUnfold($1ECA) = ?caseUnfoldTable + $1068
*caseUnfold($1ECB) = ?caseUnfoldTable + $106B
*caseUnfold($1ECC) = ?caseUnfoldTable + $106E
*caseUnfold($1ECD) = ?caseUnfoldTable + $1071
*caseUnfold($1ECE) = ?caseUnfoldTable + $1074
*caseUnfold($1ECF) = ?caseUnfoldTable + $1077
*caseUnfold($1ED0) = ?caseUnfoldTable + $107A
*caseUnfold($1ED1) = ?caseUnfoldTable + $107D
*caseUnfold($1ED2) = ?caseUnfoldTable + $1080
*caseUnfold($1ED3) = ?caseUnfoldTable + $1083
*caseUnfold($1ED4) = ?caseUnfoldTable + $1086
*caseUnfold($1ED5) = ?caseUnfoldTable + $1089
*caseUnfold($1ED6) = ?caseUnfoldTable + $108C
*caseUnfold($1ED7) = ?caseUnfoldTable + $108F
*caseUnfold($1ED8) = ?caseUnfoldTable + $1092
*caseUnfold($1ED9) = ?caseUnfoldTable + $1095
*caseUnfold($1EDA) = ?caseUnfoldTable + $1098
*caseUnfold($1EDB) = ?caseUnfoldTable + $109B
*caseUnfold($1EDC) = ?caseUnfoldTable + $109E
*caseUnfold($1EDD) = ?caseUnfoldTable + $10A1
*caseUnfold($1EDE) = ?caseUnfoldTable + $10A4
*caseUnfold($1EDF) = ?caseUnfoldTable + $10A7
*caseUnfold($1EE0) = ?caseUnfoldTable + $10AA
*caseUnfold($1EE1) = ?caseUnfoldTable + $10AD
*caseUnfold($1EE2) = ?caseUnfoldTable + $10B0
*caseUnfold($1EE3) = ?caseUnfoldTable + $10B3
*caseUnfold($1EE4) = ?caseUnfoldTable + $10B6
*caseUnfold($1EE5) = ?caseUnfoldTable + $10B9
*caseUnfold($1EE6) = ?caseUnfoldTable + $10BC
*caseUnfold($1EE7) = ?caseUnfoldTable + $10BF
*caseUnfold($1EE8) = ?caseUnfoldTable + $10C2
*caseUnfold($1EE9) = ?caseUnfoldTable + $10C5
*caseUnfold($1EEA) = ?caseUnfoldTable + $10C8
*caseUnfold($1EEB) = ?caseUnfoldTable + $10CB
*caseUnfold($1EEC) = ?caseUnfoldTable + $10CE
*caseUnfold($1EED) = ?caseUnfoldTable + $10D1
*caseUnfold($1EEE) = ?caseUnfoldTable + $10D4
*caseUnfold($1EEF) = ?caseUnfoldTable + $10D7
*caseUnfold($1EF0) = ?caseUnfoldTable + $10DA
*caseUnfold($1EF1) = ?caseUnfoldTable + $10DD
*caseUnfold($1EF2) = ?caseUnfoldTable + $10E0
*caseUnfold($1EF3) = ?caseUnfoldTable + $10E3
*caseUnfold($1EF4) = ?caseUnfoldTable + $10E6
*caseUnfold($1EF5) = ?caseUnfoldTable + $10E9
*caseUnfold($1EF6) = ?caseUnfoldTable + $10EC
*caseUnfold($1EF7) = ?caseUnfoldTable + $10EF
*caseUnfold($1EF8) = ?caseUnfoldTable + $10F2
*caseUnfold($1EF9) = ?caseUnfoldTable + $10F5
*caseUnfold($1EFA) = ?caseUnfoldTable + $10F8
*caseUnfold($1EFB) = ?caseUnfoldTable + $10FB
*caseUnfold($1EFC) = ?caseUnfoldTable + $10FE
*caseUnfold($1EFD) = ?caseUnfoldTable + $1101
*caseUnfold($1EFE) = ?caseUnfoldTable + $1104
*caseUnfold($1EFF) = ?caseUnfoldTable + $1107
*caseUnfold($1F08) = ?caseUnfoldTable + $110A
*caseUnfold($1F00) = ?caseUnfoldTable + $110D
*caseUnfold($1F09) = ?caseUnfoldTable + $1110
*caseUnfold($1F01) = ?caseUnfoldTable + $1113
*caseUnfold($1F0A) = ?caseUnfoldTable + $1116
*caseUnfold($1F02) = ?caseUnfoldTable + $1119
*caseUnfold($1F0B) = ?caseUnfoldTable + $111C
*caseUnfold($1F03) = ?caseUnfoldTable + $111F
*caseUnfold($1F0C) = ?caseUnfoldTable + $1122
*caseUnfold($1F04) = ?caseUnfoldTable + $1125
*caseUnfold($1F0D) = ?caseUnfoldTable + $1128
*caseUnfold($1F05) = ?caseUnfoldTable + $112B
*caseUnfold($1F0E) = ?caseUnfoldTable + $112E
*caseUnfold($1F06) = ?caseUnfoldTable + $1131
*caseUnfold($1F0F) = ?caseUnfoldTable + $1134
*caseUnfold($1F07) = ?caseUnfoldTable + $1137
*caseUnfold($1F18) = ?caseUnfoldTable + $113A
*caseUnfold($1F10) = ?caseUnfoldTable + $113D
*caseUnfold($1F19) = ?caseUnfoldTable + $1140
*caseUnfold($1F11) = ?caseUnfoldTable + $1143
*caseUnfold($1F1A) = ?caseUnfoldTable + $1146
*caseUnfold($1F12) = ?caseUnfoldTable + $1149
*caseUnfold($1F1B) = ?caseUnfoldTable + $114C
*caseUnfold($1F13) = ?caseUnfoldTable + $114F
*caseUnfold($1F1C) = ?caseUnfoldTable + $1152
*caseUnfold($1F14) = ?caseUnfoldTable + $1155
*caseUnfold($1F1D) = ?caseUnfoldTable + $1158
*caseUnfold($1F15) = ?caseUnfoldTable + $115B
*caseUnfold($1F28) = ?caseUnfoldTable + $115E
*caseUnfold($1F20) = ?caseUnfoldTable + $1161
*caseUnfold($1F29) = ?caseUnfoldTable + $1164
*caseUnfold($1F21) = ?caseUnfoldTable + $1167
*caseUnfold($1F2A) = ?caseUnfoldTable + $116A
*caseUnfold($1F22) = ?caseUnfoldTable + $116D
*caseUnfold($1F2B) = ?caseUnfoldTable + $1170
*caseUnfold($1F23) = ?caseUnfoldTable + $1173
*caseUnfold($1F2C) = ?caseUnfoldTable + $1176
*caseUnfold($1F24) = ?caseUnfoldTable + $1179
*caseUnfold($1F2D) = ?caseUnfoldTable + $117C
*caseUnfold($1F25) = ?caseUnfoldTable + $117F
*caseUnfold($1F2E) = ?caseUnfoldTable + $1182
*caseUnfold($1F26) = ?caseUnfoldTable + $1185
*caseUnfold($1F2F) = ?caseUnfoldTable + $1188
*caseUnfold($1F27) = ?caseUnfoldTable + $118B
*caseUnfold($1F38) = ?caseUnfoldTable + $118E
*caseUnfold($1F30) = ?caseUnfoldTable + $1191
*caseUnfold($1F39) = ?caseUnfoldTable + $1194
*caseUnfold($1F31) = ?caseUnfoldTable + $1197
*caseUnfold($1F3A) = ?caseUnfoldTable + $119A
*caseUnfold($1F32) = ?caseUnfoldTable + $119D
*caseUnfold($1F3B) = ?caseUnfoldTable + $11A0
*caseUnfold($1F33) = ?caseUnfoldTable + $11A3
*caseUnfold($1F3C) = ?caseUnfoldTable + $11A6
*caseUnfold($1F34) = ?caseUnfoldTable + $11A9
*caseUnfold($1F3D) = ?caseUnfoldTable + $11AC
*caseUnfold($1F35) = ?caseUnfoldTable + $11AF
*caseUnfold($1F3E) = ?caseUnfoldTable + $11B2
*caseUnfold($1F36) = ?caseUnfoldTable + $11B5
*caseUnfold($1F3F) = ?caseUnfoldTable + $11B8
*caseUnfold($1F37) = ?caseUnfoldTable + $11BB
*caseUnfold($1F48) = ?caseUnfoldTable + $11BE
*caseUnfold($1F40) = ?caseUnfoldTable + $11C1
*caseUnfold($1F49) = ?caseUnfoldTable + $11C4
*caseUnfold($1F41) = ?caseUnfoldTable + $11C7
*caseUnfold($1F4A) = ?caseUnfoldTable + $11CA
*caseUnfold($1F42) = ?caseUnfoldTable + $11CD
*caseUnfold($1F4B) = ?caseUnfoldTable + $11D0
*caseUnfold($1F43) = ?caseUnfoldTable + $11D3
*caseUnfold($1F4C) = ?caseUnfoldTable + $11D6
*caseUnfold($1F44) = ?caseUnfoldTable + $11D9
*caseUnfold($1F4D) = ?caseUnfoldTable + $11DC
*caseUnfold($1F45) = ?caseUnfoldTable + $11DF
*caseUnfold($1F59) = ?caseUnfoldTable + $11E2
*caseUnfold($1F51) = ?caseUnfoldTable + $11E5
*caseUnfold($1F5B) = ?caseUnfoldTable + $11E8
*caseUnfold($1F53) = ?caseUnfoldTable + $11EB
*caseUnfold($1F5D) = ?caseUnfoldTable + $11EE
*caseUnfold($1F55) = ?caseUnfoldTable + $11F1
*caseUnfold($1F5F) = ?caseUnfoldTable + $11F4
*caseUnfold($1F57) = ?caseUnfoldTable + $11F7
*caseUnfold($1F68) = ?caseUnfoldTable + $11FA
*caseUnfold($1F60) = ?caseUnfoldTable + $11FD
*caseUnfold($1F69) = ?caseUnfoldTable + $1200
*caseUnfold($1F61) = ?caseUnfoldTable + $1203
*caseUnfold($1F6A) = ?caseUnfoldTable + $1206
*caseUnfold($1F62) = ?caseUnfoldTable + $1209
*caseUnfold($1F6B) = ?caseUnfoldTable + $120C
*caseUnfold($1F63) = ?caseUnfoldTable + $120F
*caseUnfold($1F6C) = ?caseUnfoldTable + $1212
*caseUnfold($1F64) = ?caseUnfoldTable + $1215
*caseUnfold($1F6D) = ?caseUnfoldTable + $1218
*caseUnfold($1F65) = ?caseUnfoldTable + $121B
*caseUnfold($1F6E) = ?caseUnfoldTable + $121E
*caseUnfold($1F66) = ?caseUnfoldTable + $1221
*caseUnfold($1F6F) = ?caseUnfoldTable + $1224
*caseUnfold($1F67) = ?caseUnfoldTable + $1227
*caseUnfold($1F88) = ?caseUnfoldTable + $122A
*caseUnfold($1F80) = ?caseUnfoldTable + $122D
*caseUnfold($1F89) = ?caseUnfoldTable + $1230
*caseUnfold($1F81) = ?caseUnfoldTable + $1233
*caseUnfold($1F8A) = ?caseUnfoldTable + $1236
*caseUnfold($1F82) = ?caseUnfoldTable + $1239
*caseUnfold($1F8B) = ?caseUnfoldTable + $123C
*caseUnfold($1F83) = ?caseUnfoldTable + $123F
*caseUnfold($1F8C) = ?caseUnfoldTable + $1242
*caseUnfold($1F84) = ?caseUnfoldTable + $1245
*caseUnfold($1F8D) = ?caseUnfoldTable + $1248
*caseUnfold($1F85) = ?caseUnfoldTable + $124B
*caseUnfold($1F8E) = ?caseUnfoldTable + $124E
*caseUnfold($1F86) = ?caseUnfoldTable + $1251
*caseUnfold($1F8F) = ?caseUnfoldTable + $1254
*caseUnfold($1F87) = ?caseUnfoldTable + $1257
*caseUnfold($1F98) = ?caseUnfoldTable + $125A
*caseUnfold($1F90) = ?caseUnfoldTable + $125D
*caseUnfold($1F99) = ?caseUnfoldTable + $1260
*caseUnfold($1F91) = ?caseUnfoldTable + $1263
*caseUnfold($1F9A) = ?caseUnfoldTable + $1266
*caseUnfold($1F92) = ?caseUnfoldTable + $1269
*caseUnfold($1F9B) = ?caseUnfoldTable + $126C
*caseUnfold($1F93) = ?caseUnfoldTable + $126F
*caseUnfold($1F9C) = ?caseUnfoldTable + $1272
*caseUnfold($1F94) = ?caseUnfoldTable + $1275
*caseUnfold($1F9D) = ?caseUnfoldTable + $1278
*caseUnfold($1F95) = ?caseUnfoldTable + $127B
*caseUnfold($1F9E) = ?caseUnfoldTable + $127E
*caseUnfold($1F96) = ?caseUnfoldTable + $1281
*caseUnfold($1F9F) = ?caseUnfoldTable + $1284
*caseUnfold($1F97) = ?caseUnfoldTable + $1287
*caseUnfold($1FA8) = ?caseUnfoldTable + $128A
*caseUnfold($1FA0) = ?caseUnfoldTable + $128D
*caseUnfold($1FA9) = ?caseUnfoldTable + $1290
*caseUnfold($1FA1) = ?caseUnfoldTable + $1293
*caseUnfold($1FAA) = ?caseUnfoldTable + $1296
*caseUnfold($1FA2) = ?caseUnfoldTable + $1299
*caseUnfold($1FAB) = ?caseUnfoldTable + $129C
*caseUnfold($1FA3) = ?caseUnfoldTable + $129F
*caseUnfold($1FAC) = ?caseUnfoldTable + $12A2
*caseUnfold($1FA4) = ?caseUnfoldTable + $12A5
*caseUnfold($1FAD) = ?caseUnfoldTable + $12A8
*caseUnfold($1FA5) = ?caseUnfoldTable + $12AB
*caseUnfold($1FAE) = ?caseUnfoldTable + $12AE
*caseUnfold($1FA6) = ?caseUnfoldTable + $12B1
*caseUnfold($1FAF) = ?caseUnfoldTable + $12B4
*caseUnfold($1FA7) = ?caseUnfoldTable + $12B7
*caseUnfold($1FB8) = ?caseUnfoldTable + $12BA
*caseUnfold($1FB0) = ?caseUnfoldTable + $12BD
*caseUnfold($1FB9) = ?caseUnfoldTable + $12C0
*caseUnfold($1FB1) = ?caseUnfoldTable + $12C3
*caseUnfold($1FBA) = ?caseUnfoldTable + $12C6
*caseUnfold($1F70) = ?caseUnfoldTable + $12C9
*caseUnfold($1FBB) = ?caseUnfoldTable + $12CC
*caseUnfold($1F71) = ?caseUnfoldTable + $12CF
*caseUnfold($1FBC) = ?caseUnfoldTable + $12D2
*caseUnfold($1FB3) = ?caseUnfoldTable + $12D5
*caseUnfold($1FC8) = ?caseUnfoldTable + $12D8
*caseUnfold($1F72) = ?caseUnfoldTable + $12DB
*caseUnfold($1FC9) = ?caseUnfoldTable + $12DE
*caseUnfold($1F73) = ?caseUnfoldTable + $12E1
*caseUnfold($1FCA) = ?caseUnfoldTable + $12E4
*caseUnfold($1F74) = ?caseUnfoldTable + $12E7
*caseUnfold($1FCB) = ?caseUnfoldTable + $12EA
*caseUnfold($1F75) = ?caseUnfoldTable + $12ED
*caseUnfold($1FCC) = ?caseUnfoldTable + $12F0
*caseUnfold($1FC3) = ?caseUnfoldTable + $12F3
*caseUnfold($1FD8) = ?caseUnfoldTable + $12F6
*caseUnfold($1FD0) = ?caseUnfoldTable + $12F9
*caseUnfold($1FD9) = ?caseUnfoldTable + $12FC
*caseUnfold($1FD1) = ?caseUnfoldTable + $12FF
*caseUnfold($1FDA) = ?caseUnfoldTable + $1302
*caseUnfold($1F76) = ?caseUnfoldTable + $1305
*caseUnfold($1FDB) = ?caseUnfoldTable + $1308
*caseUnfold($1F77) = ?caseUnfoldTable + $130B
*caseUnfold($1FE8) = ?caseUnfoldTable + $130E
*caseUnfold($1FE0) = ?caseUnfoldTable + $1311
*caseUnfold($1FE9) = ?caseUnfoldTable + $1314
*caseUnfold($1FE1) = ?caseUnfoldTable + $1317
*caseUnfold($1FEA) = ?caseUnfoldTable + $131A
*caseUnfold($1F7A) = ?caseUnfoldTable + $131D
*caseUnfold($1FEB) = ?caseUnfoldTable + $1320
*caseUnfold($1F7B) = ?caseUnfoldTable + $1323
*caseUnfold($1FEC) = ?caseUnfoldTable + $1326
*caseUnfold($1FE5) = ?caseUnfoldTable + $1329
*caseUnfold($1FF8) = ?caseUnfoldTable + $132C
*caseUnfold($1F78) = ?caseUnfoldTable + $132F
*caseUnfold($1FF9) = ?caseUnfoldTable + $1332
*caseUnfold($1F79) = ?caseUnfoldTable + $1335
*caseUnfold($1FFA) = ?caseUnfoldTable + $1338
*caseUnfold($1F7C) = ?caseUnfoldTable + $133B
*caseUnfold($1FFB) = ?caseUnfoldTable + $133E
*caseUnfold($1F7D) = ?caseUnfoldTable + $1341
*caseUnfold($1FFC) = ?caseUnfoldTable + $1344
*caseUnfold($1FF3) = ?caseUnfoldTable + $1347
*caseUnfold($2132) = ?caseUnfoldTable + $134A
*caseUnfold($214E) = ?caseUnfoldTable + $134D
*caseUnfold($2160) = ?caseUnfoldTable + $1350
*caseUnfold($2170) = ?caseUnfoldTable + $1353
*caseUnfold($2161) = ?caseUnfoldTable + $1356
*caseUnfold($2171) = ?caseUnfoldTable + $1359
*caseUnfold($2162) = ?caseUnfoldTable + $135C
*caseUnfold($2172) = ?caseUnfoldTable + $135F
*caseUnfold($2163) = ?caseUnfoldTable + $1362
*caseUnfold($2173) = ?caseUnfoldTable + $1365
*caseUnfold($2164) = ?caseUnfoldTable + $1368
*caseUnfold($2174) = ?caseUnfoldTable + $136B
*caseUnfold($2165) = ?caseUnfoldTable + $136E
*caseUnfold($2175) = ?caseUnfoldTable + $1371
*caseUnfold($2166) = ?caseUnfoldTable + $1374
*caseUnfold($2176) = ?caseUnfoldTable + $1377
*caseUnfold($2167) = ?caseUnfoldTable + $137A
*caseUnfold($2177) = ?caseUnfoldTable + $137D
*caseUnfold($2168) = ?caseUnfoldTable + $1380
*caseUnfold($2178) = ?caseUnfoldTable + $1383
*caseUnfold($2169) = ?caseUnfoldTable + $1386
*caseUnfold($2179) = ?caseUnfoldTable + $1389
*caseUnfold($216A) = ?caseUnfoldTable + $138C
*caseUnfold($217A) = ?caseUnfoldTable + $138F
*caseUnfold($216B) = ?caseUnfoldTable + $1392
*caseUnfold($217B) = ?caseUnfoldTable + $1395
*caseUnfold($216C) = ?caseUnfoldTable + $1398
*caseUnfold($217C) = ?caseUnfoldTable + $139B
*caseUnfold($216D) = ?caseUnfoldTable + $139E
*caseUnfold($217D) = ?caseUnfoldTable + $13A1
*caseUnfold($216E) = ?caseUnfoldTable + $13A4
*caseUnfold($217E) = ?caseUnfoldTable + $13A7
*caseUnfold($216F) = ?caseUnfoldTable + $13AA
*caseUnfold($217F) = ?caseUnfoldTable + $13AD
*caseUnfold($2183) = ?caseUnfoldTable + $13B0
*caseUnfold($2184) = ?caseUnfoldTable + $13B3
*caseUnfold($24B6) = ?caseUnfoldTable + $13B6
*caseUnfold($24D0) = ?caseUnfoldTable + $13B9
*caseUnfold($24B7) = ?caseUnfoldTable + $13BC
*caseUnfold($24D1) = ?caseUnfoldTable + $13BF
*caseUnfold($24B8) = ?caseUnfoldTable + $13C2
*caseUnfold($24D2) = ?caseUnfoldTable + $13C5
*caseUnfold($24B9) = ?caseUnfoldTable + $13C8
*caseUnfold($24D3) = ?caseUnfoldTable + $13CB
*caseUnfold($24BA) = ?caseUnfoldTable + $13CE
*caseUnfold($24D4) = ?caseUnfoldTable + $13D1
*caseUnfold($24BB) = ?caseUnfoldTable + $13D4
*caseUnfold($24D5) = ?caseUnfoldTable + $13D7
*caseUnfold($24BC) = ?caseUnfoldTable + $13DA
*caseUnfold($24D6) = ?caseUnfoldTable + $13DD
*caseUnfold($24BD) = ?caseUnfoldTable + $13E0
*caseUnfold($24D7) = ?caseUnfoldTable + $13E3
*caseUnfold($24BE) = ?caseUnfoldTable + $13E6
*caseUnfold($24D8) = ?caseUnfoldTable + $13E9
*caseUnfold($24BF) = ?caseUnfoldTable + $13EC
*caseUnfold($24D9) = ?caseUnfoldTable + $13EF
*caseUnfold($24C0) = ?caseUnfoldTable + $13F2
*caseUnfold($24DA) = ?caseUnfoldTable + $13F5
*caseUnfold($24C1) = ?caseUnfoldTable + $13F8
*caseUnfold($24DB) = ?caseUnfoldTable + $13FB
*caseUnfold($24C2) = ?caseUnfoldTable + $13FE
*caseUnfold($24DC) = ?caseUnfoldTable + $1401
*caseUnfold($24C3) = ?caseUnfoldTable + $1404
*caseUnfold($24DD) = ?caseUnfoldTable + $1407
*caseUnfold($24C4) = ?caseUnfoldTable + $140A
*caseUnfold($24DE) = ?caseUnfoldTable + $140D
*caseUnfold($24C5) = ?caseUnfoldTable + $1410
*caseUnfold($24DF) = ?caseUnfoldTable + $1413
*caseUnfold($24C6) = ?caseUnfoldTable + $1416
*caseUnfold($24E0) = ?caseUnfoldTable + $1419
*caseUnfold($24C7) = ?caseUnfoldTable + $141C
*caseUnfold($24E1) = ?caseUnfoldTable + $141F
*caseUnfold($24C8) = ?caseUnfoldTable + $1422
*caseUnfold($24E2) = ?caseUnfoldTable + $1425
*caseUnfold($24C9) = ?caseUnfoldTable + $1428
*caseUnfold($24E3) = ?caseUnfoldTable + $142B
*caseUnfold($24CA) = ?caseUnfoldTable + $142E
*caseUnfold($24E4) = ?caseUnfoldTable + $1431
*caseUnfold($24CB) = ?caseUnfoldTable + $1434
*caseUnfold($24E5) = ?caseUnfoldTable + $1437
*caseUnfold($24CC) = ?caseUnfoldTable + $143A
*caseUnfold($24E6) = ?caseUnfoldTable + $143D
*caseUnfold($24CD) = ?caseUnfoldTable + $1440
*caseUnfold($24E7) = ?caseUnfoldTable + $1443
*caseUnfold($24CE) = ?caseUnfoldTable + $1446
*caseUnfold($24E8) = ?caseUnfoldTable + $1449
*caseUnfold($24CF) = ?caseUnfoldTable + $144C
*caseUnfold($24E9) = ?caseUnfoldTable + $144F
*caseUnfold($2C00) = ?caseUnfoldTable + $1452
*caseUnfold($2C30) = ?caseUnfoldTable + $1455
*caseUnfold($2C01) = ?caseUnfoldTable + $1458
*caseUnfold($2C31) = ?caseUnfoldTable + $145B
*caseUnfold($2C02) = ?caseUnfoldTable + $145E
*caseUnfold($2C32) = ?caseUnfoldTable + $1461
*caseUnfold($2C03) = ?caseUnfoldTable + $1464
*caseUnfold($2C33) = ?caseUnfoldTable + $1467
*caseUnfold($2C04) = ?caseUnfoldTable + $146A
*caseUnfold($2C34) = ?caseUnfoldTable + $146D
*caseUnfold($2C05) = ?caseUnfoldTable + $1470
*caseUnfold($2C35) = ?caseUnfoldTable + $1473
*caseUnfold($2C06) = ?caseUnfoldTable + $1476
*caseUnfold($2C36) = ?caseUnfoldTable + $1479
*caseUnfold($2C07) = ?caseUnfoldTable + $147C
*caseUnfold($2C37) = ?caseUnfoldTable + $147F
*caseUnfold($2C08) = ?caseUnfoldTable + $1482
*caseUnfold($2C38) = ?caseUnfoldTable + $1485
*caseUnfold($2C09) = ?caseUnfoldTable + $1488
*caseUnfold($2C39) = ?caseUnfoldTable + $148B
*caseUnfold($2C0A) = ?caseUnfoldTable + $148E
*caseUnfold($2C3A) = ?caseUnfoldTable + $1491
*caseUnfold($2C0B) = ?caseUnfoldTable + $1494
*caseUnfold($2C3B) = ?caseUnfoldTable + $1497
*caseUnfold($2C0C) = ?caseUnfoldTable + $149A
*caseUnfold($2C3C) = ?caseUnfoldTable + $149D
*caseUnfold($2C0D) = ?caseUnfoldTable + $14A0
*caseUnfold($2C3D) = ?caseUnfoldTable + $14A3
*caseUnfold($2C0E) = ?caseUnfoldTable + $14A6
*caseUnfold($2C3E) = ?caseUnfoldTable + $14A9
*caseUnfold($2C0F) = ?caseUnfoldTable + $14AC
*caseUnfold($2C3F) = ?caseUnfoldTable + $14AF
*caseUnfold($2C10) = ?caseUnfoldTable + $14B2
*caseUnfold($2C40) = ?caseUnfoldTable + $14B5
*caseUnfold($2C11) = ?caseUnfoldTable + $14B8
*caseUnfold($2C41) = ?caseUnfoldTable + $14BB
*caseUnfold($2C12) = ?caseUnfoldTable + $14BE
*caseUnfold($2C42) = ?caseUnfoldTable + $14C1
*caseUnfold($2C13) = ?caseUnfoldTable + $14C4
*caseUnfold($2C43) = ?caseUnfoldTable + $14C7
*caseUnfold($2C14) = ?caseUnfoldTable + $14CA
*caseUnfold($2C44) = ?caseUnfoldTable + $14CD
*caseUnfold($2C15) = ?caseUnfoldTable + $14D0
*caseUnfold($2C45) = ?caseUnfoldTable + $14D3
*caseUnfold($2C16) = ?caseUnfoldTable + $14D6
*caseUnfold($2C46) = ?caseUnfoldTable + $14D9
*caseUnfold($2C17) = ?caseUnfoldTable + $14DC
*caseUnfold($2C47) = ?caseUnfoldTable + $14DF
*caseUnfold($2C18) = ?caseUnfoldTable + $14E2
*caseUnfold($2C48) = ?caseUnfoldTable + $14E5
*caseUnfold($2C19) = ?caseUnfoldTable + $14E8
*caseUnfold($2C49) = ?caseUnfoldTable + $14EB
*caseUnfold($2C1A) = ?caseUnfoldTable + $14EE
*caseUnfold($2C4A) = ?caseUnfoldTable + $14F1
*caseUnfold($2C1B) = ?caseUnfoldTable + $14F4
*caseUnfold($2C4B) = ?caseUnfoldTable + $14F7
*caseUnfold($2C1C) = ?caseUnfoldTable + $14FA
*caseUnfold($2C4C) = ?caseUnfoldTable + $14FD
*caseUnfold($2C1D) = ?caseUnfoldTable + $1500
*caseUnfold($2C4D) = ?caseUnfoldTable + $1503
*caseUnfold($2C1E) = ?caseUnfoldTable + $1506
*caseUnfold($2C4E) = ?caseUnfoldTable + $1509
*caseUnfold($2C1F) = ?caseUnfoldTable + $150C
*caseUnfold($2C4F) = ?caseUnfoldTable + $150F
*caseUnfold($2C20) = ?caseUnfoldTable + $1512
*caseUnfold($2C50) = ?caseUnfoldTable + $1515
*caseUnfold($2C21) = ?caseUnfoldTable + $1518
*caseUnfold($2C51) = ?caseUnfoldTable + $151B
*caseUnfold($2C22) = ?caseUnfoldTable + $151E
*caseUnfold($2C52) = ?caseUnfoldTable + $1521
*caseUnfold($2C23) = ?caseUnfoldTable + $1524
*caseUnfold($2C53) = ?caseUnfoldTable + $1527
*caseUnfold($2C24) = ?caseUnfoldTable + $152A
*caseUnfold($2C54) = ?caseUnfoldTable + $152D
*caseUnfold($2C25) = ?caseUnfoldTable + $1530
*caseUnfold($2C55) = ?caseUnfoldTable + $1533
*caseUnfold($2C26) = ?caseUnfoldTable + $1536
*caseUnfold($2C56) = ?caseUnfoldTable + $1539
*caseUnfold($2C27) = ?caseUnfoldTable + $153C
*caseUnfold($2C57) = ?caseUnfoldTable + $153F
*caseUnfold($2C28) = ?caseUnfoldTable + $1542
*caseUnfold($2C58) = ?caseUnfoldTable + $1545
*caseUnfold($2C29) = ?caseUnfoldTable + $1548
*caseUnfold($2C59) = ?caseUnfoldTable + $154B
*caseUnfold($2C2A) = ?caseUnfoldTable + $154E
*caseUnfold($2C5A) = ?caseUnfoldTable + $1551
*caseUnfold($2C2B) = ?caseUnfoldTable + $1554
*caseUnfold($2C5B) = ?caseUnfoldTable + $1557
*caseUnfold($2C2C) = ?caseUnfoldTable + $155A
*caseUnfold($2C5C) = ?caseUnfoldTable + $155D
*caseUnfold($2C2D) = ?caseUnfoldTable + $1560
*caseUnfold($2C5D) = ?caseUnfoldTable + $1563
*caseUnfold($2C2E) = ?caseUnfoldTable + $1566
*caseUnfold($2C5E) = ?caseUnfoldTable + $1569
*caseUnfold($2C2F) = ?caseUnfoldTable + $156C
*caseUnfold($2C5F) = ?caseUnfoldTable + $156F
*caseUnfold($2C60) = ?caseUnfoldTable + $1572
*caseUnfold($2C61) = ?caseUnfoldTable + $1575
*caseUnfold($2C62) = ?caseUnfoldTable + $1578
*caseUnfold($026B) = ?caseUnfoldTable + $157B
*caseUnfold($2C63) = ?caseUnfoldTable + $157E
*caseUnfold($1D7D) = ?caseUnfoldTable + $1581
*caseUnfold($2C64) = ?caseUnfoldTable + $1584
*caseUnfold($027D) = ?caseUnfoldTable + $1587
*caseUnfold($2C67) = ?caseUnfoldTable + $158A
*caseUnfold($2C68) = ?caseUnfoldTable + $158D
*caseUnfold($2C69) = ?caseUnfoldTable + $1590
*caseUnfold($2C6A) = ?caseUnfoldTable + $1593
*caseUnfold($2C6B) = ?caseUnfoldTable + $1596
*caseUnfold($2C6C) = ?caseUnfoldTable + $1599
*caseUnfold($2C6D) = ?caseUnfoldTable + $159C
*caseUnfold($0251) = ?caseUnfoldTable + $159F
*caseUnfold($2C6E) = ?caseUnfoldTable + $15A2
*caseUnfold($0271) = ?caseUnfoldTable + $15A5
*caseUnfold($2C6F) = ?caseUnfoldTable + $15A8
*caseUnfold($0250) = ?caseUnfoldTable + $15AB
*caseUnfold($2C70) = ?caseUnfoldTable + $15AE
*caseUnfold($0252) = ?caseUnfoldTable + $15B1
*caseUnfold($2C72) = ?caseUnfoldTable + $15B4
*caseUnfold($2C73) = ?caseUnfoldTable + $15B7
*caseUnfold($2C75) = ?caseUnfoldTable + $15BA
*caseUnfold($2C76) = ?caseUnfoldTable + $15BD
*caseUnfold($2C7E) = ?caseUnfoldTable + $15C0
*caseUnfold($023F) = ?caseUnfoldTable + $15C3
*caseUnfold($2C7F) = ?caseUnfoldTable + $15C6
*caseUnfold($0240) = ?caseUnfoldTable + $15C9
*caseUnfold($2C80) = ?caseUnfoldTable + $15CC
*caseUnfold($2C81) = ?caseUnfoldTable + $15CF
*caseUnfold($2C82) = ?caseUnfoldTable + $15D2
*caseUnfold($2C83) = ?caseUnfoldTable + $15D5
*caseUnfold($2C84) = ?caseUnfoldTable + $15D8
*caseUnfold($2C85) = ?caseUnfoldTable + $15DB
*caseUnfold($2C86) = ?caseUnfoldTable + $15DE
*caseUnfold($2C87) = ?caseUnfoldTable + $15E1
*caseUnfold($2C88) = ?caseUnfoldTable + $15E4
*caseUnfold($2C89) = ?caseUnfoldTable + $15E7
*caseUnfold($2C8A) = ?caseUnfoldTable + $15EA
*caseUnfold($2C8B) = ?caseUnfoldTable + $15ED
*caseUnfold($2C8C) = ?caseUnfoldTable + $15F0
*caseUnfold($2C8D) = ?caseUnfoldTable + $15F3
*caseUnfold($2C8E) = ?caseUnfoldTable + $15F6
*caseUnfold($2C8F) = ?caseUnfoldTable + $15F9
*caseUnfold($2C90) = ?caseUnfoldTable + $15FC
*caseUnfold($2C91) = ?caseUnfoldTable + $15FF
*caseUnfold($2C92) = ?caseUnfoldTable + $1602
*caseUnfold($2C93) = ?caseUnfoldTable + $1605
*caseUnfold($2C94) = ?caseUnfoldTable + $1608
*caseUnfold($2C95) = ?caseUnfoldTable + $160B
*caseUnfold($2C96) = ?caseUnfoldTable + $160E
*caseUnfold($2C97) = ?caseUnfoldTable + $1611
*caseUnfold($2C98) = ?caseUnfoldTable + $1614
*caseUnfold($2C99) = ?caseUnfoldTable + $1617
*caseUnfold($2C9A) = ?caseUnfoldTable + $161A
*caseUnfold($2C9B) = ?caseUnfoldTable + $161D
*caseUnfold($2C9C) = ?caseUnfoldTable + $1620
*caseUnfold($2C9D) = ?caseUnfoldTable + $1623
*caseUnfold($2C9E) = ?caseUnfoldTable + $1626
*caseUnfold($2C9F) = ?caseUnfoldTable + $1629
*caseUnfold($2CA0) = ?caseUnfoldTable + $162C
*caseUnfold($2CA1) = ?caseUnfoldTable + $162F
*caseUnfold($2CA2) = ?caseUnfoldTable + $1632
*caseUnfold($2CA3) = ?caseUnfoldTable + $1635
*caseUnfold($2CA4) = ?caseUnfoldTable + $1638
*caseUnfold($2CA5) = ?caseUnfoldTable + $163B
*caseUnfold($2CA6) = ?caseUnfoldTable + $163E
*caseUnfold($2CA7) = ?caseUnfoldTable + $1641
*caseUnfold($2CA8) = ?caseUnfoldTable + $1644
*caseUnfold($2CA9) = ?caseUnfoldTable + $1647
*caseUnfold($2CAA) = ?caseUnfoldTable + $164A
*caseUnfold($2CAB) = ?caseUnfoldTable + $164D
*caseUnfold($2CAC) = ?caseUnfoldTable + $1650
*caseUnfold($2CAD) = ?caseUnfoldTable + $1653
*caseUnfold($2CAE) = ?caseUnfoldTable + $1656
*caseUnfold($2CAF) = ?caseUnfoldTable + $1659
*caseUnfold($2CB0) = ?caseUnfoldTable + $165C
*caseUnfold($2CB1) = ?caseUnfoldTable + $165F
*caseUnfold($2CB2) = ?caseUnfoldTable + $1662
*caseUnfold($2CB3) = ?caseUnfoldTable + $1665
*caseUnfold($2CB4) = ?caseUnfoldTable + $1668
*caseUnfold($2CB5) = ?caseUnfoldTable + $166B
*caseUnfold($2CB6) = ?caseUnfoldTable + $166E
*caseUnfold($2CB7) = ?caseUnfoldTable + $1671
*caseUnfold($2CB8) = ?caseUnfoldTable + $1674
*caseUnfold($2CB9) = ?caseUnfoldTable + $1677
*caseUnfold($2CBA) = ?caseUnfoldTable + $167A
*caseUnfold($2CBB) = ?caseUnfoldTable + $167D
*caseUnfold($2CBC) = ?caseUnfoldTable + $1680
*caseUnfold($2CBD) = ?caseUnfoldTable + $1683
*caseUnfold($2CBE) = ?caseUnfoldTable + $1686
*caseUnfold($2CBF) = ?caseUnfoldTable + $1689
*caseUnfold($2CC0) = ?caseUnfoldTable + $168C
*caseUnfold($2CC1) = ?caseUnfoldTable + $168F
*caseUnfold($2CC2) = ?caseUnfoldTable + $1692
*caseUnfold($2CC3) = ?caseUnfoldTable + $1695
*caseUnfold($2CC4) = ?caseUnfoldTable + $1698
*caseUnfold($2CC5) = ?caseUnfoldTable + $169B
*caseUnfold($2CC6) = ?caseUnfoldTable + $169E
*caseUnfold($2CC7) = ?caseUnfoldTable + $16A1
*caseUnfold($2CC8) = ?caseUnfoldTable + $16A4
*caseUnfold($2CC9) = ?caseUnfoldTable + $16A7
*caseUnfold($2CCA) = ?caseUnfoldTable + $16AA
*caseUnfold($2CCB) = ?caseUnfoldTable + $16AD
*caseUnfold($2CCC) = ?caseUnfoldTable + $16B0
*caseUnfold($2CCD) = ?caseUnfoldTable + $16B3
*caseUnfold($2CCE) = ?caseUnfoldTable + $16B6
*caseUnfold($2CCF) = ?caseUnfoldTable + $16B9
*caseUnfold($2CD0) = ?caseUnfoldTable + $16BC
*caseUnfold($2CD1) = ?caseUnfoldTable + $16BF
*caseUnfold($2CD2) = ?caseUnfoldTable + $16C2
*caseUnfold($2CD3) = ?caseUnfoldTable + $16C5
*caseUnfold($2CD4) = ?caseUnfoldTable + $16C8
*caseUnfold($2CD5) = ?caseUnfoldTable + $16CB
*caseUnfold($2CD6) = ?caseUnfoldTable + $16CE
*caseUnfold($2CD7) = ?caseUnfoldTable + $16D1
*caseUnfold($2CD8) = ?caseUnfoldTable + $16D4
*caseUnfold($2CD9) = ?caseUnfoldTable + $16D7
*caseUnfold($2CDA) = ?caseUnfoldTable + $16DA
*caseUnfold($2CDB) = ?caseUnfoldTable + $16DD
*caseUnfold($2CDC) = ?caseUnfoldTable + $16E0
*caseUnfold($2CDD) = ?caseUnfoldTable + $16E3
*caseUnfold($2CDE) = ?caseUnfoldTable + $16E6
*caseUnfold($2CDF) = ?caseUnfoldTable + $16E9
*caseUnfold($2CE0) = ?caseUnfoldTable + $16EC
*caseUnfold($2CE1) = ?caseUnfoldTable + $16EF
*caseUnfold($2CE2) = ?caseUnfoldTable + $16F2
*caseUnfold($2CE3) = ?caseUnfoldTable + $16F5
*caseUnfold($2CEB) = ?caseUnfoldTable + $16F8
*caseUnfold($2CEC) = ?caseUnfoldTable + $16FB
*caseUnfold($2CED) = ?caseUnfoldTable + $16FE
*caseUnfold($2CEE) = ?caseUnfoldTable + $1701
*caseUnfold($2CF2) = ?caseUnfoldTable + $1704
*caseUnfold($2CF3) = ?caseUnfoldTable + $1707
*caseUnfold($A640) = ?caseUnfoldTable + $170A
*caseUnfold($A641) = ?caseUnfoldTable + $170D
*caseUnfold($A642) = ?caseUnfoldTable + $1710
*caseUnfold($A643) = ?caseUnfoldTable + $1713
*caseUnfold($A644) = ?caseUnfoldTable + $1716
*caseUnfold($A645) = ?caseUnfoldTable + $1719
*caseUnfold($A646) = ?caseUnfoldTable + $171C
*caseUnfold($A647) = ?caseUnfoldTable + $171F
*caseUnfold($A648) = ?caseUnfoldTable + $1722
*caseUnfold($A649) = ?caseUnfoldTable + $1725
*caseUnfold($A64C) = ?caseUnfoldTable + $1728
*caseUnfold($A64D) = ?caseUnfoldTable + $172B
*caseUnfold($A64E) = ?caseUnfoldTable + $172E
*caseUnfold($A64F) = ?caseUnfoldTable + $1731
*caseUnfold($A650) = ?caseUnfoldTable + $1734
*caseUnfold($A651) = ?caseUnfoldTable + $1737
*caseUnfold($A652) = ?caseUnfoldTable + $173A
*caseUnfold($A653) = ?caseUnfoldTable + $173D
*caseUnfold($A654) = ?caseUnfoldTable + $1740
*caseUnfold($A655) = ?caseUnfoldTable + $1743
*caseUnfold($A656) = ?caseUnfoldTable + $1746
*caseUnfold($A657) = ?caseUnfoldTable + $1749
*caseUnfold($A658) = ?caseUnfoldTable + $174C
*caseUnfold($A659) = ?caseUnfoldTable + $174F
*caseUnfold($A65A) = ?caseUnfoldTable + $1752
*caseUnfold($A65B) = ?caseUnfoldTable + $1755
*caseUnfold($A65C) = ?caseUnfoldTable + $1758
*caseUnfold($A65D) = ?caseUnfoldTable + $175B
*caseUnfold($A65E) = ?caseUnfoldTable + $175E
*caseUnfold($A65F) = ?caseUnfoldTable + $1761
*caseUnfold($A660) = ?caseUnfoldTable + $1764
*caseUnfold($A661) = ?caseUnfoldTable + $1767
*caseUnfold($A662) = ?caseUnfoldTable + $176A
*caseUnfold($A663) = ?caseUnfoldTable + $176D
*caseUnfold($A664) = ?caseUnfoldTable + $1770
*caseUnfold($A665) = ?caseUnfoldTable + $1773
*caseUnfold($A666) = ?caseUnfoldTable + $1776
*caseUnfold($A667) = ?caseUnfoldTable + $1779
*caseUnfold($A668) = ?caseUnfoldTable + $177C
*caseUnfold($A669) = ?caseUnfoldTable + $177F
*caseUnfold($A66A) = ?caseUnfoldTable + $1782
*caseUnfold($A66B) = ?caseUnfoldTable + $1785
*caseUnfold($A66C) = ?caseUnfoldTable + $1788
*caseUnfold($A66D) = ?caseUnfoldTable + $178B
*caseUnfold($A680) = ?caseUnfoldTable + $178E
*caseUnfold($A681) = ?caseUnfoldTable + $1791
*caseUnfold($A682) = ?caseUnfoldTable + $1794
*caseUnfold($A683) = ?caseUnfoldTable + $1797
*caseUnfold($A684) = ?caseUnfoldTable + $179A
*caseUnfold($A685) = ?caseUnfoldTable + $179D
*caseUnfold($A686) = ?caseUnfoldTable + $17A0
*caseUnfold($A687) = ?caseUnfoldTable + $17A3
*caseUnfold($A688) = ?caseUnfoldTable + $17A6
*caseUnfold($A689) = ?caseUnfoldTable + $17A9
*caseUnfold($A68A) = ?caseUnfoldTable + $17AC
*caseUnfold($A68B) = ?caseUnfoldTable + $17AF
*caseUnfold($A68C) = ?caseUnfoldTable + $17B2
*caseUnfold($A68D) = ?caseUnfoldTable + $17B5
*caseUnfold($A68E) = ?caseUnfoldTable + $17B8
*caseUnfold($A68F) = ?caseUnfoldTable + $17BB
*caseUnfold($A690) = ?caseUnfoldTable + $17BE
*caseUnfold($A691) = ?caseUnfoldTable + $17C1
*caseUnfold($A692) = ?caseUnfoldTable + $17C4
*caseUnfold($A693) = ?caseUnfoldTable + $17C7
*caseUnfold($A694) = ?caseUnfoldTable + $17CA
*caseUnfold($A695) = ?caseUnfoldTable + $17CD
*caseUnfold($A696) = ?caseUnfoldTable + $17D0
*caseUnfold($A697) = ?caseUnfoldTable + $17D3
*caseUnfold($A698) = ?caseUnfoldTable + $17D6
*caseUnfold($A699) = ?caseUnfoldTable + $17D9
*caseUnfold($A69A) = ?caseUnfoldTable + $17DC
*caseUnfold($A69B) = ?caseUnfoldTable + $17DF
*caseUnfold($A722) = ?caseUnfoldTable + $17E2
*caseUnfold($A723) = ?caseUnfoldTable + $17E5
*caseUnfold($A724) = ?caseUnfoldTable + $17E8
*caseUnfold($A725) = ?caseUnfoldTable + $17EB
*caseUnfold($A726) = ?caseUnfoldTable + $17EE
*caseUnfold($A727) = ?caseUnfoldTable + $17F1
*caseUnfold($A728) = ?caseUnfoldTable + $17F4
*caseUnfold($A729) = ?caseUnfoldTable + $17F7
*caseUnfold($A72A) = ?caseUnfoldTable + $17FA
*caseUnfold($A72B) = ?caseUnfoldTable + $17FD
*caseUnfold($A72C) = ?caseUnfoldTable + $1800
*caseUnfold($A72D) = ?caseUnfoldTable + $1803
*caseUnfold($A72E) = ?caseUnfoldTable + $1806
*caseUnfold($A72F) = ?caseUnfoldTable + $1809
*caseUnfold($A732) = ?caseUnfoldTable + $180C
*caseUnfold($A733) = ?caseUnfoldTable + $180F
*caseUnfold($A734) = ?caseUnfoldTable + $1812
*caseUnfold($A735) = ?caseUnfoldTable + $1815
*caseUnfold($A736) = ?caseUnfoldTable + $1818
*caseUnfold($A737) = ?caseUnfoldTable + $181B
*caseUnfold($A738) = ?caseUnfoldTable + $181E
*caseUnfold($A739) = ?caseUnfoldTable + $1821
*caseUnfold($A73A) = ?caseUnfoldTable + $1824
*caseUnfold($A73B) = ?caseUnfoldTable + $1827
*caseUnfold($A73C) = ?caseUnfoldTable + $182A
*caseUnfold($A73D) = ?caseUnfoldTable + $182D
*caseUnfold($A73E) = ?caseUnfoldTable + $1830
*caseUnfold($A73F) = ?caseUnfoldTable + $1833
*caseUnfold($A740) = ?caseUnfoldTable + $1836
*caseUnfold($A741) = ?caseUnfoldTable + $1839
*caseUnfold($A742) = ?caseUnfoldTable + $183C
*caseUnfold($A743) = ?caseUnfoldTable + $183F
*caseUnfold($A744) = ?caseUnfoldTable + $1842
*caseUnfold($A745) = ?caseUnfoldTable + $1845
*caseUnfold($A746) = ?caseUnfoldTable + $1848
*caseUnfold($A747) = ?caseUnfoldTable + $184B
*caseUnfold($A748) = ?caseUnfoldTable + $184E
*caseUnfold($A749) = ?caseUnfoldTable + $1851
*caseUnfold($A74A) = ?caseUnfoldTable + $1854
*caseUnfold($A74B) = ?caseUnfoldTable + $1857
*caseUnfold($A74C) = ?caseUnfoldTable + $185A
*caseUnfold($A74D) = ?caseUnfoldTable + $185D
*caseUnfold($A74E) = ?caseUnfoldTable + $1860
*caseUnfold($A74F) = ?caseUnfoldTable + $1863
*caseUnfold($A750) = ?caseUnfoldTable + $1866
*caseUnfold($A751) = ?caseUnfoldTable + $1869
*caseUnfold($A752) = ?caseUnfoldTable + $186C
*caseUnfold($A753) = ?caseUnfoldTable + $186F
*caseUnfold($A754) = ?caseUnfoldTable + $1872
*caseUnfold($A755) = ?caseUnfoldTable + $1875
*caseUnfold($A756) = ?caseUnfoldTable + $1878
*caseUnfold($A757) = ?caseUnfoldTable + $187B
*caseUnfold($A758) = ?caseUnfoldTable + $187E
*caseUnfold($A759) = ?caseUnfoldTable + $1881
*caseUnfold($A75A) = ?caseUnfoldTable + $1884
*caseUnfold($A75B) = ?caseUnfoldTable + $1887
*caseUnfold($A75C) = ?caseUnfoldTable + $188A
*caseUnfold($A75D) = ?caseUnfoldTable + $188D
*caseUnfold($A75E) = ?caseUnfoldTable + $1890
*caseUnfold($A75F) = ?caseUnfoldTable + $1893
*caseUnfold($A760) = ?caseUnfoldTable + $1896
*caseUnfold($A761) = ?caseUnfoldTable + $1899
*caseUnfold($A762) = ?caseUnfoldTable + $189C
*caseUnfold($A763) = ?caseUnfoldTable + $189F
*caseUnfold($A764) = ?caseUnfoldTable + $18A2
*caseUnfold($A765) = ?caseUnfoldTable + $18A5
*caseUnfold($A766) = ?caseUnfoldTable + $18A8
*caseUnfold($A767) = ?caseUnfoldTable + $18AB
*caseUnfold($A768) = ?caseUnfoldTable + $18AE
*caseUnfold($A769) = ?caseUnfoldTable + $18B1
*caseUnfold($A76A) = ?caseUnfoldTable + $18B4
*caseUnfold($A76B) = ?caseUnfoldTable + $18B7
*caseUnfold($A76C) = ?caseUnfoldTable + $18BA
*caseUnfold($A76D) = ?caseUnfoldTable + $18BD
*caseUnfold($A76E) = ?caseUnfoldTable + $18C0
*caseUnfold($A76F) = ?caseUnfoldTable + $18C3
*caseUnfold($A779) = ?caseUnfoldTable + $18C6
*caseUnfold($A77A) = ?caseUnfoldTable + $18C9
*caseUnfold($A77B) = ?caseUnfoldTable + $18CC
*caseUnfold($A77C) = ?caseUnfoldTable + $18CF
*caseUnfold($A77D) = ?caseUnfoldTable + $18D2
*caseUnfold($1D79) = ?caseUnfoldTable + $18D5
*caseUnfold($A77E) = ?caseUnfoldTable + $18D8
*caseUnfold($A77F) = ?caseUnfoldTable + $18DB
*caseUnfold($A780) = ?caseUnfoldTable + $18DE
*caseUnfold($A781) = ?caseUnfoldTable + $18E1
*caseUnfold($A782) = ?caseUnfoldTable + $18E4
*caseUnfold($A783) = ?caseUnfoldTable + $18E7
*caseUnfold($A784) = ?caseUnfoldTable + $18EA
*caseUnfold($A785) = ?caseUnfoldTable + $18ED
*caseUnfold($A786) = ?caseUnfoldTable + $18F0
*caseUnfold($A787) = ?caseUnfoldTable + $18F3
*caseUnfold($A78B) = ?caseUnfoldTable + $18F6
*caseUnfold($A78C) = ?caseUnfoldTable + $18F9
*caseUnfold($A78D) = ?caseUnfoldTable + $18FC
*caseUnfold($0265) = ?caseUnfoldTable + $18FF
*caseUnfold($A790) = ?caseUnfoldTable + $1902
*caseUnfold($A791) = ?caseUnfoldTable + $1905
*caseUnfold($A792) = ?caseUnfoldTable + $1908
*caseUnfold($A793) = ?caseUnfoldTable + $190B
*caseUnfold($A796) = ?caseUnfoldTable + $190E
*caseUnfold($A797) = ?caseUnfoldTable + $1911
*caseUnfold($A798) = ?caseUnfoldTable + $1914
*caseUnfold($A799) = ?caseUnfoldTable + $1917
*caseUnfold($A79A) = ?caseUnfoldTable + $191A
*caseUnfold($A79B) = ?caseUnfoldTable + $191D
*caseUnfold($A79C) = ?caseUnfoldTable + $1920
*caseUnfold($A79D) = ?caseUnfoldTable + $1923
*caseUnfold($A79E) = ?caseUnfoldTable + $1926
*caseUnfold($A79F) = ?caseUnfoldTable + $1929
*caseUnfold($A7A0) = ?caseUnfoldTable + $192C
*caseUnfold($A7A1) = ?caseUnfoldTable + $192F
*caseUnfold($A7A2) = ?caseUnfoldTable + $1932
*caseUnfold($A7A3) = ?caseUnfoldTable + $1935
*caseUnfold($A7A4) = ?caseUnfoldTable + $1938
*caseUnfold($A7A5) = ?caseUnfoldTable + $193B
*caseUnfold($A7A6) = ?caseUnfoldTable + $193E
*caseUnfold($A7A7) = ?caseUnfoldTable + $1941
*caseUnfold($A7A8) = ?caseUnfoldTable + $1944
*caseUnfold($A7A9) = ?caseUnfoldTable + $1947
*caseUnfold($A7AA) = ?caseUnfoldTable + $194A
*caseUnfold($0266) = ?caseUnfoldTable + $194D
*caseUnfold($A7AB) = ?caseUnfoldTable + $1950
*caseUnfold($025C) = ?caseUnfoldTable + $1953
*caseUnfold($A7AC) = ?caseUnfoldTable + $1956
*caseUnfold($0261) = ?caseUnfoldTable + $1959
*caseUnfold($A7AD) = ?caseUnfoldTable + $195C
*caseUnfold($026C) = ?caseUnfoldTable + $195F
*caseUnfold($A7AE) = ?caseUnfoldTable + $1962
*caseUnfold($026A) = ?caseUnfoldTable + $1965
*caseUnfold($A7B0) = ?caseUnfoldTable + $1968
*caseUnfold($029E) = ?caseUnfoldTable + $196B
*caseUnfold($A7B1) = ?caseUnfoldTable + $196E
*caseUnfold($0287) = ?caseUnfoldTable + $1971
*caseUnfold($A7B2) = ?caseUnfoldTable + $1974
*caseUnfold($029D) = ?caseUnfoldTable + $1977
*caseUnfold($A7B3) = ?caseUnfoldTable + $197A
*caseUnfold($AB53) = ?caseUnfoldTable + $197D
*caseUnfold($A7B4) = ?caseUnfoldTable + $1980
*caseUnfold($A7B5) = ?caseUnfoldTable + $1983
*caseUnfold($A7B6) = ?caseUnfoldTable + $1986
*caseUnfold($A7B7) = ?caseUnfoldTable + $1989
*caseUnfold($A7B8) = ?caseUnfoldTable + $198C
*caseUnfold($A7B9) = ?caseUnfoldTable + $198F
*caseUnfold($A7BA) = ?caseUnfoldTable + $1992
*caseUnfold($A7BB) = ?caseUnfoldTable + $1995
*caseUnfold($A7BC) = ?caseUnfoldTable + $1998
*caseUnfold($A7BD) = ?caseUnfoldTable + $199B
*caseUnfold($A7BE) = ?caseUnfoldTable + $199E
*caseUnfold($A7BF) = ?caseUnfoldTable + $19A1
*caseUnfold($A7C0) = ?caseUnfoldTable + $19A4
*caseUnfold($A7C1) = ?caseUnfoldTable + $19A7
*caseUnfold($A7C2) = ?caseUnfoldTable + $19AA
*caseUnfold($A7C3) = ?caseUnfoldTable + $19AD
*caseUnfold($A7C4) = ?caseUnfoldTable + $19B0
*caseUnfold($A794) = ?caseUnfoldTable + $19B3
*caseUnfold($A7C5) = ?caseUnfoldTable + $19B6
*caseUnfold($0282) = ?caseUnfoldTable + $19B9
*caseUnfold($A7C6) = ?caseUnfoldTable + $19BC
*caseUnfold($1D8E) = ?caseUnfoldTable + $19BF
*caseUnfold($A7C7) = ?caseUnfoldTable + $19C2
*caseUnfold($A7C8) = ?caseUnfoldTable + $19C5
*caseUnfold($A7C9) = ?caseUnfoldTable + $19C8
*caseUnfold($A7CA) = ?caseUnfoldTable + $19CB
*caseUnfold($A7D0) = ?caseUnfoldTable + $19CE
*caseUnfold($A7D1) = ?caseUnfoldTable + $19D1
*caseUnfold($A7D6) = ?caseUnfoldTable + $19D4
*caseUnfold($A7D7) = ?caseUnfoldTable + $19D7
*caseUnfold($A7D8) = ?caseUnfoldTable + $19DA
*caseUnfold($A7D9) = ?caseUnfoldTable + $19DD
*caseUnfold($A7F5) = ?caseUnfoldTable + $19E0
*caseUnfold($A7F6) = ?caseUnfoldTable + $19E3
*caseUnfold($AB70) = ?caseUnfoldTable + $19E6
*caseUnfold($13A0) = ?caseUnfoldTable + $19E9
*caseUnfold($AB71) = ?caseUnfoldTable + $19EC
*caseUnfold($13A1) = ?caseUnfoldTable + $19EF
*caseUnfold($AB72) = ?caseUnfoldTable + $19F2
*caseUnfold($13A2) = ?caseUnfoldTable + $19F5
*caseUnfold($AB73) = ?caseUnfoldTable + $19F8
*caseUnfold($13A3) = ?caseUnfoldTable + $19FB
*caseUnfold($AB74) = ?caseUnfoldTable + $19FE
*caseUnfold($13A4) = ?caseUnfoldTable + $1A01
*caseUnfold($AB75) = ?caseUnfoldTable + $1A04
*caseUnfold($13A5) = ?caseUnfoldTable + $1A07
*caseUnfold($AB76) = ?caseUnfoldTable + $1A0A
*caseUnfold($13A6) = ?caseUnfoldTable + $1A0D
*caseUnfold($AB77) = ?caseUnfoldTable + $1A10
*caseUnfold($13A7) = ?caseUnfoldTable + $1A13
*caseUnfold($AB78) = ?caseUnfoldTable + $1A16
*caseUnfold($13A8) = ?caseUnfoldTable + $1A19
*caseUnfold($AB79) = ?caseUnfoldTable + $1A1C
*caseUnfold($13A9) = ?caseUnfoldTable + $1A1F
*caseUnfold($AB7A) = ?caseUnfoldTable + $1A22
*caseUnfold($13AA) = ?caseUnfoldTable + $1A25
*caseUnfold($AB7B) = ?caseUnfoldTable + $1A28
*caseUnfold($13AB) = ?caseUnfoldTable + $1A2B
*caseUnfold($AB7C) = ?caseUnfoldTable + $1A2E
*caseUnfold($13AC) = ?caseUnfoldTable + $1A31
*caseUnfold($AB7D) = ?caseUnfoldTable + $1A34
*caseUnfold($13AD) = ?caseUnfoldTable + $1A37
*caseUnfold($AB7E) = ?caseUnfoldTable + $1A3A
*caseUnfold($13AE) = ?caseUnfoldTable + $1A3D
*caseUnfold($AB7F) = ?caseUnfoldTable + $1A40
*caseUnfold($13AF) = ?caseUnfoldTable + $1A43
*caseUnfold($AB80) = ?caseUnfoldTable + $1A46
*caseUnfold($13B0) = ?caseUnfoldTable + $1A49
*caseUnfold($AB81) = ?caseUnfoldTable + $1A4C
*caseUnfold($13B1) = ?caseUnfoldTable + $1A4F
*caseUnfold($AB82) = ?caseUnfoldTable + $1A52
*caseUnfold($13B2) = ?caseUnfoldTable + $1A55
*caseUnfold($AB83) = ?caseUnfoldTable + $1A58
*caseUnfold($13B3) = ?caseUnfoldTable + $1A5B
*caseUnfold($AB84) = ?caseUnfoldTable + $1A5E
*caseUnfold($13B4) = ?caseUnfoldTable + $1A61
*caseUnfold($AB85) = ?caseUnfoldTable + $1A64
*caseUnfold($13B5) = ?caseUnfoldTable + $1A67
*caseUnfold($AB86) = ?caseUnfoldTable + $1A6A
*caseUnfold($13B6) = ?caseUnfoldTable + $1A6D
*caseUnfold($AB87) = ?caseUnfoldTable + $1A70
*caseUnfold($13B7) = ?caseUnfoldTable + $1A73
*caseUnfold($AB88) = ?caseUnfoldTable + $1A76
*caseUnfold($13B8) = ?caseUnfoldTable + $1A79
*caseUnfold($AB89) = ?caseUnfoldTable + $1A7C
*caseUnfold($13B9) = ?caseUnfoldTable + $1A7F
*caseUnfold($AB8A) = ?caseUnfoldTable + $1A82
*caseUnfold($13BA) = ?caseUnfoldTable + $1A85
*caseUnfold($AB8B) = ?caseUnfoldTable + $1A88
*caseUnfold($13BB) = ?caseUnfoldTable + $1A8B
*caseUnfold($AB8C) = ?caseUnfoldTable + $1A8E
*caseUnfold($13BC) = ?caseUnfoldTable + $1A91
*caseUnfold($AB8D) = ?caseUnfoldTable + $1A94
*caseUnfold($13BD) = ?caseUnfoldTable + $1A97
*caseUnfold($AB8E) = ?caseUnfoldTable + $1A9A
*caseUnfold($13BE) = ?caseUnfoldTable + $1A9D
*caseUnfold($AB8F) = ?caseUnfoldTable + $1AA0
*caseUnfold($13BF) = ?caseUnfoldTable + $1AA3
*caseUnfold($AB90) = ?caseUnfoldTable + $1AA6
*caseUnfold($13C0) = ?caseUnfoldTable + $1AA9
*caseUnfold($AB91) = ?caseUnfoldTable + $1AAC
*caseUnfold($13C1) = ?caseUnfoldTable + $1AAF
*caseUnfold($AB92) = ?caseUnfoldTable + $1AB2
*caseUnfold($13C2) = ?caseUnfoldTable + $1AB5
*caseUnfold($AB93) = ?caseUnfoldTable + $1AB8
*caseUnfold($13C3) = ?caseUnfoldTable + $1ABB
*caseUnfold($AB94) = ?caseUnfoldTable + $1ABE
*caseUnfold($13C4) = ?caseUnfoldTable + $1AC1
*caseUnfold($AB95) = ?caseUnfoldTable + $1AC4
*caseUnfold($13C5) = ?caseUnfoldTable + $1AC7
*caseUnfold($AB96) = ?caseUnfoldTable + $1ACA
*caseUnfold($13C6) = ?caseUnfoldTable + $1ACD
*caseUnfold($AB97) = ?caseUnfoldTable + $1AD0
*caseUnfold($13C7) = ?caseUnfoldTable + $1AD3
*caseUnfold($AB98) = ?caseUnfoldTable + $1AD6
*caseUnfold($13C8) = ?caseUnfoldTable + $1AD9
*caseUnfold($AB99) = ?caseUnfoldTable + $1ADC
*caseUnfold($13C9) = ?caseUnfoldTable + $1ADF
*caseUnfold($AB9A) = ?caseUnfoldTable + $1AE2
*caseUnfold($13CA) = ?caseUnfoldTable + $1AE5
*caseUnfold($AB9B) = ?caseUnfoldTable + $1AE8
*caseUnfold($13CB) = ?caseUnfoldTable + $1AEB
*caseUnfold($AB9C) = ?caseUnfoldTable + $1AEE
*caseUnfold($13CC) = ?caseUnfoldTable + $1AF1
*caseUnfold($AB9D) = ?caseUnfoldTable + $1AF4
*caseUnfold($13CD) = ?caseUnfoldTable + $1AF7
*caseUnfold($AB9E) = ?caseUnfoldTable + $1AFA
*caseUnfold($13CE) = ?caseUnfoldTable + $1AFD
*caseUnfold($AB9F) = ?caseUnfoldTable + $1B00
*caseUnfold($13CF) = ?caseUnfoldTable + $1B03
*caseUnfold($ABA0) = ?caseUnfoldTable + $1B06
*caseUnfold($13D0) = ?caseUnfoldTable + $1B09
*caseUnfold($ABA1) = ?caseUnfoldTable + $1B0C
*caseUnfold($13D1) = ?caseUnfoldTable + $1B0F
*caseUnfold($ABA2) = ?caseUnfoldTable + $1B12
*caseUnfold($13D2) = ?caseUnfoldTable + $1B15
*caseUnfold($ABA3) = ?caseUnfoldTable + $1B18
*caseUnfold($13D3) = ?caseUnfoldTable + $1B1B
*caseUnfold($ABA4) = ?caseUnfoldTable + $1B1E
*caseUnfold($13D4) = ?caseUnfoldTable + $1B21
*caseUnfold($ABA5) = ?caseUnfoldTable + $1B24
*caseUnfold($13D5) = ?caseUnfoldTable + $1B27
*caseUnfold($ABA6) = ?caseUnfoldTable + $1B2A
*caseUnfold($13D6) = ?caseUnfoldTable + $1B2D
*caseUnfold($ABA7) = ?caseUnfoldTable + $1B30
*caseUnfold($13D7) = ?caseUnfoldTable + $1B33
*caseUnfold($ABA8) = ?caseUnfoldTable + $1B36
*caseUnfold($13D8) = ?caseUnfoldTable + $1B39
*caseUnfold($ABA9) = ?caseUnfoldTable + $1B3C
*caseUnfold($13D9) = ?caseUnfoldTable + $1B3F
*caseUnfold($ABAA) = ?caseUnfoldTable + $1B42
*caseUnfold($13DA) = ?caseUnfoldTable + $1B45
*caseUnfold($ABAB) = ?caseUnfoldTable + $1B48
*caseUnfold($13DB) = ?caseUnfoldTable + $1B4B
*caseUnfold($ABAC) = ?caseUnfoldTable + $1B4E
*caseUnfold($13DC) = ?caseUnfoldTable + $1B51
*caseUnfold($ABAD) = ?caseUnfoldTable + $1B54
*caseUnfold($13DD) = ?caseUnfoldTable + $1B57
*caseUnfold($ABAE) = ?caseUnfoldTable + $1B5A
*caseUnfold($13DE) = ?caseUnfoldTable + $1B5D
*caseUnfold($ABAF) = ?caseUnfoldTable + $1B60
*caseUnfold($13DF) = ?caseUnfoldTable + $1B63
*caseUnfold($ABB0) = ?caseUnfoldTable + $1B66
*caseUnfold($13E0) = ?caseUnfoldTable + $1B69
*caseUnfold($ABB1) = ?caseUnfoldTable + $1B6C
*caseUnfold($13E1) = ?caseUnfoldTable + $1B6F
*caseUnfold($ABB2) = ?caseUnfoldTable + $1B72
*caseUnfold($13E2) = ?caseUnfoldTable + $1B75
*caseUnfold($ABB3) = ?caseUnfoldTable + $1B78
*caseUnfold($13E3) = ?caseUnfoldTable + $1B7B
*caseUnfold($ABB4) = ?caseUnfoldTable + $1B7E
*caseUnfold($13E4) = ?caseUnfoldTable + $1B81
*caseUnfold($ABB5) = ?caseUnfoldTable + $1B84
*caseUnfold($13E5) = ?caseUnfoldTable + $1B87
*caseUnfold($ABB6) = ?caseUnfoldTable + $1B8A
*caseUnfold($13E6) = ?caseUnfoldTable + $1B8D
*caseUnfold($ABB7) = ?caseUnfoldTable + $1B90
*caseUnfold($13E7) = ?caseUnfoldTable + $1B93
*caseUnfold($ABB8) = ?caseUnfoldTable + $1B96
*caseUnfold($13E8) = ?caseUnfoldTable + $1B99
*caseUnfold($ABB9) = ?caseUnfoldTable + $1B9C
*caseUnfold($13E9) = ?caseUnfoldTable + $1B9F
*caseUnfold($ABBA) = ?caseUnfoldTable + $1BA2
*caseUnfold($13EA) = ?caseUnfoldTable + $1BA5
*caseUnfold($ABBB) = ?caseUnfoldTable + $1BA8
*caseUnfold($13EB) = ?caseUnfoldTable + $1BAB
*caseUnfold($ABBC) = ?caseUnfoldTable + $1BAE
*caseUnfold($13EC) = ?caseUnfoldTable + $1BB1
*caseUnfold($ABBD) = ?caseUnfoldTable + $1BB4
*caseUnfold($13ED) = ?caseUnfoldTable + $1BB7
*caseUnfold($ABBE) = ?caseUnfoldTable + $1BBA
*caseUnfold($13EE) = ?caseUnfoldTable + $1BBD
*caseUnfold($ABBF) = ?caseUnfoldTable + $1BC0
*caseUnfold($13EF) = ?caseUnfoldTable + $1BC3
*caseUnfold($FF21) = ?caseUnfoldTable + $1BC6
*caseUnfold($FF41) = ?caseUnfoldTable + $1BC9
*caseUnfold($FF22) = ?caseUnfoldTable + $1BCC
*caseUnfold($FF42) = ?caseUnfoldTable + $1BCF
*caseUnfold($FF23) = ?caseUnfoldTable + $1BD2
*caseUnfold($FF43) = ?caseUnfoldTable + $1BD5
*caseUnfold($FF24) = ?caseUnfoldTable + $1BD8
*caseUnfold($FF44) = ?caseUnfoldTable + $1BDB
*caseUnfold($FF25) = ?caseUnfoldTable + $1BDE
*caseUnfold($FF45) = ?caseUnfoldTable + $1BE1
*caseUnfold($FF26) = ?caseUnfoldTable + $1BE4
*caseUnfold($FF46) = ?caseUnfoldTable + $1BE7
*caseUnfold($FF27) = ?caseUnfoldTable + $1BEA
*caseUnfold($FF47) = ?caseUnfoldTable + $1BED
*caseUnfold($FF28) = ?caseUnfoldTable + $1BF0
*caseUnfold($FF48) = ?caseUnfoldTable + $1BF3
*caseUnfold($FF29) = ?caseUnfoldTable + $1BF6
*caseUnfold($FF49) = ?caseUnfoldTable + $1BF9
*caseUnfold($FF2A) = ?caseUnfoldTable + $1BFC
*caseUnfold($FF4A) = ?caseUnfoldTable + $1BFF
*caseUnfold($FF2B) = ?caseUnfoldTable + $1C02
*caseUnfold($FF4B) = ?caseUnfoldTable + $1C05
*caseUnfold($FF2C) = ?caseUnfoldTable + $1C08
*caseUnfold($FF4C) = ?caseUnfoldTable + $1C0B
*caseUnfold($FF2D) = ?caseUnfoldTable + $1C0E
*caseUnfold($FF4D) = ?caseUnfoldTable + $1C11
*caseUnfold($FF2E) = ?caseUnfoldTable + $1C14
*caseUnfold($FF4E) = ?caseUnfoldTable + $1C17
*caseUnfold($FF2F) = ?caseUnfoldTable + $1C1A
*caseUnfold($FF4F) = ?caseUnfoldTable + $1C1D
*caseUnfold($FF30) = ?caseUnfoldTable + $1C20
*caseUnfold($FF50) = ?caseUnfoldTable + $1C23
*caseUnfold($FF31) = ?caseUnfoldTable + $1C26
*caseUnfold($FF51) = ?caseUnfoldTable + $1C29
*caseUnfold($FF32) = ?caseUnfoldTable + $1C2C
*caseUnfold($FF52) = ?caseUnfoldTable + $1C2F
*caseUnfold($FF33) = ?caseUnfoldTable + $1C32
*caseUnfold($FF53) = ?caseUnfoldTable + $1C35
*caseUnfold($FF34) = ?caseUnfoldTable + $1C38
*caseUnfold($FF54) = ?caseUnfoldTable + $1C3B
*caseUnfold($FF35) = ?caseUnfoldTable + $1C3E
*caseUnfold($FF55) = ?caseUnfoldTable + $1C41
*caseUnfold($FF36) = ?caseUnfoldTable + $1C44
*caseUnfold($FF56) = ?caseUnfoldTable + $1C47
*caseUnfold($FF37) = ?caseUnfoldTable + $1C4A
*caseUnfold($FF57) = ?caseUnfoldTable + $1C4D
*caseUnfold($FF38) = ?caseUnfoldTable + $1C50
*caseUnfold($FF58) = ?caseUnfoldTable + $1C53
*caseUnfold($FF39) = ?caseUnfoldTable + $1C56
*caseUnfold($FF59) = ?caseUnfoldTable + $1C59
*caseUnfold($FF3A) = ?caseUnfoldTable + $1C5C
*caseUnfold($FF5A) = ?caseUnfoldTable + $1C5F

DataSection
  caseUnfoldTable:
  ; *caseUnfold($0041)
  Data.a 0
  Data.u $0061
  ; *caseUnfold($0061)
  Data.a 0
  Data.u $0041
  ; *caseUnfold($0042)
  Data.a 0
  Data.u $0062
  ; *caseUnfold($0062)
  Data.a 0
  Data.u $0042
  ; *caseUnfold($0043)
  Data.a 0
  Data.u $0063
  ; *caseUnfold($0063)
  Data.a 0
  Data.u $0043
  ; *caseUnfold($0044)
  Data.a 0
  Data.u $0064
  ; *caseUnfold($0064)
  Data.a 0
  Data.u $0044
  ; *caseUnfold($0045)
  Data.a 0
  Data.u $0065
  ; *caseUnfold($0065)
  Data.a 0
  Data.u $0045
  ; *caseUnfold($0046)
  Data.a 0
  Data.u $0066
  ; *caseUnfold($0066)
  Data.a 0
  Data.u $0046
  ; *caseUnfold($0047)
  Data.a 0
  Data.u $0067
  ; *caseUnfold($0067)
  Data.a 0
  Data.u $0047
  ; *caseUnfold($0048)
  Data.a 0
  Data.u $0068
  ; *caseUnfold($0068)
  Data.a 0
  Data.u $0048
  ; *caseUnfold($0049)
  Data.a 0
  Data.u $0069
  ; *caseUnfold($0069)
  Data.a 0
  Data.u $0049
  ; *caseUnfold($004A)
  Data.a 0
  Data.u $006A
  ; *caseUnfold($006A)
  Data.a 0
  Data.u $004A
  ; *caseUnfold($004B)
  Data.a 1
  Data.u $006B,$212A
  ; *caseUnfold($006B)
  Data.a 1
  Data.u $004B,$212A
  ; *caseUnfold($212A)
  Data.a 1
  Data.u $004B,$006B
  ; *caseUnfold($004C)
  Data.a 0
  Data.u $006C
  ; *caseUnfold($006C)
  Data.a 0
  Data.u $004C
  ; *caseUnfold($004D)
  Data.a 0
  Data.u $006D
  ; *caseUnfold($006D)
  Data.a 0
  Data.u $004D
  ; *caseUnfold($004E)
  Data.a 0
  Data.u $006E
  ; *caseUnfold($006E)
  Data.a 0
  Data.u $004E
  ; *caseUnfold($004F)
  Data.a 0
  Data.u $006F
  ; *caseUnfold($006F)
  Data.a 0
  Data.u $004F
  ; *caseUnfold($0050)
  Data.a 0
  Data.u $0070
  ; *caseUnfold($0070)
  Data.a 0
  Data.u $0050
  ; *caseUnfold($0051)
  Data.a 0
  Data.u $0071
  ; *caseUnfold($0071)
  Data.a 0
  Data.u $0051
  ; *caseUnfold($0052)
  Data.a 0
  Data.u $0072
  ; *caseUnfold($0072)
  Data.a 0
  Data.u $0052
  ; *caseUnfold($0053)
  Data.a 1
  Data.u $0073,$017F
  ; *caseUnfold($0073)
  Data.a 1
  Data.u $0053,$017F
  ; *caseUnfold($017F)
  Data.a 1
  Data.u $0053,$0073
  ; *caseUnfold($0054)
  Data.a 0
  Data.u $0074
  ; *caseUnfold($0074)
  Data.a 0
  Data.u $0054
  ; *caseUnfold($0055)
  Data.a 0
  Data.u $0075
  ; *caseUnfold($0075)
  Data.a 0
  Data.u $0055
  ; *caseUnfold($0056)
  Data.a 0
  Data.u $0076
  ; *caseUnfold($0076)
  Data.a 0
  Data.u $0056
  ; *caseUnfold($0057)
  Data.a 0
  Data.u $0077
  ; *caseUnfold($0077)
  Data.a 0
  Data.u $0057
  ; *caseUnfold($0058)
  Data.a 0
  Data.u $0078
  ; *caseUnfold($0078)
  Data.a 0
  Data.u $0058
  ; *caseUnfold($0059)
  Data.a 0
  Data.u $0079
  ; *caseUnfold($0079)
  Data.a 0
  Data.u $0059
  ; *caseUnfold($005A)
  Data.a 0
  Data.u $007A
  ; *caseUnfold($007A)
  Data.a 0
  Data.u $005A
  ; *caseUnfold($00B5)
  Data.a 1
  Data.u $03BC,$039C
  ; *caseUnfold($03BC)
  Data.a 1
  Data.u $00B5,$039C
  ; *caseUnfold($039C)
  Data.a 1
  Data.u $00B5,$03BC
  ; *caseUnfold($00C0)
  Data.a 0
  Data.u $00E0
  ; *caseUnfold($00E0)
  Data.a 0
  Data.u $00C0
  ; *caseUnfold($00C1)
  Data.a 0
  Data.u $00E1
  ; *caseUnfold($00E1)
  Data.a 0
  Data.u $00C1
  ; *caseUnfold($00C2)
  Data.a 0
  Data.u $00E2
  ; *caseUnfold($00E2)
  Data.a 0
  Data.u $00C2
  ; *caseUnfold($00C3)
  Data.a 0
  Data.u $00E3
  ; *caseUnfold($00E3)
  Data.a 0
  Data.u $00C3
  ; *caseUnfold($00C4)
  Data.a 0
  Data.u $00E4
  ; *caseUnfold($00E4)
  Data.a 0
  Data.u $00C4
  ; *caseUnfold($00C5)
  Data.a 1
  Data.u $00E5,$212B
  ; *caseUnfold($00E5)
  Data.a 1
  Data.u $00C5,$212B
  ; *caseUnfold($212B)
  Data.a 1
  Data.u $00C5,$00E5
  ; *caseUnfold($00C6)
  Data.a 0
  Data.u $00E6
  ; *caseUnfold($00E6)
  Data.a 0
  Data.u $00C6
  ; *caseUnfold($00C7)
  Data.a 0
  Data.u $00E7
  ; *caseUnfold($00E7)
  Data.a 0
  Data.u $00C7
  ; *caseUnfold($00C8)
  Data.a 0
  Data.u $00E8
  ; *caseUnfold($00E8)
  Data.a 0
  Data.u $00C8
  ; *caseUnfold($00C9)
  Data.a 0
  Data.u $00E9
  ; *caseUnfold($00E9)
  Data.a 0
  Data.u $00C9
  ; *caseUnfold($00CA)
  Data.a 0
  Data.u $00EA
  ; *caseUnfold($00EA)
  Data.a 0
  Data.u $00CA
  ; *caseUnfold($00CB)
  Data.a 0
  Data.u $00EB
  ; *caseUnfold($00EB)
  Data.a 0
  Data.u $00CB
  ; *caseUnfold($00CC)
  Data.a 0
  Data.u $00EC
  ; *caseUnfold($00EC)
  Data.a 0
  Data.u $00CC
  ; *caseUnfold($00CD)
  Data.a 0
  Data.u $00ED
  ; *caseUnfold($00ED)
  Data.a 0
  Data.u $00CD
  ; *caseUnfold($00CE)
  Data.a 0
  Data.u $00EE
  ; *caseUnfold($00EE)
  Data.a 0
  Data.u $00CE
  ; *caseUnfold($00CF)
  Data.a 0
  Data.u $00EF
  ; *caseUnfold($00EF)
  Data.a 0
  Data.u $00CF
  ; *caseUnfold($00D0)
  Data.a 0
  Data.u $00F0
  ; *caseUnfold($00F0)
  Data.a 0
  Data.u $00D0
  ; *caseUnfold($00D1)
  Data.a 0
  Data.u $00F1
  ; *caseUnfold($00F1)
  Data.a 0
  Data.u $00D1
  ; *caseUnfold($00D2)
  Data.a 0
  Data.u $00F2
  ; *caseUnfold($00F2)
  Data.a 0
  Data.u $00D2
  ; *caseUnfold($00D3)
  Data.a 0
  Data.u $00F3
  ; *caseUnfold($00F3)
  Data.a 0
  Data.u $00D3
  ; *caseUnfold($00D4)
  Data.a 0
  Data.u $00F4
  ; *caseUnfold($00F4)
  Data.a 0
  Data.u $00D4
  ; *caseUnfold($00D5)
  Data.a 0
  Data.u $00F5
  ; *caseUnfold($00F5)
  Data.a 0
  Data.u $00D5
  ; *caseUnfold($00D6)
  Data.a 0
  Data.u $00F6
  ; *caseUnfold($00F6)
  Data.a 0
  Data.u $00D6
  ; *caseUnfold($00D8)
  Data.a 0
  Data.u $00F8
  ; *caseUnfold($00F8)
  Data.a 0
  Data.u $00D8
  ; *caseUnfold($00D9)
  Data.a 0
  Data.u $00F9
  ; *caseUnfold($00F9)
  Data.a 0
  Data.u $00D9
  ; *caseUnfold($00DA)
  Data.a 0
  Data.u $00FA
  ; *caseUnfold($00FA)
  Data.a 0
  Data.u $00DA
  ; *caseUnfold($00DB)
  Data.a 0
  Data.u $00FB
  ; *caseUnfold($00FB)
  Data.a 0
  Data.u $00DB
  ; *caseUnfold($00DC)
  Data.a 0
  Data.u $00FC
  ; *caseUnfold($00FC)
  Data.a 0
  Data.u $00DC
  ; *caseUnfold($00DD)
  Data.a 0
  Data.u $00FD
  ; *caseUnfold($00FD)
  Data.a 0
  Data.u $00DD
  ; *caseUnfold($00DE)
  Data.a 0
  Data.u $00FE
  ; *caseUnfold($00FE)
  Data.a 0
  Data.u $00DE
  ; *caseUnfold($0100)
  Data.a 0
  Data.u $0101
  ; *caseUnfold($0101)
  Data.a 0
  Data.u $0100
  ; *caseUnfold($0102)
  Data.a 0
  Data.u $0103
  ; *caseUnfold($0103)
  Data.a 0
  Data.u $0102
  ; *caseUnfold($0104)
  Data.a 0
  Data.u $0105
  ; *caseUnfold($0105)
  Data.a 0
  Data.u $0104
  ; *caseUnfold($0106)
  Data.a 0
  Data.u $0107
  ; *caseUnfold($0107)
  Data.a 0
  Data.u $0106
  ; *caseUnfold($0108)
  Data.a 0
  Data.u $0109
  ; *caseUnfold($0109)
  Data.a 0
  Data.u $0108
  ; *caseUnfold($010A)
  Data.a 0
  Data.u $010B
  ; *caseUnfold($010B)
  Data.a 0
  Data.u $010A
  ; *caseUnfold($010C)
  Data.a 0
  Data.u $010D
  ; *caseUnfold($010D)
  Data.a 0
  Data.u $010C
  ; *caseUnfold($010E)
  Data.a 0
  Data.u $010F
  ; *caseUnfold($010F)
  Data.a 0
  Data.u $010E
  ; *caseUnfold($0110)
  Data.a 0
  Data.u $0111
  ; *caseUnfold($0111)
  Data.a 0
  Data.u $0110
  ; *caseUnfold($0112)
  Data.a 0
  Data.u $0113
  ; *caseUnfold($0113)
  Data.a 0
  Data.u $0112
  ; *caseUnfold($0114)
  Data.a 0
  Data.u $0115
  ; *caseUnfold($0115)
  Data.a 0
  Data.u $0114
  ; *caseUnfold($0116)
  Data.a 0
  Data.u $0117
  ; *caseUnfold($0117)
  Data.a 0
  Data.u $0116
  ; *caseUnfold($0118)
  Data.a 0
  Data.u $0119
  ; *caseUnfold($0119)
  Data.a 0
  Data.u $0118
  ; *caseUnfold($011A)
  Data.a 0
  Data.u $011B
  ; *caseUnfold($011B)
  Data.a 0
  Data.u $011A
  ; *caseUnfold($011C)
  Data.a 0
  Data.u $011D
  ; *caseUnfold($011D)
  Data.a 0
  Data.u $011C
  ; *caseUnfold($011E)
  Data.a 0
  Data.u $011F
  ; *caseUnfold($011F)
  Data.a 0
  Data.u $011E
  ; *caseUnfold($0120)
  Data.a 0
  Data.u $0121
  ; *caseUnfold($0121)
  Data.a 0
  Data.u $0120
  ; *caseUnfold($0122)
  Data.a 0
  Data.u $0123
  ; *caseUnfold($0123)
  Data.a 0
  Data.u $0122
  ; *caseUnfold($0124)
  Data.a 0
  Data.u $0125
  ; *caseUnfold($0125)
  Data.a 0
  Data.u $0124
  ; *caseUnfold($0126)
  Data.a 0
  Data.u $0127
  ; *caseUnfold($0127)
  Data.a 0
  Data.u $0126
  ; *caseUnfold($0128)
  Data.a 0
  Data.u $0129
  ; *caseUnfold($0129)
  Data.a 0
  Data.u $0128
  ; *caseUnfold($012A)
  Data.a 0
  Data.u $012B
  ; *caseUnfold($012B)
  Data.a 0
  Data.u $012A
  ; *caseUnfold($012C)
  Data.a 0
  Data.u $012D
  ; *caseUnfold($012D)
  Data.a 0
  Data.u $012C
  ; *caseUnfold($012E)
  Data.a 0
  Data.u $012F
  ; *caseUnfold($012F)
  Data.a 0
  Data.u $012E
  ; *caseUnfold($0132)
  Data.a 0
  Data.u $0133
  ; *caseUnfold($0133)
  Data.a 0
  Data.u $0132
  ; *caseUnfold($0134)
  Data.a 0
  Data.u $0135
  ; *caseUnfold($0135)
  Data.a 0
  Data.u $0134
  ; *caseUnfold($0136)
  Data.a 0
  Data.u $0137
  ; *caseUnfold($0137)
  Data.a 0
  Data.u $0136
  ; *caseUnfold($0139)
  Data.a 0
  Data.u $013A
  ; *caseUnfold($013A)
  Data.a 0
  Data.u $0139
  ; *caseUnfold($013B)
  Data.a 0
  Data.u $013C
  ; *caseUnfold($013C)
  Data.a 0
  Data.u $013B
  ; *caseUnfold($013D)
  Data.a 0
  Data.u $013E
  ; *caseUnfold($013E)
  Data.a 0
  Data.u $013D
  ; *caseUnfold($013F)
  Data.a 0
  Data.u $0140
  ; *caseUnfold($0140)
  Data.a 0
  Data.u $013F
  ; *caseUnfold($0141)
  Data.a 0
  Data.u $0142
  ; *caseUnfold($0142)
  Data.a 0
  Data.u $0141
  ; *caseUnfold($0143)
  Data.a 0
  Data.u $0144
  ; *caseUnfold($0144)
  Data.a 0
  Data.u $0143
  ; *caseUnfold($0145)
  Data.a 0
  Data.u $0146
  ; *caseUnfold($0146)
  Data.a 0
  Data.u $0145
  ; *caseUnfold($0147)
  Data.a 0
  Data.u $0148
  ; *caseUnfold($0148)
  Data.a 0
  Data.u $0147
  ; *caseUnfold($014A)
  Data.a 0
  Data.u $014B
  ; *caseUnfold($014B)
  Data.a 0
  Data.u $014A
  ; *caseUnfold($014C)
  Data.a 0
  Data.u $014D
  ; *caseUnfold($014D)
  Data.a 0
  Data.u $014C
  ; *caseUnfold($014E)
  Data.a 0
  Data.u $014F
  ; *caseUnfold($014F)
  Data.a 0
  Data.u $014E
  ; *caseUnfold($0150)
  Data.a 0
  Data.u $0151
  ; *caseUnfold($0151)
  Data.a 0
  Data.u $0150
  ; *caseUnfold($0152)
  Data.a 0
  Data.u $0153
  ; *caseUnfold($0153)
  Data.a 0
  Data.u $0152
  ; *caseUnfold($0154)
  Data.a 0
  Data.u $0155
  ; *caseUnfold($0155)
  Data.a 0
  Data.u $0154
  ; *caseUnfold($0156)
  Data.a 0
  Data.u $0157
  ; *caseUnfold($0157)
  Data.a 0
  Data.u $0156
  ; *caseUnfold($0158)
  Data.a 0
  Data.u $0159
  ; *caseUnfold($0159)
  Data.a 0
  Data.u $0158
  ; *caseUnfold($015A)
  Data.a 0
  Data.u $015B
  ; *caseUnfold($015B)
  Data.a 0
  Data.u $015A
  ; *caseUnfold($015C)
  Data.a 0
  Data.u $015D
  ; *caseUnfold($015D)
  Data.a 0
  Data.u $015C
  ; *caseUnfold($015E)
  Data.a 0
  Data.u $015F
  ; *caseUnfold($015F)
  Data.a 0
  Data.u $015E
  ; *caseUnfold($0160)
  Data.a 0
  Data.u $0161
  ; *caseUnfold($0161)
  Data.a 0
  Data.u $0160
  ; *caseUnfold($0162)
  Data.a 0
  Data.u $0163
  ; *caseUnfold($0163)
  Data.a 0
  Data.u $0162
  ; *caseUnfold($0164)
  Data.a 0
  Data.u $0165
  ; *caseUnfold($0165)
  Data.a 0
  Data.u $0164
  ; *caseUnfold($0166)
  Data.a 0
  Data.u $0167
  ; *caseUnfold($0167)
  Data.a 0
  Data.u $0166
  ; *caseUnfold($0168)
  Data.a 0
  Data.u $0169
  ; *caseUnfold($0169)
  Data.a 0
  Data.u $0168
  ; *caseUnfold($016A)
  Data.a 0
  Data.u $016B
  ; *caseUnfold($016B)
  Data.a 0
  Data.u $016A
  ; *caseUnfold($016C)
  Data.a 0
  Data.u $016D
  ; *caseUnfold($016D)
  Data.a 0
  Data.u $016C
  ; *caseUnfold($016E)
  Data.a 0
  Data.u $016F
  ; *caseUnfold($016F)
  Data.a 0
  Data.u $016E
  ; *caseUnfold($0170)
  Data.a 0
  Data.u $0171
  ; *caseUnfold($0171)
  Data.a 0
  Data.u $0170
  ; *caseUnfold($0172)
  Data.a 0
  Data.u $0173
  ; *caseUnfold($0173)
  Data.a 0
  Data.u $0172
  ; *caseUnfold($0174)
  Data.a 0
  Data.u $0175
  ; *caseUnfold($0175)
  Data.a 0
  Data.u $0174
  ; *caseUnfold($0176)
  Data.a 0
  Data.u $0177
  ; *caseUnfold($0177)
  Data.a 0
  Data.u $0176
  ; *caseUnfold($0178)
  Data.a 0
  Data.u $00FF
  ; *caseUnfold($00FF)
  Data.a 0
  Data.u $0178
  ; *caseUnfold($0179)
  Data.a 0
  Data.u $017A
  ; *caseUnfold($017A)
  Data.a 0
  Data.u $0179
  ; *caseUnfold($017B)
  Data.a 0
  Data.u $017C
  ; *caseUnfold($017C)
  Data.a 0
  Data.u $017B
  ; *caseUnfold($017D)
  Data.a 0
  Data.u $017E
  ; *caseUnfold($017E)
  Data.a 0
  Data.u $017D
  ; *caseUnfold($0181)
  Data.a 0
  Data.u $0253
  ; *caseUnfold($0253)
  Data.a 0
  Data.u $0181
  ; *caseUnfold($0182)
  Data.a 0
  Data.u $0183
  ; *caseUnfold($0183)
  Data.a 0
  Data.u $0182
  ; *caseUnfold($0184)
  Data.a 0
  Data.u $0185
  ; *caseUnfold($0185)
  Data.a 0
  Data.u $0184
  ; *caseUnfold($0186)
  Data.a 0
  Data.u $0254
  ; *caseUnfold($0254)
  Data.a 0
  Data.u $0186
  ; *caseUnfold($0187)
  Data.a 0
  Data.u $0188
  ; *caseUnfold($0188)
  Data.a 0
  Data.u $0187
  ; *caseUnfold($0189)
  Data.a 0
  Data.u $0256
  ; *caseUnfold($0256)
  Data.a 0
  Data.u $0189
  ; *caseUnfold($018A)
  Data.a 0
  Data.u $0257
  ; *caseUnfold($0257)
  Data.a 0
  Data.u $018A
  ; *caseUnfold($018B)
  Data.a 0
  Data.u $018C
  ; *caseUnfold($018C)
  Data.a 0
  Data.u $018B
  ; *caseUnfold($018E)
  Data.a 0
  Data.u $01DD
  ; *caseUnfold($01DD)
  Data.a 0
  Data.u $018E
  ; *caseUnfold($018F)
  Data.a 0
  Data.u $0259
  ; *caseUnfold($0259)
  Data.a 0
  Data.u $018F
  ; *caseUnfold($0190)
  Data.a 0
  Data.u $025B
  ; *caseUnfold($025B)
  Data.a 0
  Data.u $0190
  ; *caseUnfold($0191)
  Data.a 0
  Data.u $0192
  ; *caseUnfold($0192)
  Data.a 0
  Data.u $0191
  ; *caseUnfold($0193)
  Data.a 0
  Data.u $0260
  ; *caseUnfold($0260)
  Data.a 0
  Data.u $0193
  ; *caseUnfold($0194)
  Data.a 0
  Data.u $0263
  ; *caseUnfold($0263)
  Data.a 0
  Data.u $0194
  ; *caseUnfold($0196)
  Data.a 0
  Data.u $0269
  ; *caseUnfold($0269)
  Data.a 0
  Data.u $0196
  ; *caseUnfold($0197)
  Data.a 0
  Data.u $0268
  ; *caseUnfold($0268)
  Data.a 0
  Data.u $0197
  ; *caseUnfold($0198)
  Data.a 0
  Data.u $0199
  ; *caseUnfold($0199)
  Data.a 0
  Data.u $0198
  ; *caseUnfold($019C)
  Data.a 0
  Data.u $026F
  ; *caseUnfold($026F)
  Data.a 0
  Data.u $019C
  ; *caseUnfold($019D)
  Data.a 0
  Data.u $0272
  ; *caseUnfold($0272)
  Data.a 0
  Data.u $019D
  ; *caseUnfold($019F)
  Data.a 0
  Data.u $0275
  ; *caseUnfold($0275)
  Data.a 0
  Data.u $019F
  ; *caseUnfold($01A0)
  Data.a 0
  Data.u $01A1
  ; *caseUnfold($01A1)
  Data.a 0
  Data.u $01A0
  ; *caseUnfold($01A2)
  Data.a 0
  Data.u $01A3
  ; *caseUnfold($01A3)
  Data.a 0
  Data.u $01A2
  ; *caseUnfold($01A4)
  Data.a 0
  Data.u $01A5
  ; *caseUnfold($01A5)
  Data.a 0
  Data.u $01A4
  ; *caseUnfold($01A6)
  Data.a 0
  Data.u $0280
  ; *caseUnfold($0280)
  Data.a 0
  Data.u $01A6
  ; *caseUnfold($01A7)
  Data.a 0
  Data.u $01A8
  ; *caseUnfold($01A8)
  Data.a 0
  Data.u $01A7
  ; *caseUnfold($01A9)
  Data.a 0
  Data.u $0283
  ; *caseUnfold($0283)
  Data.a 0
  Data.u $01A9
  ; *caseUnfold($01AC)
  Data.a 0
  Data.u $01AD
  ; *caseUnfold($01AD)
  Data.a 0
  Data.u $01AC
  ; *caseUnfold($01AE)
  Data.a 0
  Data.u $0288
  ; *caseUnfold($0288)
  Data.a 0
  Data.u $01AE
  ; *caseUnfold($01AF)
  Data.a 0
  Data.u $01B0
  ; *caseUnfold($01B0)
  Data.a 0
  Data.u $01AF
  ; *caseUnfold($01B1)
  Data.a 0
  Data.u $028A
  ; *caseUnfold($028A)
  Data.a 0
  Data.u $01B1
  ; *caseUnfold($01B2)
  Data.a 0
  Data.u $028B
  ; *caseUnfold($028B)
  Data.a 0
  Data.u $01B2
  ; *caseUnfold($01B3)
  Data.a 0
  Data.u $01B4
  ; *caseUnfold($01B4)
  Data.a 0
  Data.u $01B3
  ; *caseUnfold($01B5)
  Data.a 0
  Data.u $01B6
  ; *caseUnfold($01B6)
  Data.a 0
  Data.u $01B5
  ; *caseUnfold($01B7)
  Data.a 0
  Data.u $0292
  ; *caseUnfold($0292)
  Data.a 0
  Data.u $01B7
  ; *caseUnfold($01B8)
  Data.a 0
  Data.u $01B9
  ; *caseUnfold($01B9)
  Data.a 0
  Data.u $01B8
  ; *caseUnfold($01BC)
  Data.a 0
  Data.u $01BD
  ; *caseUnfold($01BD)
  Data.a 0
  Data.u $01BC
  ; *caseUnfold($01C4)
  Data.a 1
  Data.u $01C6,$01C5
  ; *caseUnfold($01C6)
  Data.a 1
  Data.u $01C4,$01C5
  ; *caseUnfold($01C5)
  Data.a 1
  Data.u $01C4,$01C6
  ; *caseUnfold($01C7)
  Data.a 1
  Data.u $01C9,$01C8
  ; *caseUnfold($01C9)
  Data.a 1
  Data.u $01C7,$01C8
  ; *caseUnfold($01C8)
  Data.a 1
  Data.u $01C7,$01C9
  ; *caseUnfold($01CA)
  Data.a 1
  Data.u $01CC,$01CB
  ; *caseUnfold($01CC)
  Data.a 1
  Data.u $01CA,$01CB
  ; *caseUnfold($01CB)
  Data.a 1
  Data.u $01CA,$01CC
  ; *caseUnfold($01CD)
  Data.a 0
  Data.u $01CE
  ; *caseUnfold($01CE)
  Data.a 0
  Data.u $01CD
  ; *caseUnfold($01CF)
  Data.a 0
  Data.u $01D0
  ; *caseUnfold($01D0)
  Data.a 0
  Data.u $01CF
  ; *caseUnfold($01D1)
  Data.a 0
  Data.u $01D2
  ; *caseUnfold($01D2)
  Data.a 0
  Data.u $01D1
  ; *caseUnfold($01D3)
  Data.a 0
  Data.u $01D4
  ; *caseUnfold($01D4)
  Data.a 0
  Data.u $01D3
  ; *caseUnfold($01D5)
  Data.a 0
  Data.u $01D6
  ; *caseUnfold($01D6)
  Data.a 0
  Data.u $01D5
  ; *caseUnfold($01D7)
  Data.a 0
  Data.u $01D8
  ; *caseUnfold($01D8)
  Data.a 0
  Data.u $01D7
  ; *caseUnfold($01D9)
  Data.a 0
  Data.u $01DA
  ; *caseUnfold($01DA)
  Data.a 0
  Data.u $01D9
  ; *caseUnfold($01DB)
  Data.a 0
  Data.u $01DC
  ; *caseUnfold($01DC)
  Data.a 0
  Data.u $01DB
  ; *caseUnfold($01DE)
  Data.a 0
  Data.u $01DF
  ; *caseUnfold($01DF)
  Data.a 0
  Data.u $01DE
  ; *caseUnfold($01E0)
  Data.a 0
  Data.u $01E1
  ; *caseUnfold($01E1)
  Data.a 0
  Data.u $01E0
  ; *caseUnfold($01E2)
  Data.a 0
  Data.u $01E3
  ; *caseUnfold($01E3)
  Data.a 0
  Data.u $01E2
  ; *caseUnfold($01E4)
  Data.a 0
  Data.u $01E5
  ; *caseUnfold($01E5)
  Data.a 0
  Data.u $01E4
  ; *caseUnfold($01E6)
  Data.a 0
  Data.u $01E7
  ; *caseUnfold($01E7)
  Data.a 0
  Data.u $01E6
  ; *caseUnfold($01E8)
  Data.a 0
  Data.u $01E9
  ; *caseUnfold($01E9)
  Data.a 0
  Data.u $01E8
  ; *caseUnfold($01EA)
  Data.a 0
  Data.u $01EB
  ; *caseUnfold($01EB)
  Data.a 0
  Data.u $01EA
  ; *caseUnfold($01EC)
  Data.a 0
  Data.u $01ED
  ; *caseUnfold($01ED)
  Data.a 0
  Data.u $01EC
  ; *caseUnfold($01EE)
  Data.a 0
  Data.u $01EF
  ; *caseUnfold($01EF)
  Data.a 0
  Data.u $01EE
  ; *caseUnfold($01F1)
  Data.a 1
  Data.u $01F3,$01F2
  ; *caseUnfold($01F3)
  Data.a 1
  Data.u $01F1,$01F2
  ; *caseUnfold($01F2)
  Data.a 1
  Data.u $01F1,$01F3
  ; *caseUnfold($01F4)
  Data.a 0
  Data.u $01F5
  ; *caseUnfold($01F5)
  Data.a 0
  Data.u $01F4
  ; *caseUnfold($01F6)
  Data.a 0
  Data.u $0195
  ; *caseUnfold($0195)
  Data.a 0
  Data.u $01F6
  ; *caseUnfold($01F7)
  Data.a 0
  Data.u $01BF
  ; *caseUnfold($01BF)
  Data.a 0
  Data.u $01F7
  ; *caseUnfold($01F8)
  Data.a 0
  Data.u $01F9
  ; *caseUnfold($01F9)
  Data.a 0
  Data.u $01F8
  ; *caseUnfold($01FA)
  Data.a 0
  Data.u $01FB
  ; *caseUnfold($01FB)
  Data.a 0
  Data.u $01FA
  ; *caseUnfold($01FC)
  Data.a 0
  Data.u $01FD
  ; *caseUnfold($01FD)
  Data.a 0
  Data.u $01FC
  ; *caseUnfold($01FE)
  Data.a 0
  Data.u $01FF
  ; *caseUnfold($01FF)
  Data.a 0
  Data.u $01FE
  ; *caseUnfold($0200)
  Data.a 0
  Data.u $0201
  ; *caseUnfold($0201)
  Data.a 0
  Data.u $0200
  ; *caseUnfold($0202)
  Data.a 0
  Data.u $0203
  ; *caseUnfold($0203)
  Data.a 0
  Data.u $0202
  ; *caseUnfold($0204)
  Data.a 0
  Data.u $0205
  ; *caseUnfold($0205)
  Data.a 0
  Data.u $0204
  ; *caseUnfold($0206)
  Data.a 0
  Data.u $0207
  ; *caseUnfold($0207)
  Data.a 0
  Data.u $0206
  ; *caseUnfold($0208)
  Data.a 0
  Data.u $0209
  ; *caseUnfold($0209)
  Data.a 0
  Data.u $0208
  ; *caseUnfold($020A)
  Data.a 0
  Data.u $020B
  ; *caseUnfold($020B)
  Data.a 0
  Data.u $020A
  ; *caseUnfold($020C)
  Data.a 0
  Data.u $020D
  ; *caseUnfold($020D)
  Data.a 0
  Data.u $020C
  ; *caseUnfold($020E)
  Data.a 0
  Data.u $020F
  ; *caseUnfold($020F)
  Data.a 0
  Data.u $020E
  ; *caseUnfold($0210)
  Data.a 0
  Data.u $0211
  ; *caseUnfold($0211)
  Data.a 0
  Data.u $0210
  ; *caseUnfold($0212)
  Data.a 0
  Data.u $0213
  ; *caseUnfold($0213)
  Data.a 0
  Data.u $0212
  ; *caseUnfold($0214)
  Data.a 0
  Data.u $0215
  ; *caseUnfold($0215)
  Data.a 0
  Data.u $0214
  ; *caseUnfold($0216)
  Data.a 0
  Data.u $0217
  ; *caseUnfold($0217)
  Data.a 0
  Data.u $0216
  ; *caseUnfold($0218)
  Data.a 0
  Data.u $0219
  ; *caseUnfold($0219)
  Data.a 0
  Data.u $0218
  ; *caseUnfold($021A)
  Data.a 0
  Data.u $021B
  ; *caseUnfold($021B)
  Data.a 0
  Data.u $021A
  ; *caseUnfold($021C)
  Data.a 0
  Data.u $021D
  ; *caseUnfold($021D)
  Data.a 0
  Data.u $021C
  ; *caseUnfold($021E)
  Data.a 0
  Data.u $021F
  ; *caseUnfold($021F)
  Data.a 0
  Data.u $021E
  ; *caseUnfold($0220)
  Data.a 0
  Data.u $019E
  ; *caseUnfold($019E)
  Data.a 0
  Data.u $0220
  ; *caseUnfold($0222)
  Data.a 0
  Data.u $0223
  ; *caseUnfold($0223)
  Data.a 0
  Data.u $0222
  ; *caseUnfold($0224)
  Data.a 0
  Data.u $0225
  ; *caseUnfold($0225)
  Data.a 0
  Data.u $0224
  ; *caseUnfold($0226)
  Data.a 0
  Data.u $0227
  ; *caseUnfold($0227)
  Data.a 0
  Data.u $0226
  ; *caseUnfold($0228)
  Data.a 0
  Data.u $0229
  ; *caseUnfold($0229)
  Data.a 0
  Data.u $0228
  ; *caseUnfold($022A)
  Data.a 0
  Data.u $022B
  ; *caseUnfold($022B)
  Data.a 0
  Data.u $022A
  ; *caseUnfold($022C)
  Data.a 0
  Data.u $022D
  ; *caseUnfold($022D)
  Data.a 0
  Data.u $022C
  ; *caseUnfold($022E)
  Data.a 0
  Data.u $022F
  ; *caseUnfold($022F)
  Data.a 0
  Data.u $022E
  ; *caseUnfold($0230)
  Data.a 0
  Data.u $0231
  ; *caseUnfold($0231)
  Data.a 0
  Data.u $0230
  ; *caseUnfold($0232)
  Data.a 0
  Data.u $0233
  ; *caseUnfold($0233)
  Data.a 0
  Data.u $0232
  ; *caseUnfold($023A)
  Data.a 0
  Data.u $2C65
  ; *caseUnfold($2C65)
  Data.a 0
  Data.u $023A
  ; *caseUnfold($023B)
  Data.a 0
  Data.u $023C
  ; *caseUnfold($023C)
  Data.a 0
  Data.u $023B
  ; *caseUnfold($023D)
  Data.a 0
  Data.u $019A
  ; *caseUnfold($019A)
  Data.a 0
  Data.u $023D
  ; *caseUnfold($023E)
  Data.a 0
  Data.u $2C66
  ; *caseUnfold($2C66)
  Data.a 0
  Data.u $023E
  ; *caseUnfold($0241)
  Data.a 0
  Data.u $0242
  ; *caseUnfold($0242)
  Data.a 0
  Data.u $0241
  ; *caseUnfold($0243)
  Data.a 0
  Data.u $0180
  ; *caseUnfold($0180)
  Data.a 0
  Data.u $0243
  ; *caseUnfold($0244)
  Data.a 0
  Data.u $0289
  ; *caseUnfold($0289)
  Data.a 0
  Data.u $0244
  ; *caseUnfold($0245)
  Data.a 0
  Data.u $028C
  ; *caseUnfold($028C)
  Data.a 0
  Data.u $0245
  ; *caseUnfold($0246)
  Data.a 0
  Data.u $0247
  ; *caseUnfold($0247)
  Data.a 0
  Data.u $0246
  ; *caseUnfold($0248)
  Data.a 0
  Data.u $0249
  ; *caseUnfold($0249)
  Data.a 0
  Data.u $0248
  ; *caseUnfold($024A)
  Data.a 0
  Data.u $024B
  ; *caseUnfold($024B)
  Data.a 0
  Data.u $024A
  ; *caseUnfold($024C)
  Data.a 0
  Data.u $024D
  ; *caseUnfold($024D)
  Data.a 0
  Data.u $024C
  ; *caseUnfold($024E)
  Data.a 0
  Data.u $024F
  ; *caseUnfold($024F)
  Data.a 0
  Data.u $024E
  ; *caseUnfold($0345)
  Data.a 2
  Data.u $03B9,$1FBE,$0399
  ; *caseUnfold($03B9)
  Data.a 2
  Data.u $0345,$1FBE,$0399
  ; *caseUnfold($1FBE)
  Data.a 2
  Data.u $0345,$03B9,$0399
  ; *caseUnfold($0399)
  Data.a 2
  Data.u $0345,$03B9,$1FBE
  ; *caseUnfold($0370)
  Data.a 0
  Data.u $0371
  ; *caseUnfold($0371)
  Data.a 0
  Data.u $0370
  ; *caseUnfold($0372)
  Data.a 0
  Data.u $0373
  ; *caseUnfold($0373)
  Data.a 0
  Data.u $0372
  ; *caseUnfold($0376)
  Data.a 0
  Data.u $0377
  ; *caseUnfold($0377)
  Data.a 0
  Data.u $0376
  ; *caseUnfold($037F)
  Data.a 0
  Data.u $03F3
  ; *caseUnfold($03F3)
  Data.a 0
  Data.u $037F
  ; *caseUnfold($0386)
  Data.a 0
  Data.u $03AC
  ; *caseUnfold($03AC)
  Data.a 0
  Data.u $0386
  ; *caseUnfold($0388)
  Data.a 0
  Data.u $03AD
  ; *caseUnfold($03AD)
  Data.a 0
  Data.u $0388
  ; *caseUnfold($0389)
  Data.a 0
  Data.u $03AE
  ; *caseUnfold($03AE)
  Data.a 0
  Data.u $0389
  ; *caseUnfold($038A)
  Data.a 0
  Data.u $03AF
  ; *caseUnfold($03AF)
  Data.a 0
  Data.u $038A
  ; *caseUnfold($038C)
  Data.a 0
  Data.u $03CC
  ; *caseUnfold($03CC)
  Data.a 0
  Data.u $038C
  ; *caseUnfold($038E)
  Data.a 0
  Data.u $03CD
  ; *caseUnfold($03CD)
  Data.a 0
  Data.u $038E
  ; *caseUnfold($038F)
  Data.a 0
  Data.u $03CE
  ; *caseUnfold($03CE)
  Data.a 0
  Data.u $038F
  ; *caseUnfold($0391)
  Data.a 0
  Data.u $03B1
  ; *caseUnfold($03B1)
  Data.a 0
  Data.u $0391
  ; *caseUnfold($0392)
  Data.a 1
  Data.u $03B2,$03D0
  ; *caseUnfold($03B2)
  Data.a 1
  Data.u $0392,$03D0
  ; *caseUnfold($03D0)
  Data.a 1
  Data.u $0392,$03B2
  ; *caseUnfold($0393)
  Data.a 0
  Data.u $03B3
  ; *caseUnfold($03B3)
  Data.a 0
  Data.u $0393
  ; *caseUnfold($0394)
  Data.a 0
  Data.u $03B4
  ; *caseUnfold($03B4)
  Data.a 0
  Data.u $0394
  ; *caseUnfold($0395)
  Data.a 1
  Data.u $03B5,$03F5
  ; *caseUnfold($03B5)
  Data.a 1
  Data.u $0395,$03F5
  ; *caseUnfold($03F5)
  Data.a 1
  Data.u $0395,$03B5
  ; *caseUnfold($0396)
  Data.a 0
  Data.u $03B6
  ; *caseUnfold($03B6)
  Data.a 0
  Data.u $0396
  ; *caseUnfold($0397)
  Data.a 0
  Data.u $03B7
  ; *caseUnfold($03B7)
  Data.a 0
  Data.u $0397
  ; *caseUnfold($0398)
  Data.a 2
  Data.u $03B8,$03F4,$03D1
  ; *caseUnfold($03B8)
  Data.a 2
  Data.u $0398,$03F4,$03D1
  ; *caseUnfold($03F4)
  Data.a 2
  Data.u $0398,$03B8,$03D1
  ; *caseUnfold($03D1)
  Data.a 2
  Data.u $0398,$03B8,$03F4
  ; *caseUnfold($039A)
  Data.a 1
  Data.u $03BA,$03F0
  ; *caseUnfold($03BA)
  Data.a 1
  Data.u $039A,$03F0
  ; *caseUnfold($03F0)
  Data.a 1
  Data.u $039A,$03BA
  ; *caseUnfold($039B)
  Data.a 0
  Data.u $03BB
  ; *caseUnfold($03BB)
  Data.a 0
  Data.u $039B
  ; *caseUnfold($039D)
  Data.a 0
  Data.u $03BD
  ; *caseUnfold($03BD)
  Data.a 0
  Data.u $039D
  ; *caseUnfold($039E)
  Data.a 0
  Data.u $03BE
  ; *caseUnfold($03BE)
  Data.a 0
  Data.u $039E
  ; *caseUnfold($039F)
  Data.a 0
  Data.u $03BF
  ; *caseUnfold($03BF)
  Data.a 0
  Data.u $039F
  ; *caseUnfold($03A0)
  Data.a 1
  Data.u $03C0,$03D6
  ; *caseUnfold($03C0)
  Data.a 1
  Data.u $03A0,$03D6
  ; *caseUnfold($03D6)
  Data.a 1
  Data.u $03A0,$03C0
  ; *caseUnfold($03A1)
  Data.a 1
  Data.u $03C1,$03F1
  ; *caseUnfold($03C1)
  Data.a 1
  Data.u $03A1,$03F1
  ; *caseUnfold($03F1)
  Data.a 1
  Data.u $03A1,$03C1
  ; *caseUnfold($03A3)
  Data.a 1
  Data.u $03C3,$03C2
  ; *caseUnfold($03C3)
  Data.a 1
  Data.u $03A3,$03C2
  ; *caseUnfold($03C2)
  Data.a 1
  Data.u $03A3,$03C3
  ; *caseUnfold($03A4)
  Data.a 0
  Data.u $03C4
  ; *caseUnfold($03C4)
  Data.a 0
  Data.u $03A4
  ; *caseUnfold($03A5)
  Data.a 0
  Data.u $03C5
  ; *caseUnfold($03C5)
  Data.a 0
  Data.u $03A5
  ; *caseUnfold($03A6)
  Data.a 1
  Data.u $03C6,$03D5
  ; *caseUnfold($03C6)
  Data.a 1
  Data.u $03A6,$03D5
  ; *caseUnfold($03D5)
  Data.a 1
  Data.u $03A6,$03C6
  ; *caseUnfold($03A7)
  Data.a 0
  Data.u $03C7
  ; *caseUnfold($03C7)
  Data.a 0
  Data.u $03A7
  ; *caseUnfold($03A8)
  Data.a 0
  Data.u $03C8
  ; *caseUnfold($03C8)
  Data.a 0
  Data.u $03A8
  ; *caseUnfold($03A9)
  Data.a 1
  Data.u $03C9,$2126
  ; *caseUnfold($03C9)
  Data.a 1
  Data.u $03A9,$2126
  ; *caseUnfold($2126)
  Data.a 1
  Data.u $03A9,$03C9
  ; *caseUnfold($03AA)
  Data.a 0
  Data.u $03CA
  ; *caseUnfold($03CA)
  Data.a 0
  Data.u $03AA
  ; *caseUnfold($03AB)
  Data.a 0
  Data.u $03CB
  ; *caseUnfold($03CB)
  Data.a 0
  Data.u $03AB
  ; *caseUnfold($03CF)
  Data.a 0
  Data.u $03D7
  ; *caseUnfold($03D7)
  Data.a 0
  Data.u $03CF
  ; *caseUnfold($03D8)
  Data.a 0
  Data.u $03D9
  ; *caseUnfold($03D9)
  Data.a 0
  Data.u $03D8
  ; *caseUnfold($03DA)
  Data.a 0
  Data.u $03DB
  ; *caseUnfold($03DB)
  Data.a 0
  Data.u $03DA
  ; *caseUnfold($03DC)
  Data.a 0
  Data.u $03DD
  ; *caseUnfold($03DD)
  Data.a 0
  Data.u $03DC
  ; *caseUnfold($03DE)
  Data.a 0
  Data.u $03DF
  ; *caseUnfold($03DF)
  Data.a 0
  Data.u $03DE
  ; *caseUnfold($03E0)
  Data.a 0
  Data.u $03E1
  ; *caseUnfold($03E1)
  Data.a 0
  Data.u $03E0
  ; *caseUnfold($03E2)
  Data.a 0
  Data.u $03E3
  ; *caseUnfold($03E3)
  Data.a 0
  Data.u $03E2
  ; *caseUnfold($03E4)
  Data.a 0
  Data.u $03E5
  ; *caseUnfold($03E5)
  Data.a 0
  Data.u $03E4
  ; *caseUnfold($03E6)
  Data.a 0
  Data.u $03E7
  ; *caseUnfold($03E7)
  Data.a 0
  Data.u $03E6
  ; *caseUnfold($03E8)
  Data.a 0
  Data.u $03E9
  ; *caseUnfold($03E9)
  Data.a 0
  Data.u $03E8
  ; *caseUnfold($03EA)
  Data.a 0
  Data.u $03EB
  ; *caseUnfold($03EB)
  Data.a 0
  Data.u $03EA
  ; *caseUnfold($03EC)
  Data.a 0
  Data.u $03ED
  ; *caseUnfold($03ED)
  Data.a 0
  Data.u $03EC
  ; *caseUnfold($03EE)
  Data.a 0
  Data.u $03EF
  ; *caseUnfold($03EF)
  Data.a 0
  Data.u $03EE
  ; *caseUnfold($03F7)
  Data.a 0
  Data.u $03F8
  ; *caseUnfold($03F8)
  Data.a 0
  Data.u $03F7
  ; *caseUnfold($03F9)
  Data.a 0
  Data.u $03F2
  ; *caseUnfold($03F2)
  Data.a 0
  Data.u $03F9
  ; *caseUnfold($03FA)
  Data.a 0
  Data.u $03FB
  ; *caseUnfold($03FB)
  Data.a 0
  Data.u $03FA
  ; *caseUnfold($03FD)
  Data.a 0
  Data.u $037B
  ; *caseUnfold($037B)
  Data.a 0
  Data.u $03FD
  ; *caseUnfold($03FE)
  Data.a 0
  Data.u $037C
  ; *caseUnfold($037C)
  Data.a 0
  Data.u $03FE
  ; *caseUnfold($03FF)
  Data.a 0
  Data.u $037D
  ; *caseUnfold($037D)
  Data.a 0
  Data.u $03FF
  ; *caseUnfold($0400)
  Data.a 0
  Data.u $0450
  ; *caseUnfold($0450)
  Data.a 0
  Data.u $0400
  ; *caseUnfold($0401)
  Data.a 0
  Data.u $0451
  ; *caseUnfold($0451)
  Data.a 0
  Data.u $0401
  ; *caseUnfold($0402)
  Data.a 0
  Data.u $0452
  ; *caseUnfold($0452)
  Data.a 0
  Data.u $0402
  ; *caseUnfold($0403)
  Data.a 0
  Data.u $0453
  ; *caseUnfold($0453)
  Data.a 0
  Data.u $0403
  ; *caseUnfold($0404)
  Data.a 0
  Data.u $0454
  ; *caseUnfold($0454)
  Data.a 0
  Data.u $0404
  ; *caseUnfold($0405)
  Data.a 0
  Data.u $0455
  ; *caseUnfold($0455)
  Data.a 0
  Data.u $0405
  ; *caseUnfold($0406)
  Data.a 0
  Data.u $0456
  ; *caseUnfold($0456)
  Data.a 0
  Data.u $0406
  ; *caseUnfold($0407)
  Data.a 0
  Data.u $0457
  ; *caseUnfold($0457)
  Data.a 0
  Data.u $0407
  ; *caseUnfold($0408)
  Data.a 0
  Data.u $0458
  ; *caseUnfold($0458)
  Data.a 0
  Data.u $0408
  ; *caseUnfold($0409)
  Data.a 0
  Data.u $0459
  ; *caseUnfold($0459)
  Data.a 0
  Data.u $0409
  ; *caseUnfold($040A)
  Data.a 0
  Data.u $045A
  ; *caseUnfold($045A)
  Data.a 0
  Data.u $040A
  ; *caseUnfold($040B)
  Data.a 0
  Data.u $045B
  ; *caseUnfold($045B)
  Data.a 0
  Data.u $040B
  ; *caseUnfold($040C)
  Data.a 0
  Data.u $045C
  ; *caseUnfold($045C)
  Data.a 0
  Data.u $040C
  ; *caseUnfold($040D)
  Data.a 0
  Data.u $045D
  ; *caseUnfold($045D)
  Data.a 0
  Data.u $040D
  ; *caseUnfold($040E)
  Data.a 0
  Data.u $045E
  ; *caseUnfold($045E)
  Data.a 0
  Data.u $040E
  ; *caseUnfold($040F)
  Data.a 0
  Data.u $045F
  ; *caseUnfold($045F)
  Data.a 0
  Data.u $040F
  ; *caseUnfold($0410)
  Data.a 0
  Data.u $0430
  ; *caseUnfold($0430)
  Data.a 0
  Data.u $0410
  ; *caseUnfold($0411)
  Data.a 0
  Data.u $0431
  ; *caseUnfold($0431)
  Data.a 0
  Data.u $0411
  ; *caseUnfold($0412)
  Data.a 1
  Data.u $0432,$1C80
  ; *caseUnfold($0432)
  Data.a 1
  Data.u $0412,$1C80
  ; *caseUnfold($1C80)
  Data.a 1
  Data.u $0412,$0432
  ; *caseUnfold($0413)
  Data.a 0
  Data.u $0433
  ; *caseUnfold($0433)
  Data.a 0
  Data.u $0413
  ; *caseUnfold($0414)
  Data.a 1
  Data.u $0434,$1C81
  ; *caseUnfold($0434)
  Data.a 1
  Data.u $0414,$1C81
  ; *caseUnfold($1C81)
  Data.a 1
  Data.u $0414,$0434
  ; *caseUnfold($0415)
  Data.a 0
  Data.u $0435
  ; *caseUnfold($0435)
  Data.a 0
  Data.u $0415
  ; *caseUnfold($0416)
  Data.a 0
  Data.u $0436
  ; *caseUnfold($0436)
  Data.a 0
  Data.u $0416
  ; *caseUnfold($0417)
  Data.a 0
  Data.u $0437
  ; *caseUnfold($0437)
  Data.a 0
  Data.u $0417
  ; *caseUnfold($0418)
  Data.a 0
  Data.u $0438
  ; *caseUnfold($0438)
  Data.a 0
  Data.u $0418
  ; *caseUnfold($0419)
  Data.a 0
  Data.u $0439
  ; *caseUnfold($0439)
  Data.a 0
  Data.u $0419
  ; *caseUnfold($041A)
  Data.a 0
  Data.u $043A
  ; *caseUnfold($043A)
  Data.a 0
  Data.u $041A
  ; *caseUnfold($041B)
  Data.a 0
  Data.u $043B
  ; *caseUnfold($043B)
  Data.a 0
  Data.u $041B
  ; *caseUnfold($041C)
  Data.a 0
  Data.u $043C
  ; *caseUnfold($043C)
  Data.a 0
  Data.u $041C
  ; *caseUnfold($041D)
  Data.a 0
  Data.u $043D
  ; *caseUnfold($043D)
  Data.a 0
  Data.u $041D
  ; *caseUnfold($041E)
  Data.a 1
  Data.u $043E,$1C82
  ; *caseUnfold($043E)
  Data.a 1
  Data.u $041E,$1C82
  ; *caseUnfold($1C82)
  Data.a 1
  Data.u $041E,$043E
  ; *caseUnfold($041F)
  Data.a 0
  Data.u $043F
  ; *caseUnfold($043F)
  Data.a 0
  Data.u $041F
  ; *caseUnfold($0420)
  Data.a 0
  Data.u $0440
  ; *caseUnfold($0440)
  Data.a 0
  Data.u $0420
  ; *caseUnfold($0421)
  Data.a 1
  Data.u $0441,$1C83
  ; *caseUnfold($0441)
  Data.a 1
  Data.u $0421,$1C83
  ; *caseUnfold($1C83)
  Data.a 1
  Data.u $0421,$0441
  ; *caseUnfold($0422)
  Data.a 2
  Data.u $0442,$1C85,$1C84
  ; *caseUnfold($0442)
  Data.a 2
  Data.u $0422,$1C85,$1C84
  ; *caseUnfold($1C85)
  Data.a 2
  Data.u $0422,$0442,$1C84
  ; *caseUnfold($1C84)
  Data.a 2
  Data.u $0422,$0442,$1C85
  ; *caseUnfold($0423)
  Data.a 0
  Data.u $0443
  ; *caseUnfold($0443)
  Data.a 0
  Data.u $0423
  ; *caseUnfold($0424)
  Data.a 0
  Data.u $0444
  ; *caseUnfold($0444)
  Data.a 0
  Data.u $0424
  ; *caseUnfold($0425)
  Data.a 0
  Data.u $0445
  ; *caseUnfold($0445)
  Data.a 0
  Data.u $0425
  ; *caseUnfold($0426)
  Data.a 0
  Data.u $0446
  ; *caseUnfold($0446)
  Data.a 0
  Data.u $0426
  ; *caseUnfold($0427)
  Data.a 0
  Data.u $0447
  ; *caseUnfold($0447)
  Data.a 0
  Data.u $0427
  ; *caseUnfold($0428)
  Data.a 0
  Data.u $0448
  ; *caseUnfold($0448)
  Data.a 0
  Data.u $0428
  ; *caseUnfold($0429)
  Data.a 0
  Data.u $0449
  ; *caseUnfold($0449)
  Data.a 0
  Data.u $0429
  ; *caseUnfold($042A)
  Data.a 1
  Data.u $044A,$1C86
  ; *caseUnfold($044A)
  Data.a 1
  Data.u $042A,$1C86
  ; *caseUnfold($1C86)
  Data.a 1
  Data.u $042A,$044A
  ; *caseUnfold($042B)
  Data.a 0
  Data.u $044B
  ; *caseUnfold($044B)
  Data.a 0
  Data.u $042B
  ; *caseUnfold($042C)
  Data.a 0
  Data.u $044C
  ; *caseUnfold($044C)
  Data.a 0
  Data.u $042C
  ; *caseUnfold($042D)
  Data.a 0
  Data.u $044D
  ; *caseUnfold($044D)
  Data.a 0
  Data.u $042D
  ; *caseUnfold($042E)
  Data.a 0
  Data.u $044E
  ; *caseUnfold($044E)
  Data.a 0
  Data.u $042E
  ; *caseUnfold($042F)
  Data.a 0
  Data.u $044F
  ; *caseUnfold($044F)
  Data.a 0
  Data.u $042F
  ; *caseUnfold($0460)
  Data.a 0
  Data.u $0461
  ; *caseUnfold($0461)
  Data.a 0
  Data.u $0460
  ; *caseUnfold($0462)
  Data.a 1
  Data.u $0463,$1C87
  ; *caseUnfold($0463)
  Data.a 1
  Data.u $0462,$1C87
  ; *caseUnfold($1C87)
  Data.a 1
  Data.u $0462,$0463
  ; *caseUnfold($0464)
  Data.a 0
  Data.u $0465
  ; *caseUnfold($0465)
  Data.a 0
  Data.u $0464
  ; *caseUnfold($0466)
  Data.a 0
  Data.u $0467
  ; *caseUnfold($0467)
  Data.a 0
  Data.u $0466
  ; *caseUnfold($0468)
  Data.a 0
  Data.u $0469
  ; *caseUnfold($0469)
  Data.a 0
  Data.u $0468
  ; *caseUnfold($046A)
  Data.a 0
  Data.u $046B
  ; *caseUnfold($046B)
  Data.a 0
  Data.u $046A
  ; *caseUnfold($046C)
  Data.a 0
  Data.u $046D
  ; *caseUnfold($046D)
  Data.a 0
  Data.u $046C
  ; *caseUnfold($046E)
  Data.a 0
  Data.u $046F
  ; *caseUnfold($046F)
  Data.a 0
  Data.u $046E
  ; *caseUnfold($0470)
  Data.a 0
  Data.u $0471
  ; *caseUnfold($0471)
  Data.a 0
  Data.u $0470
  ; *caseUnfold($0472)
  Data.a 0
  Data.u $0473
  ; *caseUnfold($0473)
  Data.a 0
  Data.u $0472
  ; *caseUnfold($0474)
  Data.a 0
  Data.u $0475
  ; *caseUnfold($0475)
  Data.a 0
  Data.u $0474
  ; *caseUnfold($0476)
  Data.a 0
  Data.u $0477
  ; *caseUnfold($0477)
  Data.a 0
  Data.u $0476
  ; *caseUnfold($0478)
  Data.a 0
  Data.u $0479
  ; *caseUnfold($0479)
  Data.a 0
  Data.u $0478
  ; *caseUnfold($047A)
  Data.a 0
  Data.u $047B
  ; *caseUnfold($047B)
  Data.a 0
  Data.u $047A
  ; *caseUnfold($047C)
  Data.a 0
  Data.u $047D
  ; *caseUnfold($047D)
  Data.a 0
  Data.u $047C
  ; *caseUnfold($047E)
  Data.a 0
  Data.u $047F
  ; *caseUnfold($047F)
  Data.a 0
  Data.u $047E
  ; *caseUnfold($0480)
  Data.a 0
  Data.u $0481
  ; *caseUnfold($0481)
  Data.a 0
  Data.u $0480
  ; *caseUnfold($048A)
  Data.a 0
  Data.u $048B
  ; *caseUnfold($048B)
  Data.a 0
  Data.u $048A
  ; *caseUnfold($048C)
  Data.a 0
  Data.u $048D
  ; *caseUnfold($048D)
  Data.a 0
  Data.u $048C
  ; *caseUnfold($048E)
  Data.a 0
  Data.u $048F
  ; *caseUnfold($048F)
  Data.a 0
  Data.u $048E
  ; *caseUnfold($0490)
  Data.a 0
  Data.u $0491
  ; *caseUnfold($0491)
  Data.a 0
  Data.u $0490
  ; *caseUnfold($0492)
  Data.a 0
  Data.u $0493
  ; *caseUnfold($0493)
  Data.a 0
  Data.u $0492
  ; *caseUnfold($0494)
  Data.a 0
  Data.u $0495
  ; *caseUnfold($0495)
  Data.a 0
  Data.u $0494
  ; *caseUnfold($0496)
  Data.a 0
  Data.u $0497
  ; *caseUnfold($0497)
  Data.a 0
  Data.u $0496
  ; *caseUnfold($0498)
  Data.a 0
  Data.u $0499
  ; *caseUnfold($0499)
  Data.a 0
  Data.u $0498
  ; *caseUnfold($049A)
  Data.a 0
  Data.u $049B
  ; *caseUnfold($049B)
  Data.a 0
  Data.u $049A
  ; *caseUnfold($049C)
  Data.a 0
  Data.u $049D
  ; *caseUnfold($049D)
  Data.a 0
  Data.u $049C
  ; *caseUnfold($049E)
  Data.a 0
  Data.u $049F
  ; *caseUnfold($049F)
  Data.a 0
  Data.u $049E
  ; *caseUnfold($04A0)
  Data.a 0
  Data.u $04A1
  ; *caseUnfold($04A1)
  Data.a 0
  Data.u $04A0
  ; *caseUnfold($04A2)
  Data.a 0
  Data.u $04A3
  ; *caseUnfold($04A3)
  Data.a 0
  Data.u $04A2
  ; *caseUnfold($04A4)
  Data.a 0
  Data.u $04A5
  ; *caseUnfold($04A5)
  Data.a 0
  Data.u $04A4
  ; *caseUnfold($04A6)
  Data.a 0
  Data.u $04A7
  ; *caseUnfold($04A7)
  Data.a 0
  Data.u $04A6
  ; *caseUnfold($04A8)
  Data.a 0
  Data.u $04A9
  ; *caseUnfold($04A9)
  Data.a 0
  Data.u $04A8
  ; *caseUnfold($04AA)
  Data.a 0
  Data.u $04AB
  ; *caseUnfold($04AB)
  Data.a 0
  Data.u $04AA
  ; *caseUnfold($04AC)
  Data.a 0
  Data.u $04AD
  ; *caseUnfold($04AD)
  Data.a 0
  Data.u $04AC
  ; *caseUnfold($04AE)
  Data.a 0
  Data.u $04AF
  ; *caseUnfold($04AF)
  Data.a 0
  Data.u $04AE
  ; *caseUnfold($04B0)
  Data.a 0
  Data.u $04B1
  ; *caseUnfold($04B1)
  Data.a 0
  Data.u $04B0
  ; *caseUnfold($04B2)
  Data.a 0
  Data.u $04B3
  ; *caseUnfold($04B3)
  Data.a 0
  Data.u $04B2
  ; *caseUnfold($04B4)
  Data.a 0
  Data.u $04B5
  ; *caseUnfold($04B5)
  Data.a 0
  Data.u $04B4
  ; *caseUnfold($04B6)
  Data.a 0
  Data.u $04B7
  ; *caseUnfold($04B7)
  Data.a 0
  Data.u $04B6
  ; *caseUnfold($04B8)
  Data.a 0
  Data.u $04B9
  ; *caseUnfold($04B9)
  Data.a 0
  Data.u $04B8
  ; *caseUnfold($04BA)
  Data.a 0
  Data.u $04BB
  ; *caseUnfold($04BB)
  Data.a 0
  Data.u $04BA
  ; *caseUnfold($04BC)
  Data.a 0
  Data.u $04BD
  ; *caseUnfold($04BD)
  Data.a 0
  Data.u $04BC
  ; *caseUnfold($04BE)
  Data.a 0
  Data.u $04BF
  ; *caseUnfold($04BF)
  Data.a 0
  Data.u $04BE
  ; *caseUnfold($04C0)
  Data.a 0
  Data.u $04CF
  ; *caseUnfold($04CF)
  Data.a 0
  Data.u $04C0
  ; *caseUnfold($04C1)
  Data.a 0
  Data.u $04C2
  ; *caseUnfold($04C2)
  Data.a 0
  Data.u $04C1
  ; *caseUnfold($04C3)
  Data.a 0
  Data.u $04C4
  ; *caseUnfold($04C4)
  Data.a 0
  Data.u $04C3
  ; *caseUnfold($04C5)
  Data.a 0
  Data.u $04C6
  ; *caseUnfold($04C6)
  Data.a 0
  Data.u $04C5
  ; *caseUnfold($04C7)
  Data.a 0
  Data.u $04C8
  ; *caseUnfold($04C8)
  Data.a 0
  Data.u $04C7
  ; *caseUnfold($04C9)
  Data.a 0
  Data.u $04CA
  ; *caseUnfold($04CA)
  Data.a 0
  Data.u $04C9
  ; *caseUnfold($04CB)
  Data.a 0
  Data.u $04CC
  ; *caseUnfold($04CC)
  Data.a 0
  Data.u $04CB
  ; *caseUnfold($04CD)
  Data.a 0
  Data.u $04CE
  ; *caseUnfold($04CE)
  Data.a 0
  Data.u $04CD
  ; *caseUnfold($04D0)
  Data.a 0
  Data.u $04D1
  ; *caseUnfold($04D1)
  Data.a 0
  Data.u $04D0
  ; *caseUnfold($04D2)
  Data.a 0
  Data.u $04D3
  ; *caseUnfold($04D3)
  Data.a 0
  Data.u $04D2
  ; *caseUnfold($04D4)
  Data.a 0
  Data.u $04D5
  ; *caseUnfold($04D5)
  Data.a 0
  Data.u $04D4
  ; *caseUnfold($04D6)
  Data.a 0
  Data.u $04D7
  ; *caseUnfold($04D7)
  Data.a 0
  Data.u $04D6
  ; *caseUnfold($04D8)
  Data.a 0
  Data.u $04D9
  ; *caseUnfold($04D9)
  Data.a 0
  Data.u $04D8
  ; *caseUnfold($04DA)
  Data.a 0
  Data.u $04DB
  ; *caseUnfold($04DB)
  Data.a 0
  Data.u $04DA
  ; *caseUnfold($04DC)
  Data.a 0
  Data.u $04DD
  ; *caseUnfold($04DD)
  Data.a 0
  Data.u $04DC
  ; *caseUnfold($04DE)
  Data.a 0
  Data.u $04DF
  ; *caseUnfold($04DF)
  Data.a 0
  Data.u $04DE
  ; *caseUnfold($04E0)
  Data.a 0
  Data.u $04E1
  ; *caseUnfold($04E1)
  Data.a 0
  Data.u $04E0
  ; *caseUnfold($04E2)
  Data.a 0
  Data.u $04E3
  ; *caseUnfold($04E3)
  Data.a 0
  Data.u $04E2
  ; *caseUnfold($04E4)
  Data.a 0
  Data.u $04E5
  ; *caseUnfold($04E5)
  Data.a 0
  Data.u $04E4
  ; *caseUnfold($04E6)
  Data.a 0
  Data.u $04E7
  ; *caseUnfold($04E7)
  Data.a 0
  Data.u $04E6
  ; *caseUnfold($04E8)
  Data.a 0
  Data.u $04E9
  ; *caseUnfold($04E9)
  Data.a 0
  Data.u $04E8
  ; *caseUnfold($04EA)
  Data.a 0
  Data.u $04EB
  ; *caseUnfold($04EB)
  Data.a 0
  Data.u $04EA
  ; *caseUnfold($04EC)
  Data.a 0
  Data.u $04ED
  ; *caseUnfold($04ED)
  Data.a 0
  Data.u $04EC
  ; *caseUnfold($04EE)
  Data.a 0
  Data.u $04EF
  ; *caseUnfold($04EF)
  Data.a 0
  Data.u $04EE
  ; *caseUnfold($04F0)
  Data.a 0
  Data.u $04F1
  ; *caseUnfold($04F1)
  Data.a 0
  Data.u $04F0
  ; *caseUnfold($04F2)
  Data.a 0
  Data.u $04F3
  ; *caseUnfold($04F3)
  Data.a 0
  Data.u $04F2
  ; *caseUnfold($04F4)
  Data.a 0
  Data.u $04F5
  ; *caseUnfold($04F5)
  Data.a 0
  Data.u $04F4
  ; *caseUnfold($04F6)
  Data.a 0
  Data.u $04F7
  ; *caseUnfold($04F7)
  Data.a 0
  Data.u $04F6
  ; *caseUnfold($04F8)
  Data.a 0
  Data.u $04F9
  ; *caseUnfold($04F9)
  Data.a 0
  Data.u $04F8
  ; *caseUnfold($04FA)
  Data.a 0
  Data.u $04FB
  ; *caseUnfold($04FB)
  Data.a 0
  Data.u $04FA
  ; *caseUnfold($04FC)
  Data.a 0
  Data.u $04FD
  ; *caseUnfold($04FD)
  Data.a 0
  Data.u $04FC
  ; *caseUnfold($04FE)
  Data.a 0
  Data.u $04FF
  ; *caseUnfold($04FF)
  Data.a 0
  Data.u $04FE
  ; *caseUnfold($0500)
  Data.a 0
  Data.u $0501
  ; *caseUnfold($0501)
  Data.a 0
  Data.u $0500
  ; *caseUnfold($0502)
  Data.a 0
  Data.u $0503
  ; *caseUnfold($0503)
  Data.a 0
  Data.u $0502
  ; *caseUnfold($0504)
  Data.a 0
  Data.u $0505
  ; *caseUnfold($0505)
  Data.a 0
  Data.u $0504
  ; *caseUnfold($0506)
  Data.a 0
  Data.u $0507
  ; *caseUnfold($0507)
  Data.a 0
  Data.u $0506
  ; *caseUnfold($0508)
  Data.a 0
  Data.u $0509
  ; *caseUnfold($0509)
  Data.a 0
  Data.u $0508
  ; *caseUnfold($050A)
  Data.a 0
  Data.u $050B
  ; *caseUnfold($050B)
  Data.a 0
  Data.u $050A
  ; *caseUnfold($050C)
  Data.a 0
  Data.u $050D
  ; *caseUnfold($050D)
  Data.a 0
  Data.u $050C
  ; *caseUnfold($050E)
  Data.a 0
  Data.u $050F
  ; *caseUnfold($050F)
  Data.a 0
  Data.u $050E
  ; *caseUnfold($0510)
  Data.a 0
  Data.u $0511
  ; *caseUnfold($0511)
  Data.a 0
  Data.u $0510
  ; *caseUnfold($0512)
  Data.a 0
  Data.u $0513
  ; *caseUnfold($0513)
  Data.a 0
  Data.u $0512
  ; *caseUnfold($0514)
  Data.a 0
  Data.u $0515
  ; *caseUnfold($0515)
  Data.a 0
  Data.u $0514
  ; *caseUnfold($0516)
  Data.a 0
  Data.u $0517
  ; *caseUnfold($0517)
  Data.a 0
  Data.u $0516
  ; *caseUnfold($0518)
  Data.a 0
  Data.u $0519
  ; *caseUnfold($0519)
  Data.a 0
  Data.u $0518
  ; *caseUnfold($051A)
  Data.a 0
  Data.u $051B
  ; *caseUnfold($051B)
  Data.a 0
  Data.u $051A
  ; *caseUnfold($051C)
  Data.a 0
  Data.u $051D
  ; *caseUnfold($051D)
  Data.a 0
  Data.u $051C
  ; *caseUnfold($051E)
  Data.a 0
  Data.u $051F
  ; *caseUnfold($051F)
  Data.a 0
  Data.u $051E
  ; *caseUnfold($0520)
  Data.a 0
  Data.u $0521
  ; *caseUnfold($0521)
  Data.a 0
  Data.u $0520
  ; *caseUnfold($0522)
  Data.a 0
  Data.u $0523
  ; *caseUnfold($0523)
  Data.a 0
  Data.u $0522
  ; *caseUnfold($0524)
  Data.a 0
  Data.u $0525
  ; *caseUnfold($0525)
  Data.a 0
  Data.u $0524
  ; *caseUnfold($0526)
  Data.a 0
  Data.u $0527
  ; *caseUnfold($0527)
  Data.a 0
  Data.u $0526
  ; *caseUnfold($0528)
  Data.a 0
  Data.u $0529
  ; *caseUnfold($0529)
  Data.a 0
  Data.u $0528
  ; *caseUnfold($052A)
  Data.a 0
  Data.u $052B
  ; *caseUnfold($052B)
  Data.a 0
  Data.u $052A
  ; *caseUnfold($052C)
  Data.a 0
  Data.u $052D
  ; *caseUnfold($052D)
  Data.a 0
  Data.u $052C
  ; *caseUnfold($052E)
  Data.a 0
  Data.u $052F
  ; *caseUnfold($052F)
  Data.a 0
  Data.u $052E
  ; *caseUnfold($0531)
  Data.a 0
  Data.u $0561
  ; *caseUnfold($0561)
  Data.a 0
  Data.u $0531
  ; *caseUnfold($0532)
  Data.a 0
  Data.u $0562
  ; *caseUnfold($0562)
  Data.a 0
  Data.u $0532
  ; *caseUnfold($0533)
  Data.a 0
  Data.u $0563
  ; *caseUnfold($0563)
  Data.a 0
  Data.u $0533
  ; *caseUnfold($0534)
  Data.a 0
  Data.u $0564
  ; *caseUnfold($0564)
  Data.a 0
  Data.u $0534
  ; *caseUnfold($0535)
  Data.a 0
  Data.u $0565
  ; *caseUnfold($0565)
  Data.a 0
  Data.u $0535
  ; *caseUnfold($0536)
  Data.a 0
  Data.u $0566
  ; *caseUnfold($0566)
  Data.a 0
  Data.u $0536
  ; *caseUnfold($0537)
  Data.a 0
  Data.u $0567
  ; *caseUnfold($0567)
  Data.a 0
  Data.u $0537
  ; *caseUnfold($0538)
  Data.a 0
  Data.u $0568
  ; *caseUnfold($0568)
  Data.a 0
  Data.u $0538
  ; *caseUnfold($0539)
  Data.a 0
  Data.u $0569
  ; *caseUnfold($0569)
  Data.a 0
  Data.u $0539
  ; *caseUnfold($053A)
  Data.a 0
  Data.u $056A
  ; *caseUnfold($056A)
  Data.a 0
  Data.u $053A
  ; *caseUnfold($053B)
  Data.a 0
  Data.u $056B
  ; *caseUnfold($056B)
  Data.a 0
  Data.u $053B
  ; *caseUnfold($053C)
  Data.a 0
  Data.u $056C
  ; *caseUnfold($056C)
  Data.a 0
  Data.u $053C
  ; *caseUnfold($053D)
  Data.a 0
  Data.u $056D
  ; *caseUnfold($056D)
  Data.a 0
  Data.u $053D
  ; *caseUnfold($053E)
  Data.a 0
  Data.u $056E
  ; *caseUnfold($056E)
  Data.a 0
  Data.u $053E
  ; *caseUnfold($053F)
  Data.a 0
  Data.u $056F
  ; *caseUnfold($056F)
  Data.a 0
  Data.u $053F
  ; *caseUnfold($0540)
  Data.a 0
  Data.u $0570
  ; *caseUnfold($0570)
  Data.a 0
  Data.u $0540
  ; *caseUnfold($0541)
  Data.a 0
  Data.u $0571
  ; *caseUnfold($0571)
  Data.a 0
  Data.u $0541
  ; *caseUnfold($0542)
  Data.a 0
  Data.u $0572
  ; *caseUnfold($0572)
  Data.a 0
  Data.u $0542
  ; *caseUnfold($0543)
  Data.a 0
  Data.u $0573
  ; *caseUnfold($0573)
  Data.a 0
  Data.u $0543
  ; *caseUnfold($0544)
  Data.a 0
  Data.u $0574
  ; *caseUnfold($0574)
  Data.a 0
  Data.u $0544
  ; *caseUnfold($0545)
  Data.a 0
  Data.u $0575
  ; *caseUnfold($0575)
  Data.a 0
  Data.u $0545
  ; *caseUnfold($0546)
  Data.a 0
  Data.u $0576
  ; *caseUnfold($0576)
  Data.a 0
  Data.u $0546
  ; *caseUnfold($0547)
  Data.a 0
  Data.u $0577
  ; *caseUnfold($0577)
  Data.a 0
  Data.u $0547
  ; *caseUnfold($0548)
  Data.a 0
  Data.u $0578
  ; *caseUnfold($0578)
  Data.a 0
  Data.u $0548
  ; *caseUnfold($0549)
  Data.a 0
  Data.u $0579
  ; *caseUnfold($0579)
  Data.a 0
  Data.u $0549
  ; *caseUnfold($054A)
  Data.a 0
  Data.u $057A
  ; *caseUnfold($057A)
  Data.a 0
  Data.u $054A
  ; *caseUnfold($054B)
  Data.a 0
  Data.u $057B
  ; *caseUnfold($057B)
  Data.a 0
  Data.u $054B
  ; *caseUnfold($054C)
  Data.a 0
  Data.u $057C
  ; *caseUnfold($057C)
  Data.a 0
  Data.u $054C
  ; *caseUnfold($054D)
  Data.a 0
  Data.u $057D
  ; *caseUnfold($057D)
  Data.a 0
  Data.u $054D
  ; *caseUnfold($054E)
  Data.a 0
  Data.u $057E
  ; *caseUnfold($057E)
  Data.a 0
  Data.u $054E
  ; *caseUnfold($054F)
  Data.a 0
  Data.u $057F
  ; *caseUnfold($057F)
  Data.a 0
  Data.u $054F
  ; *caseUnfold($0550)
  Data.a 0
  Data.u $0580
  ; *caseUnfold($0580)
  Data.a 0
  Data.u $0550
  ; *caseUnfold($0551)
  Data.a 0
  Data.u $0581
  ; *caseUnfold($0581)
  Data.a 0
  Data.u $0551
  ; *caseUnfold($0552)
  Data.a 0
  Data.u $0582
  ; *caseUnfold($0582)
  Data.a 0
  Data.u $0552
  ; *caseUnfold($0553)
  Data.a 0
  Data.u $0583
  ; *caseUnfold($0583)
  Data.a 0
  Data.u $0553
  ; *caseUnfold($0554)
  Data.a 0
  Data.u $0584
  ; *caseUnfold($0584)
  Data.a 0
  Data.u $0554
  ; *caseUnfold($0555)
  Data.a 0
  Data.u $0585
  ; *caseUnfold($0585)
  Data.a 0
  Data.u $0555
  ; *caseUnfold($0556)
  Data.a 0
  Data.u $0586
  ; *caseUnfold($0586)
  Data.a 0
  Data.u $0556
  ; *caseUnfold($10A0)
  Data.a 0
  Data.u $2D00
  ; *caseUnfold($2D00)
  Data.a 0
  Data.u $10A0
  ; *caseUnfold($10A1)
  Data.a 0
  Data.u $2D01
  ; *caseUnfold($2D01)
  Data.a 0
  Data.u $10A1
  ; *caseUnfold($10A2)
  Data.a 0
  Data.u $2D02
  ; *caseUnfold($2D02)
  Data.a 0
  Data.u $10A2
  ; *caseUnfold($10A3)
  Data.a 0
  Data.u $2D03
  ; *caseUnfold($2D03)
  Data.a 0
  Data.u $10A3
  ; *caseUnfold($10A4)
  Data.a 0
  Data.u $2D04
  ; *caseUnfold($2D04)
  Data.a 0
  Data.u $10A4
  ; *caseUnfold($10A5)
  Data.a 0
  Data.u $2D05
  ; *caseUnfold($2D05)
  Data.a 0
  Data.u $10A5
  ; *caseUnfold($10A6)
  Data.a 0
  Data.u $2D06
  ; *caseUnfold($2D06)
  Data.a 0
  Data.u $10A6
  ; *caseUnfold($10A7)
  Data.a 0
  Data.u $2D07
  ; *caseUnfold($2D07)
  Data.a 0
  Data.u $10A7
  ; *caseUnfold($10A8)
  Data.a 0
  Data.u $2D08
  ; *caseUnfold($2D08)
  Data.a 0
  Data.u $10A8
  ; *caseUnfold($10A9)
  Data.a 0
  Data.u $2D09
  ; *caseUnfold($2D09)
  Data.a 0
  Data.u $10A9
  ; *caseUnfold($10AA)
  Data.a 0
  Data.u $2D0A
  ; *caseUnfold($2D0A)
  Data.a 0
  Data.u $10AA
  ; *caseUnfold($10AB)
  Data.a 0
  Data.u $2D0B
  ; *caseUnfold($2D0B)
  Data.a 0
  Data.u $10AB
  ; *caseUnfold($10AC)
  Data.a 0
  Data.u $2D0C
  ; *caseUnfold($2D0C)
  Data.a 0
  Data.u $10AC
  ; *caseUnfold($10AD)
  Data.a 0
  Data.u $2D0D
  ; *caseUnfold($2D0D)
  Data.a 0
  Data.u $10AD
  ; *caseUnfold($10AE)
  Data.a 0
  Data.u $2D0E
  ; *caseUnfold($2D0E)
  Data.a 0
  Data.u $10AE
  ; *caseUnfold($10AF)
  Data.a 0
  Data.u $2D0F
  ; *caseUnfold($2D0F)
  Data.a 0
  Data.u $10AF
  ; *caseUnfold($10B0)
  Data.a 0
  Data.u $2D10
  ; *caseUnfold($2D10)
  Data.a 0
  Data.u $10B0
  ; *caseUnfold($10B1)
  Data.a 0
  Data.u $2D11
  ; *caseUnfold($2D11)
  Data.a 0
  Data.u $10B1
  ; *caseUnfold($10B2)
  Data.a 0
  Data.u $2D12
  ; *caseUnfold($2D12)
  Data.a 0
  Data.u $10B2
  ; *caseUnfold($10B3)
  Data.a 0
  Data.u $2D13
  ; *caseUnfold($2D13)
  Data.a 0
  Data.u $10B3
  ; *caseUnfold($10B4)
  Data.a 0
  Data.u $2D14
  ; *caseUnfold($2D14)
  Data.a 0
  Data.u $10B4
  ; *caseUnfold($10B5)
  Data.a 0
  Data.u $2D15
  ; *caseUnfold($2D15)
  Data.a 0
  Data.u $10B5
  ; *caseUnfold($10B6)
  Data.a 0
  Data.u $2D16
  ; *caseUnfold($2D16)
  Data.a 0
  Data.u $10B6
  ; *caseUnfold($10B7)
  Data.a 0
  Data.u $2D17
  ; *caseUnfold($2D17)
  Data.a 0
  Data.u $10B7
  ; *caseUnfold($10B8)
  Data.a 0
  Data.u $2D18
  ; *caseUnfold($2D18)
  Data.a 0
  Data.u $10B8
  ; *caseUnfold($10B9)
  Data.a 0
  Data.u $2D19
  ; *caseUnfold($2D19)
  Data.a 0
  Data.u $10B9
  ; *caseUnfold($10BA)
  Data.a 0
  Data.u $2D1A
  ; *caseUnfold($2D1A)
  Data.a 0
  Data.u $10BA
  ; *caseUnfold($10BB)
  Data.a 0
  Data.u $2D1B
  ; *caseUnfold($2D1B)
  Data.a 0
  Data.u $10BB
  ; *caseUnfold($10BC)
  Data.a 0
  Data.u $2D1C
  ; *caseUnfold($2D1C)
  Data.a 0
  Data.u $10BC
  ; *caseUnfold($10BD)
  Data.a 0
  Data.u $2D1D
  ; *caseUnfold($2D1D)
  Data.a 0
  Data.u $10BD
  ; *caseUnfold($10BE)
  Data.a 0
  Data.u $2D1E
  ; *caseUnfold($2D1E)
  Data.a 0
  Data.u $10BE
  ; *caseUnfold($10BF)
  Data.a 0
  Data.u $2D1F
  ; *caseUnfold($2D1F)
  Data.a 0
  Data.u $10BF
  ; *caseUnfold($10C0)
  Data.a 0
  Data.u $2D20
  ; *caseUnfold($2D20)
  Data.a 0
  Data.u $10C0
  ; *caseUnfold($10C1)
  Data.a 0
  Data.u $2D21
  ; *caseUnfold($2D21)
  Data.a 0
  Data.u $10C1
  ; *caseUnfold($10C2)
  Data.a 0
  Data.u $2D22
  ; *caseUnfold($2D22)
  Data.a 0
  Data.u $10C2
  ; *caseUnfold($10C3)
  Data.a 0
  Data.u $2D23
  ; *caseUnfold($2D23)
  Data.a 0
  Data.u $10C3
  ; *caseUnfold($10C4)
  Data.a 0
  Data.u $2D24
  ; *caseUnfold($2D24)
  Data.a 0
  Data.u $10C4
  ; *caseUnfold($10C5)
  Data.a 0
  Data.u $2D25
  ; *caseUnfold($2D25)
  Data.a 0
  Data.u $10C5
  ; *caseUnfold($10C7)
  Data.a 0
  Data.u $2D27
  ; *caseUnfold($2D27)
  Data.a 0
  Data.u $10C7
  ; *caseUnfold($10CD)
  Data.a 0
  Data.u $2D2D
  ; *caseUnfold($2D2D)
  Data.a 0
  Data.u $10CD
  ; *caseUnfold($13F8)
  Data.a 0
  Data.u $13F0
  ; *caseUnfold($13F0)
  Data.a 0
  Data.u $13F8
  ; *caseUnfold($13F9)
  Data.a 0
  Data.u $13F1
  ; *caseUnfold($13F1)
  Data.a 0
  Data.u $13F9
  ; *caseUnfold($13FA)
  Data.a 0
  Data.u $13F2
  ; *caseUnfold($13F2)
  Data.a 0
  Data.u $13FA
  ; *caseUnfold($13FB)
  Data.a 0
  Data.u $13F3
  ; *caseUnfold($13F3)
  Data.a 0
  Data.u $13FB
  ; *caseUnfold($13FC)
  Data.a 0
  Data.u $13F4
  ; *caseUnfold($13F4)
  Data.a 0
  Data.u $13FC
  ; *caseUnfold($13FD)
  Data.a 0
  Data.u $13F5
  ; *caseUnfold($13F5)
  Data.a 0
  Data.u $13FD
  ; *caseUnfold($1C88)
  Data.a 1
  Data.u $A64B,$A64A
  ; *caseUnfold($A64B)
  Data.a 1
  Data.u $1C88,$A64A
  ; *caseUnfold($A64A)
  Data.a 1
  Data.u $1C88,$A64B
  ; *caseUnfold($1C90)
  Data.a 0
  Data.u $10D0
  ; *caseUnfold($10D0)
  Data.a 0
  Data.u $1C90
  ; *caseUnfold($1C91)
  Data.a 0
  Data.u $10D1
  ; *caseUnfold($10D1)
  Data.a 0
  Data.u $1C91
  ; *caseUnfold($1C92)
  Data.a 0
  Data.u $10D2
  ; *caseUnfold($10D2)
  Data.a 0
  Data.u $1C92
  ; *caseUnfold($1C93)
  Data.a 0
  Data.u $10D3
  ; *caseUnfold($10D3)
  Data.a 0
  Data.u $1C93
  ; *caseUnfold($1C94)
  Data.a 0
  Data.u $10D4
  ; *caseUnfold($10D4)
  Data.a 0
  Data.u $1C94
  ; *caseUnfold($1C95)
  Data.a 0
  Data.u $10D5
  ; *caseUnfold($10D5)
  Data.a 0
  Data.u $1C95
  ; *caseUnfold($1C96)
  Data.a 0
  Data.u $10D6
  ; *caseUnfold($10D6)
  Data.a 0
  Data.u $1C96
  ; *caseUnfold($1C97)
  Data.a 0
  Data.u $10D7
  ; *caseUnfold($10D7)
  Data.a 0
  Data.u $1C97
  ; *caseUnfold($1C98)
  Data.a 0
  Data.u $10D8
  ; *caseUnfold($10D8)
  Data.a 0
  Data.u $1C98
  ; *caseUnfold($1C99)
  Data.a 0
  Data.u $10D9
  ; *caseUnfold($10D9)
  Data.a 0
  Data.u $1C99
  ; *caseUnfold($1C9A)
  Data.a 0
  Data.u $10DA
  ; *caseUnfold($10DA)
  Data.a 0
  Data.u $1C9A
  ; *caseUnfold($1C9B)
  Data.a 0
  Data.u $10DB
  ; *caseUnfold($10DB)
  Data.a 0
  Data.u $1C9B
  ; *caseUnfold($1C9C)
  Data.a 0
  Data.u $10DC
  ; *caseUnfold($10DC)
  Data.a 0
  Data.u $1C9C
  ; *caseUnfold($1C9D)
  Data.a 0
  Data.u $10DD
  ; *caseUnfold($10DD)
  Data.a 0
  Data.u $1C9D
  ; *caseUnfold($1C9E)
  Data.a 0
  Data.u $10DE
  ; *caseUnfold($10DE)
  Data.a 0
  Data.u $1C9E
  ; *caseUnfold($1C9F)
  Data.a 0
  Data.u $10DF
  ; *caseUnfold($10DF)
  Data.a 0
  Data.u $1C9F
  ; *caseUnfold($1CA0)
  Data.a 0
  Data.u $10E0
  ; *caseUnfold($10E0)
  Data.a 0
  Data.u $1CA0
  ; *caseUnfold($1CA1)
  Data.a 0
  Data.u $10E1
  ; *caseUnfold($10E1)
  Data.a 0
  Data.u $1CA1
  ; *caseUnfold($1CA2)
  Data.a 0
  Data.u $10E2
  ; *caseUnfold($10E2)
  Data.a 0
  Data.u $1CA2
  ; *caseUnfold($1CA3)
  Data.a 0
  Data.u $10E3
  ; *caseUnfold($10E3)
  Data.a 0
  Data.u $1CA3
  ; *caseUnfold($1CA4)
  Data.a 0
  Data.u $10E4
  ; *caseUnfold($10E4)
  Data.a 0
  Data.u $1CA4
  ; *caseUnfold($1CA5)
  Data.a 0
  Data.u $10E5
  ; *caseUnfold($10E5)
  Data.a 0
  Data.u $1CA5
  ; *caseUnfold($1CA6)
  Data.a 0
  Data.u $10E6
  ; *caseUnfold($10E6)
  Data.a 0
  Data.u $1CA6
  ; *caseUnfold($1CA7)
  Data.a 0
  Data.u $10E7
  ; *caseUnfold($10E7)
  Data.a 0
  Data.u $1CA7
  ; *caseUnfold($1CA8)
  Data.a 0
  Data.u $10E8
  ; *caseUnfold($10E8)
  Data.a 0
  Data.u $1CA8
  ; *caseUnfold($1CA9)
  Data.a 0
  Data.u $10E9
  ; *caseUnfold($10E9)
  Data.a 0
  Data.u $1CA9
  ; *caseUnfold($1CAA)
  Data.a 0
  Data.u $10EA
  ; *caseUnfold($10EA)
  Data.a 0
  Data.u $1CAA
  ; *caseUnfold($1CAB)
  Data.a 0
  Data.u $10EB
  ; *caseUnfold($10EB)
  Data.a 0
  Data.u $1CAB
  ; *caseUnfold($1CAC)
  Data.a 0
  Data.u $10EC
  ; *caseUnfold($10EC)
  Data.a 0
  Data.u $1CAC
  ; *caseUnfold($1CAD)
  Data.a 0
  Data.u $10ED
  ; *caseUnfold($10ED)
  Data.a 0
  Data.u $1CAD
  ; *caseUnfold($1CAE)
  Data.a 0
  Data.u $10EE
  ; *caseUnfold($10EE)
  Data.a 0
  Data.u $1CAE
  ; *caseUnfold($1CAF)
  Data.a 0
  Data.u $10EF
  ; *caseUnfold($10EF)
  Data.a 0
  Data.u $1CAF
  ; *caseUnfold($1CB0)
  Data.a 0
  Data.u $10F0
  ; *caseUnfold($10F0)
  Data.a 0
  Data.u $1CB0
  ; *caseUnfold($1CB1)
  Data.a 0
  Data.u $10F1
  ; *caseUnfold($10F1)
  Data.a 0
  Data.u $1CB1
  ; *caseUnfold($1CB2)
  Data.a 0
  Data.u $10F2
  ; *caseUnfold($10F2)
  Data.a 0
  Data.u $1CB2
  ; *caseUnfold($1CB3)
  Data.a 0
  Data.u $10F3
  ; *caseUnfold($10F3)
  Data.a 0
  Data.u $1CB3
  ; *caseUnfold($1CB4)
  Data.a 0
  Data.u $10F4
  ; *caseUnfold($10F4)
  Data.a 0
  Data.u $1CB4
  ; *caseUnfold($1CB5)
  Data.a 0
  Data.u $10F5
  ; *caseUnfold($10F5)
  Data.a 0
  Data.u $1CB5
  ; *caseUnfold($1CB6)
  Data.a 0
  Data.u $10F6
  ; *caseUnfold($10F6)
  Data.a 0
  Data.u $1CB6
  ; *caseUnfold($1CB7)
  Data.a 0
  Data.u $10F7
  ; *caseUnfold($10F7)
  Data.a 0
  Data.u $1CB7
  ; *caseUnfold($1CB8)
  Data.a 0
  Data.u $10F8
  ; *caseUnfold($10F8)
  Data.a 0
  Data.u $1CB8
  ; *caseUnfold($1CB9)
  Data.a 0
  Data.u $10F9
  ; *caseUnfold($10F9)
  Data.a 0
  Data.u $1CB9
  ; *caseUnfold($1CBA)
  Data.a 0
  Data.u $10FA
  ; *caseUnfold($10FA)
  Data.a 0
  Data.u $1CBA
  ; *caseUnfold($1CBD)
  Data.a 0
  Data.u $10FD
  ; *caseUnfold($10FD)
  Data.a 0
  Data.u $1CBD
  ; *caseUnfold($1CBE)
  Data.a 0
  Data.u $10FE
  ; *caseUnfold($10FE)
  Data.a 0
  Data.u $1CBE
  ; *caseUnfold($1CBF)
  Data.a 0
  Data.u $10FF
  ; *caseUnfold($10FF)
  Data.a 0
  Data.u $1CBF
  ; *caseUnfold($1E00)
  Data.a 0
  Data.u $1E01
  ; *caseUnfold($1E01)
  Data.a 0
  Data.u $1E00
  ; *caseUnfold($1E02)
  Data.a 0
  Data.u $1E03
  ; *caseUnfold($1E03)
  Data.a 0
  Data.u $1E02
  ; *caseUnfold($1E04)
  Data.a 0
  Data.u $1E05
  ; *caseUnfold($1E05)
  Data.a 0
  Data.u $1E04
  ; *caseUnfold($1E06)
  Data.a 0
  Data.u $1E07
  ; *caseUnfold($1E07)
  Data.a 0
  Data.u $1E06
  ; *caseUnfold($1E08)
  Data.a 0
  Data.u $1E09
  ; *caseUnfold($1E09)
  Data.a 0
  Data.u $1E08
  ; *caseUnfold($1E0A)
  Data.a 0
  Data.u $1E0B
  ; *caseUnfold($1E0B)
  Data.a 0
  Data.u $1E0A
  ; *caseUnfold($1E0C)
  Data.a 0
  Data.u $1E0D
  ; *caseUnfold($1E0D)
  Data.a 0
  Data.u $1E0C
  ; *caseUnfold($1E0E)
  Data.a 0
  Data.u $1E0F
  ; *caseUnfold($1E0F)
  Data.a 0
  Data.u $1E0E
  ; *caseUnfold($1E10)
  Data.a 0
  Data.u $1E11
  ; *caseUnfold($1E11)
  Data.a 0
  Data.u $1E10
  ; *caseUnfold($1E12)
  Data.a 0
  Data.u $1E13
  ; *caseUnfold($1E13)
  Data.a 0
  Data.u $1E12
  ; *caseUnfold($1E14)
  Data.a 0
  Data.u $1E15
  ; *caseUnfold($1E15)
  Data.a 0
  Data.u $1E14
  ; *caseUnfold($1E16)
  Data.a 0
  Data.u $1E17
  ; *caseUnfold($1E17)
  Data.a 0
  Data.u $1E16
  ; *caseUnfold($1E18)
  Data.a 0
  Data.u $1E19
  ; *caseUnfold($1E19)
  Data.a 0
  Data.u $1E18
  ; *caseUnfold($1E1A)
  Data.a 0
  Data.u $1E1B
  ; *caseUnfold($1E1B)
  Data.a 0
  Data.u $1E1A
  ; *caseUnfold($1E1C)
  Data.a 0
  Data.u $1E1D
  ; *caseUnfold($1E1D)
  Data.a 0
  Data.u $1E1C
  ; *caseUnfold($1E1E)
  Data.a 0
  Data.u $1E1F
  ; *caseUnfold($1E1F)
  Data.a 0
  Data.u $1E1E
  ; *caseUnfold($1E20)
  Data.a 0
  Data.u $1E21
  ; *caseUnfold($1E21)
  Data.a 0
  Data.u $1E20
  ; *caseUnfold($1E22)
  Data.a 0
  Data.u $1E23
  ; *caseUnfold($1E23)
  Data.a 0
  Data.u $1E22
  ; *caseUnfold($1E24)
  Data.a 0
  Data.u $1E25
  ; *caseUnfold($1E25)
  Data.a 0
  Data.u $1E24
  ; *caseUnfold($1E26)
  Data.a 0
  Data.u $1E27
  ; *caseUnfold($1E27)
  Data.a 0
  Data.u $1E26
  ; *caseUnfold($1E28)
  Data.a 0
  Data.u $1E29
  ; *caseUnfold($1E29)
  Data.a 0
  Data.u $1E28
  ; *caseUnfold($1E2A)
  Data.a 0
  Data.u $1E2B
  ; *caseUnfold($1E2B)
  Data.a 0
  Data.u $1E2A
  ; *caseUnfold($1E2C)
  Data.a 0
  Data.u $1E2D
  ; *caseUnfold($1E2D)
  Data.a 0
  Data.u $1E2C
  ; *caseUnfold($1E2E)
  Data.a 0
  Data.u $1E2F
  ; *caseUnfold($1E2F)
  Data.a 0
  Data.u $1E2E
  ; *caseUnfold($1E30)
  Data.a 0
  Data.u $1E31
  ; *caseUnfold($1E31)
  Data.a 0
  Data.u $1E30
  ; *caseUnfold($1E32)
  Data.a 0
  Data.u $1E33
  ; *caseUnfold($1E33)
  Data.a 0
  Data.u $1E32
  ; *caseUnfold($1E34)
  Data.a 0
  Data.u $1E35
  ; *caseUnfold($1E35)
  Data.a 0
  Data.u $1E34
  ; *caseUnfold($1E36)
  Data.a 0
  Data.u $1E37
  ; *caseUnfold($1E37)
  Data.a 0
  Data.u $1E36
  ; *caseUnfold($1E38)
  Data.a 0
  Data.u $1E39
  ; *caseUnfold($1E39)
  Data.a 0
  Data.u $1E38
  ; *caseUnfold($1E3A)
  Data.a 0
  Data.u $1E3B
  ; *caseUnfold($1E3B)
  Data.a 0
  Data.u $1E3A
  ; *caseUnfold($1E3C)
  Data.a 0
  Data.u $1E3D
  ; *caseUnfold($1E3D)
  Data.a 0
  Data.u $1E3C
  ; *caseUnfold($1E3E)
  Data.a 0
  Data.u $1E3F
  ; *caseUnfold($1E3F)
  Data.a 0
  Data.u $1E3E
  ; *caseUnfold($1E40)
  Data.a 0
  Data.u $1E41
  ; *caseUnfold($1E41)
  Data.a 0
  Data.u $1E40
  ; *caseUnfold($1E42)
  Data.a 0
  Data.u $1E43
  ; *caseUnfold($1E43)
  Data.a 0
  Data.u $1E42
  ; *caseUnfold($1E44)
  Data.a 0
  Data.u $1E45
  ; *caseUnfold($1E45)
  Data.a 0
  Data.u $1E44
  ; *caseUnfold($1E46)
  Data.a 0
  Data.u $1E47
  ; *caseUnfold($1E47)
  Data.a 0
  Data.u $1E46
  ; *caseUnfold($1E48)
  Data.a 0
  Data.u $1E49
  ; *caseUnfold($1E49)
  Data.a 0
  Data.u $1E48
  ; *caseUnfold($1E4A)
  Data.a 0
  Data.u $1E4B
  ; *caseUnfold($1E4B)
  Data.a 0
  Data.u $1E4A
  ; *caseUnfold($1E4C)
  Data.a 0
  Data.u $1E4D
  ; *caseUnfold($1E4D)
  Data.a 0
  Data.u $1E4C
  ; *caseUnfold($1E4E)
  Data.a 0
  Data.u $1E4F
  ; *caseUnfold($1E4F)
  Data.a 0
  Data.u $1E4E
  ; *caseUnfold($1E50)
  Data.a 0
  Data.u $1E51
  ; *caseUnfold($1E51)
  Data.a 0
  Data.u $1E50
  ; *caseUnfold($1E52)
  Data.a 0
  Data.u $1E53
  ; *caseUnfold($1E53)
  Data.a 0
  Data.u $1E52
  ; *caseUnfold($1E54)
  Data.a 0
  Data.u $1E55
  ; *caseUnfold($1E55)
  Data.a 0
  Data.u $1E54
  ; *caseUnfold($1E56)
  Data.a 0
  Data.u $1E57
  ; *caseUnfold($1E57)
  Data.a 0
  Data.u $1E56
  ; *caseUnfold($1E58)
  Data.a 0
  Data.u $1E59
  ; *caseUnfold($1E59)
  Data.a 0
  Data.u $1E58
  ; *caseUnfold($1E5A)
  Data.a 0
  Data.u $1E5B
  ; *caseUnfold($1E5B)
  Data.a 0
  Data.u $1E5A
  ; *caseUnfold($1E5C)
  Data.a 0
  Data.u $1E5D
  ; *caseUnfold($1E5D)
  Data.a 0
  Data.u $1E5C
  ; *caseUnfold($1E5E)
  Data.a 0
  Data.u $1E5F
  ; *caseUnfold($1E5F)
  Data.a 0
  Data.u $1E5E
  ; *caseUnfold($1E60)
  Data.a 1
  Data.u $1E61,$1E9B
  ; *caseUnfold($1E61)
  Data.a 1
  Data.u $1E60,$1E9B
  ; *caseUnfold($1E9B)
  Data.a 1
  Data.u $1E60,$1E61
  ; *caseUnfold($1E62)
  Data.a 0
  Data.u $1E63
  ; *caseUnfold($1E63)
  Data.a 0
  Data.u $1E62
  ; *caseUnfold($1E64)
  Data.a 0
  Data.u $1E65
  ; *caseUnfold($1E65)
  Data.a 0
  Data.u $1E64
  ; *caseUnfold($1E66)
  Data.a 0
  Data.u $1E67
  ; *caseUnfold($1E67)
  Data.a 0
  Data.u $1E66
  ; *caseUnfold($1E68)
  Data.a 0
  Data.u $1E69
  ; *caseUnfold($1E69)
  Data.a 0
  Data.u $1E68
  ; *caseUnfold($1E6A)
  Data.a 0
  Data.u $1E6B
  ; *caseUnfold($1E6B)
  Data.a 0
  Data.u $1E6A
  ; *caseUnfold($1E6C)
  Data.a 0
  Data.u $1E6D
  ; *caseUnfold($1E6D)
  Data.a 0
  Data.u $1E6C
  ; *caseUnfold($1E6E)
  Data.a 0
  Data.u $1E6F
  ; *caseUnfold($1E6F)
  Data.a 0
  Data.u $1E6E
  ; *caseUnfold($1E70)
  Data.a 0
  Data.u $1E71
  ; *caseUnfold($1E71)
  Data.a 0
  Data.u $1E70
  ; *caseUnfold($1E72)
  Data.a 0
  Data.u $1E73
  ; *caseUnfold($1E73)
  Data.a 0
  Data.u $1E72
  ; *caseUnfold($1E74)
  Data.a 0
  Data.u $1E75
  ; *caseUnfold($1E75)
  Data.a 0
  Data.u $1E74
  ; *caseUnfold($1E76)
  Data.a 0
  Data.u $1E77
  ; *caseUnfold($1E77)
  Data.a 0
  Data.u $1E76
  ; *caseUnfold($1E78)
  Data.a 0
  Data.u $1E79
  ; *caseUnfold($1E79)
  Data.a 0
  Data.u $1E78
  ; *caseUnfold($1E7A)
  Data.a 0
  Data.u $1E7B
  ; *caseUnfold($1E7B)
  Data.a 0
  Data.u $1E7A
  ; *caseUnfold($1E7C)
  Data.a 0
  Data.u $1E7D
  ; *caseUnfold($1E7D)
  Data.a 0
  Data.u $1E7C
  ; *caseUnfold($1E7E)
  Data.a 0
  Data.u $1E7F
  ; *caseUnfold($1E7F)
  Data.a 0
  Data.u $1E7E
  ; *caseUnfold($1E80)
  Data.a 0
  Data.u $1E81
  ; *caseUnfold($1E81)
  Data.a 0
  Data.u $1E80
  ; *caseUnfold($1E82)
  Data.a 0
  Data.u $1E83
  ; *caseUnfold($1E83)
  Data.a 0
  Data.u $1E82
  ; *caseUnfold($1E84)
  Data.a 0
  Data.u $1E85
  ; *caseUnfold($1E85)
  Data.a 0
  Data.u $1E84
  ; *caseUnfold($1E86)
  Data.a 0
  Data.u $1E87
  ; *caseUnfold($1E87)
  Data.a 0
  Data.u $1E86
  ; *caseUnfold($1E88)
  Data.a 0
  Data.u $1E89
  ; *caseUnfold($1E89)
  Data.a 0
  Data.u $1E88
  ; *caseUnfold($1E8A)
  Data.a 0
  Data.u $1E8B
  ; *caseUnfold($1E8B)
  Data.a 0
  Data.u $1E8A
  ; *caseUnfold($1E8C)
  Data.a 0
  Data.u $1E8D
  ; *caseUnfold($1E8D)
  Data.a 0
  Data.u $1E8C
  ; *caseUnfold($1E8E)
  Data.a 0
  Data.u $1E8F
  ; *caseUnfold($1E8F)
  Data.a 0
  Data.u $1E8E
  ; *caseUnfold($1E90)
  Data.a 0
  Data.u $1E91
  ; *caseUnfold($1E91)
  Data.a 0
  Data.u $1E90
  ; *caseUnfold($1E92)
  Data.a 0
  Data.u $1E93
  ; *caseUnfold($1E93)
  Data.a 0
  Data.u $1E92
  ; *caseUnfold($1E94)
  Data.a 0
  Data.u $1E95
  ; *caseUnfold($1E95)
  Data.a 0
  Data.u $1E94
  ; *caseUnfold($1E9E)
  Data.a 0
  Data.u $00DF
  ; *caseUnfold($00DF)
  Data.a 0
  Data.u $1E9E
  ; *caseUnfold($1EA0)
  Data.a 0
  Data.u $1EA1
  ; *caseUnfold($1EA1)
  Data.a 0
  Data.u $1EA0
  ; *caseUnfold($1EA2)
  Data.a 0
  Data.u $1EA3
  ; *caseUnfold($1EA3)
  Data.a 0
  Data.u $1EA2
  ; *caseUnfold($1EA4)
  Data.a 0
  Data.u $1EA5
  ; *caseUnfold($1EA5)
  Data.a 0
  Data.u $1EA4
  ; *caseUnfold($1EA6)
  Data.a 0
  Data.u $1EA7
  ; *caseUnfold($1EA7)
  Data.a 0
  Data.u $1EA6
  ; *caseUnfold($1EA8)
  Data.a 0
  Data.u $1EA9
  ; *caseUnfold($1EA9)
  Data.a 0
  Data.u $1EA8
  ; *caseUnfold($1EAA)
  Data.a 0
  Data.u $1EAB
  ; *caseUnfold($1EAB)
  Data.a 0
  Data.u $1EAA
  ; *caseUnfold($1EAC)
  Data.a 0
  Data.u $1EAD
  ; *caseUnfold($1EAD)
  Data.a 0
  Data.u $1EAC
  ; *caseUnfold($1EAE)
  Data.a 0
  Data.u $1EAF
  ; *caseUnfold($1EAF)
  Data.a 0
  Data.u $1EAE
  ; *caseUnfold($1EB0)
  Data.a 0
  Data.u $1EB1
  ; *caseUnfold($1EB1)
  Data.a 0
  Data.u $1EB0
  ; *caseUnfold($1EB2)
  Data.a 0
  Data.u $1EB3
  ; *caseUnfold($1EB3)
  Data.a 0
  Data.u $1EB2
  ; *caseUnfold($1EB4)
  Data.a 0
  Data.u $1EB5
  ; *caseUnfold($1EB5)
  Data.a 0
  Data.u $1EB4
  ; *caseUnfold($1EB6)
  Data.a 0
  Data.u $1EB7
  ; *caseUnfold($1EB7)
  Data.a 0
  Data.u $1EB6
  ; *caseUnfold($1EB8)
  Data.a 0
  Data.u $1EB9
  ; *caseUnfold($1EB9)
  Data.a 0
  Data.u $1EB8
  ; *caseUnfold($1EBA)
  Data.a 0
  Data.u $1EBB
  ; *caseUnfold($1EBB)
  Data.a 0
  Data.u $1EBA
  ; *caseUnfold($1EBC)
  Data.a 0
  Data.u $1EBD
  ; *caseUnfold($1EBD)
  Data.a 0
  Data.u $1EBC
  ; *caseUnfold($1EBE)
  Data.a 0
  Data.u $1EBF
  ; *caseUnfold($1EBF)
  Data.a 0
  Data.u $1EBE
  ; *caseUnfold($1EC0)
  Data.a 0
  Data.u $1EC1
  ; *caseUnfold($1EC1)
  Data.a 0
  Data.u $1EC0
  ; *caseUnfold($1EC2)
  Data.a 0
  Data.u $1EC3
  ; *caseUnfold($1EC3)
  Data.a 0
  Data.u $1EC2
  ; *caseUnfold($1EC4)
  Data.a 0
  Data.u $1EC5
  ; *caseUnfold($1EC5)
  Data.a 0
  Data.u $1EC4
  ; *caseUnfold($1EC6)
  Data.a 0
  Data.u $1EC7
  ; *caseUnfold($1EC7)
  Data.a 0
  Data.u $1EC6
  ; *caseUnfold($1EC8)
  Data.a 0
  Data.u $1EC9
  ; *caseUnfold($1EC9)
  Data.a 0
  Data.u $1EC8
  ; *caseUnfold($1ECA)
  Data.a 0
  Data.u $1ECB
  ; *caseUnfold($1ECB)
  Data.a 0
  Data.u $1ECA
  ; *caseUnfold($1ECC)
  Data.a 0
  Data.u $1ECD
  ; *caseUnfold($1ECD)
  Data.a 0
  Data.u $1ECC
  ; *caseUnfold($1ECE)
  Data.a 0
  Data.u $1ECF
  ; *caseUnfold($1ECF)
  Data.a 0
  Data.u $1ECE
  ; *caseUnfold($1ED0)
  Data.a 0
  Data.u $1ED1
  ; *caseUnfold($1ED1)
  Data.a 0
  Data.u $1ED0
  ; *caseUnfold($1ED2)
  Data.a 0
  Data.u $1ED3
  ; *caseUnfold($1ED3)
  Data.a 0
  Data.u $1ED2
  ; *caseUnfold($1ED4)
  Data.a 0
  Data.u $1ED5
  ; *caseUnfold($1ED5)
  Data.a 0
  Data.u $1ED4
  ; *caseUnfold($1ED6)
  Data.a 0
  Data.u $1ED7
  ; *caseUnfold($1ED7)
  Data.a 0
  Data.u $1ED6
  ; *caseUnfold($1ED8)
  Data.a 0
  Data.u $1ED9
  ; *caseUnfold($1ED9)
  Data.a 0
  Data.u $1ED8
  ; *caseUnfold($1EDA)
  Data.a 0
  Data.u $1EDB
  ; *caseUnfold($1EDB)
  Data.a 0
  Data.u $1EDA
  ; *caseUnfold($1EDC)
  Data.a 0
  Data.u $1EDD
  ; *caseUnfold($1EDD)
  Data.a 0
  Data.u $1EDC
  ; *caseUnfold($1EDE)
  Data.a 0
  Data.u $1EDF
  ; *caseUnfold($1EDF)
  Data.a 0
  Data.u $1EDE
  ; *caseUnfold($1EE0)
  Data.a 0
  Data.u $1EE1
  ; *caseUnfold($1EE1)
  Data.a 0
  Data.u $1EE0
  ; *caseUnfold($1EE2)
  Data.a 0
  Data.u $1EE3
  ; *caseUnfold($1EE3)
  Data.a 0
  Data.u $1EE2
  ; *caseUnfold($1EE4)
  Data.a 0
  Data.u $1EE5
  ; *caseUnfold($1EE5)
  Data.a 0
  Data.u $1EE4
  ; *caseUnfold($1EE6)
  Data.a 0
  Data.u $1EE7
  ; *caseUnfold($1EE7)
  Data.a 0
  Data.u $1EE6
  ; *caseUnfold($1EE8)
  Data.a 0
  Data.u $1EE9
  ; *caseUnfold($1EE9)
  Data.a 0
  Data.u $1EE8
  ; *caseUnfold($1EEA)
  Data.a 0
  Data.u $1EEB
  ; *caseUnfold($1EEB)
  Data.a 0
  Data.u $1EEA
  ; *caseUnfold($1EEC)
  Data.a 0
  Data.u $1EED
  ; *caseUnfold($1EED)
  Data.a 0
  Data.u $1EEC
  ; *caseUnfold($1EEE)
  Data.a 0
  Data.u $1EEF
  ; *caseUnfold($1EEF)
  Data.a 0
  Data.u $1EEE
  ; *caseUnfold($1EF0)
  Data.a 0
  Data.u $1EF1
  ; *caseUnfold($1EF1)
  Data.a 0
  Data.u $1EF0
  ; *caseUnfold($1EF2)
  Data.a 0
  Data.u $1EF3
  ; *caseUnfold($1EF3)
  Data.a 0
  Data.u $1EF2
  ; *caseUnfold($1EF4)
  Data.a 0
  Data.u $1EF5
  ; *caseUnfold($1EF5)
  Data.a 0
  Data.u $1EF4
  ; *caseUnfold($1EF6)
  Data.a 0
  Data.u $1EF7
  ; *caseUnfold($1EF7)
  Data.a 0
  Data.u $1EF6
  ; *caseUnfold($1EF8)
  Data.a 0
  Data.u $1EF9
  ; *caseUnfold($1EF9)
  Data.a 0
  Data.u $1EF8
  ; *caseUnfold($1EFA)
  Data.a 0
  Data.u $1EFB
  ; *caseUnfold($1EFB)
  Data.a 0
  Data.u $1EFA
  ; *caseUnfold($1EFC)
  Data.a 0
  Data.u $1EFD
  ; *caseUnfold($1EFD)
  Data.a 0
  Data.u $1EFC
  ; *caseUnfold($1EFE)
  Data.a 0
  Data.u $1EFF
  ; *caseUnfold($1EFF)
  Data.a 0
  Data.u $1EFE
  ; *caseUnfold($1F08)
  Data.a 0
  Data.u $1F00
  ; *caseUnfold($1F00)
  Data.a 0
  Data.u $1F08
  ; *caseUnfold($1F09)
  Data.a 0
  Data.u $1F01
  ; *caseUnfold($1F01)
  Data.a 0
  Data.u $1F09
  ; *caseUnfold($1F0A)
  Data.a 0
  Data.u $1F02
  ; *caseUnfold($1F02)
  Data.a 0
  Data.u $1F0A
  ; *caseUnfold($1F0B)
  Data.a 0
  Data.u $1F03
  ; *caseUnfold($1F03)
  Data.a 0
  Data.u $1F0B
  ; *caseUnfold($1F0C)
  Data.a 0
  Data.u $1F04
  ; *caseUnfold($1F04)
  Data.a 0
  Data.u $1F0C
  ; *caseUnfold($1F0D)
  Data.a 0
  Data.u $1F05
  ; *caseUnfold($1F05)
  Data.a 0
  Data.u $1F0D
  ; *caseUnfold($1F0E)
  Data.a 0
  Data.u $1F06
  ; *caseUnfold($1F06)
  Data.a 0
  Data.u $1F0E
  ; *caseUnfold($1F0F)
  Data.a 0
  Data.u $1F07
  ; *caseUnfold($1F07)
  Data.a 0
  Data.u $1F0F
  ; *caseUnfold($1F18)
  Data.a 0
  Data.u $1F10
  ; *caseUnfold($1F10)
  Data.a 0
  Data.u $1F18
  ; *caseUnfold($1F19)
  Data.a 0
  Data.u $1F11
  ; *caseUnfold($1F11)
  Data.a 0
  Data.u $1F19
  ; *caseUnfold($1F1A)
  Data.a 0
  Data.u $1F12
  ; *caseUnfold($1F12)
  Data.a 0
  Data.u $1F1A
  ; *caseUnfold($1F1B)
  Data.a 0
  Data.u $1F13
  ; *caseUnfold($1F13)
  Data.a 0
  Data.u $1F1B
  ; *caseUnfold($1F1C)
  Data.a 0
  Data.u $1F14
  ; *caseUnfold($1F14)
  Data.a 0
  Data.u $1F1C
  ; *caseUnfold($1F1D)
  Data.a 0
  Data.u $1F15
  ; *caseUnfold($1F15)
  Data.a 0
  Data.u $1F1D
  ; *caseUnfold($1F28)
  Data.a 0
  Data.u $1F20
  ; *caseUnfold($1F20)
  Data.a 0
  Data.u $1F28
  ; *caseUnfold($1F29)
  Data.a 0
  Data.u $1F21
  ; *caseUnfold($1F21)
  Data.a 0
  Data.u $1F29
  ; *caseUnfold($1F2A)
  Data.a 0
  Data.u $1F22
  ; *caseUnfold($1F22)
  Data.a 0
  Data.u $1F2A
  ; *caseUnfold($1F2B)
  Data.a 0
  Data.u $1F23
  ; *caseUnfold($1F23)
  Data.a 0
  Data.u $1F2B
  ; *caseUnfold($1F2C)
  Data.a 0
  Data.u $1F24
  ; *caseUnfold($1F24)
  Data.a 0
  Data.u $1F2C
  ; *caseUnfold($1F2D)
  Data.a 0
  Data.u $1F25
  ; *caseUnfold($1F25)
  Data.a 0
  Data.u $1F2D
  ; *caseUnfold($1F2E)
  Data.a 0
  Data.u $1F26
  ; *caseUnfold($1F26)
  Data.a 0
  Data.u $1F2E
  ; *caseUnfold($1F2F)
  Data.a 0
  Data.u $1F27
  ; *caseUnfold($1F27)
  Data.a 0
  Data.u $1F2F
  ; *caseUnfold($1F38)
  Data.a 0
  Data.u $1F30
  ; *caseUnfold($1F30)
  Data.a 0
  Data.u $1F38
  ; *caseUnfold($1F39)
  Data.a 0
  Data.u $1F31
  ; *caseUnfold($1F31)
  Data.a 0
  Data.u $1F39
  ; *caseUnfold($1F3A)
  Data.a 0
  Data.u $1F32
  ; *caseUnfold($1F32)
  Data.a 0
  Data.u $1F3A
  ; *caseUnfold($1F3B)
  Data.a 0
  Data.u $1F33
  ; *caseUnfold($1F33)
  Data.a 0
  Data.u $1F3B
  ; *caseUnfold($1F3C)
  Data.a 0
  Data.u $1F34
  ; *caseUnfold($1F34)
  Data.a 0
  Data.u $1F3C
  ; *caseUnfold($1F3D)
  Data.a 0
  Data.u $1F35
  ; *caseUnfold($1F35)
  Data.a 0
  Data.u $1F3D
  ; *caseUnfold($1F3E)
  Data.a 0
  Data.u $1F36
  ; *caseUnfold($1F36)
  Data.a 0
  Data.u $1F3E
  ; *caseUnfold($1F3F)
  Data.a 0
  Data.u $1F37
  ; *caseUnfold($1F37)
  Data.a 0
  Data.u $1F3F
  ; *caseUnfold($1F48)
  Data.a 0
  Data.u $1F40
  ; *caseUnfold($1F40)
  Data.a 0
  Data.u $1F48
  ; *caseUnfold($1F49)
  Data.a 0
  Data.u $1F41
  ; *caseUnfold($1F41)
  Data.a 0
  Data.u $1F49
  ; *caseUnfold($1F4A)
  Data.a 0
  Data.u $1F42
  ; *caseUnfold($1F42)
  Data.a 0
  Data.u $1F4A
  ; *caseUnfold($1F4B)
  Data.a 0
  Data.u $1F43
  ; *caseUnfold($1F43)
  Data.a 0
  Data.u $1F4B
  ; *caseUnfold($1F4C)
  Data.a 0
  Data.u $1F44
  ; *caseUnfold($1F44)
  Data.a 0
  Data.u $1F4C
  ; *caseUnfold($1F4D)
  Data.a 0
  Data.u $1F45
  ; *caseUnfold($1F45)
  Data.a 0
  Data.u $1F4D
  ; *caseUnfold($1F59)
  Data.a 0
  Data.u $1F51
  ; *caseUnfold($1F51)
  Data.a 0
  Data.u $1F59
  ; *caseUnfold($1F5B)
  Data.a 0
  Data.u $1F53
  ; *caseUnfold($1F53)
  Data.a 0
  Data.u $1F5B
  ; *caseUnfold($1F5D)
  Data.a 0
  Data.u $1F55
  ; *caseUnfold($1F55)
  Data.a 0
  Data.u $1F5D
  ; *caseUnfold($1F5F)
  Data.a 0
  Data.u $1F57
  ; *caseUnfold($1F57)
  Data.a 0
  Data.u $1F5F
  ; *caseUnfold($1F68)
  Data.a 0
  Data.u $1F60
  ; *caseUnfold($1F60)
  Data.a 0
  Data.u $1F68
  ; *caseUnfold($1F69)
  Data.a 0
  Data.u $1F61
  ; *caseUnfold($1F61)
  Data.a 0
  Data.u $1F69
  ; *caseUnfold($1F6A)
  Data.a 0
  Data.u $1F62
  ; *caseUnfold($1F62)
  Data.a 0
  Data.u $1F6A
  ; *caseUnfold($1F6B)
  Data.a 0
  Data.u $1F63
  ; *caseUnfold($1F63)
  Data.a 0
  Data.u $1F6B
  ; *caseUnfold($1F6C)
  Data.a 0
  Data.u $1F64
  ; *caseUnfold($1F64)
  Data.a 0
  Data.u $1F6C
  ; *caseUnfold($1F6D)
  Data.a 0
  Data.u $1F65
  ; *caseUnfold($1F65)
  Data.a 0
  Data.u $1F6D
  ; *caseUnfold($1F6E)
  Data.a 0
  Data.u $1F66
  ; *caseUnfold($1F66)
  Data.a 0
  Data.u $1F6E
  ; *caseUnfold($1F6F)
  Data.a 0
  Data.u $1F67
  ; *caseUnfold($1F67)
  Data.a 0
  Data.u $1F6F
  ; *caseUnfold($1F88)
  Data.a 0
  Data.u $1F80
  ; *caseUnfold($1F80)
  Data.a 0
  Data.u $1F88
  ; *caseUnfold($1F89)
  Data.a 0
  Data.u $1F81
  ; *caseUnfold($1F81)
  Data.a 0
  Data.u $1F89
  ; *caseUnfold($1F8A)
  Data.a 0
  Data.u $1F82
  ; *caseUnfold($1F82)
  Data.a 0
  Data.u $1F8A
  ; *caseUnfold($1F8B)
  Data.a 0
  Data.u $1F83
  ; *caseUnfold($1F83)
  Data.a 0
  Data.u $1F8B
  ; *caseUnfold($1F8C)
  Data.a 0
  Data.u $1F84
  ; *caseUnfold($1F84)
  Data.a 0
  Data.u $1F8C
  ; *caseUnfold($1F8D)
  Data.a 0
  Data.u $1F85
  ; *caseUnfold($1F85)
  Data.a 0
  Data.u $1F8D
  ; *caseUnfold($1F8E)
  Data.a 0
  Data.u $1F86
  ; *caseUnfold($1F86)
  Data.a 0
  Data.u $1F8E
  ; *caseUnfold($1F8F)
  Data.a 0
  Data.u $1F87
  ; *caseUnfold($1F87)
  Data.a 0
  Data.u $1F8F
  ; *caseUnfold($1F98)
  Data.a 0
  Data.u $1F90
  ; *caseUnfold($1F90)
  Data.a 0
  Data.u $1F98
  ; *caseUnfold($1F99)
  Data.a 0
  Data.u $1F91
  ; *caseUnfold($1F91)
  Data.a 0
  Data.u $1F99
  ; *caseUnfold($1F9A)
  Data.a 0
  Data.u $1F92
  ; *caseUnfold($1F92)
  Data.a 0
  Data.u $1F9A
  ; *caseUnfold($1F9B)
  Data.a 0
  Data.u $1F93
  ; *caseUnfold($1F93)
  Data.a 0
  Data.u $1F9B
  ; *caseUnfold($1F9C)
  Data.a 0
  Data.u $1F94
  ; *caseUnfold($1F94)
  Data.a 0
  Data.u $1F9C
  ; *caseUnfold($1F9D)
  Data.a 0
  Data.u $1F95
  ; *caseUnfold($1F95)
  Data.a 0
  Data.u $1F9D
  ; *caseUnfold($1F9E)
  Data.a 0
  Data.u $1F96
  ; *caseUnfold($1F96)
  Data.a 0
  Data.u $1F9E
  ; *caseUnfold($1F9F)
  Data.a 0
  Data.u $1F97
  ; *caseUnfold($1F97)
  Data.a 0
  Data.u $1F9F
  ; *caseUnfold($1FA8)
  Data.a 0
  Data.u $1FA0
  ; *caseUnfold($1FA0)
  Data.a 0
  Data.u $1FA8
  ; *caseUnfold($1FA9)
  Data.a 0
  Data.u $1FA1
  ; *caseUnfold($1FA1)
  Data.a 0
  Data.u $1FA9
  ; *caseUnfold($1FAA)
  Data.a 0
  Data.u $1FA2
  ; *caseUnfold($1FA2)
  Data.a 0
  Data.u $1FAA
  ; *caseUnfold($1FAB)
  Data.a 0
  Data.u $1FA3
  ; *caseUnfold($1FA3)
  Data.a 0
  Data.u $1FAB
  ; *caseUnfold($1FAC)
  Data.a 0
  Data.u $1FA4
  ; *caseUnfold($1FA4)
  Data.a 0
  Data.u $1FAC
  ; *caseUnfold($1FAD)
  Data.a 0
  Data.u $1FA5
  ; *caseUnfold($1FA5)
  Data.a 0
  Data.u $1FAD
  ; *caseUnfold($1FAE)
  Data.a 0
  Data.u $1FA6
  ; *caseUnfold($1FA6)
  Data.a 0
  Data.u $1FAE
  ; *caseUnfold($1FAF)
  Data.a 0
  Data.u $1FA7
  ; *caseUnfold($1FA7)
  Data.a 0
  Data.u $1FAF
  ; *caseUnfold($1FB8)
  Data.a 0
  Data.u $1FB0
  ; *caseUnfold($1FB0)
  Data.a 0
  Data.u $1FB8
  ; *caseUnfold($1FB9)
  Data.a 0
  Data.u $1FB1
  ; *caseUnfold($1FB1)
  Data.a 0
  Data.u $1FB9
  ; *caseUnfold($1FBA)
  Data.a 0
  Data.u $1F70
  ; *caseUnfold($1F70)
  Data.a 0
  Data.u $1FBA
  ; *caseUnfold($1FBB)
  Data.a 0
  Data.u $1F71
  ; *caseUnfold($1F71)
  Data.a 0
  Data.u $1FBB
  ; *caseUnfold($1FBC)
  Data.a 0
  Data.u $1FB3
  ; *caseUnfold($1FB3)
  Data.a 0
  Data.u $1FBC
  ; *caseUnfold($1FC8)
  Data.a 0
  Data.u $1F72
  ; *caseUnfold($1F72)
  Data.a 0
  Data.u $1FC8
  ; *caseUnfold($1FC9)
  Data.a 0
  Data.u $1F73
  ; *caseUnfold($1F73)
  Data.a 0
  Data.u $1FC9
  ; *caseUnfold($1FCA)
  Data.a 0
  Data.u $1F74
  ; *caseUnfold($1F74)
  Data.a 0
  Data.u $1FCA
  ; *caseUnfold($1FCB)
  Data.a 0
  Data.u $1F75
  ; *caseUnfold($1F75)
  Data.a 0
  Data.u $1FCB
  ; *caseUnfold($1FCC)
  Data.a 0
  Data.u $1FC3
  ; *caseUnfold($1FC3)
  Data.a 0
  Data.u $1FCC
  ; *caseUnfold($1FD8)
  Data.a 0
  Data.u $1FD0
  ; *caseUnfold($1FD0)
  Data.a 0
  Data.u $1FD8
  ; *caseUnfold($1FD9)
  Data.a 0
  Data.u $1FD1
  ; *caseUnfold($1FD1)
  Data.a 0
  Data.u $1FD9
  ; *caseUnfold($1FDA)
  Data.a 0
  Data.u $1F76
  ; *caseUnfold($1F76)
  Data.a 0
  Data.u $1FDA
  ; *caseUnfold($1FDB)
  Data.a 0
  Data.u $1F77
  ; *caseUnfold($1F77)
  Data.a 0
  Data.u $1FDB
  ; *caseUnfold($1FE8)
  Data.a 0
  Data.u $1FE0
  ; *caseUnfold($1FE0)
  Data.a 0
  Data.u $1FE8
  ; *caseUnfold($1FE9)
  Data.a 0
  Data.u $1FE1
  ; *caseUnfold($1FE1)
  Data.a 0
  Data.u $1FE9
  ; *caseUnfold($1FEA)
  Data.a 0
  Data.u $1F7A
  ; *caseUnfold($1F7A)
  Data.a 0
  Data.u $1FEA
  ; *caseUnfold($1FEB)
  Data.a 0
  Data.u $1F7B
  ; *caseUnfold($1F7B)
  Data.a 0
  Data.u $1FEB
  ; *caseUnfold($1FEC)
  Data.a 0
  Data.u $1FE5
  ; *caseUnfold($1FE5)
  Data.a 0
  Data.u $1FEC
  ; *caseUnfold($1FF8)
  Data.a 0
  Data.u $1F78
  ; *caseUnfold($1F78)
  Data.a 0
  Data.u $1FF8
  ; *caseUnfold($1FF9)
  Data.a 0
  Data.u $1F79
  ; *caseUnfold($1F79)
  Data.a 0
  Data.u $1FF9
  ; *caseUnfold($1FFA)
  Data.a 0
  Data.u $1F7C
  ; *caseUnfold($1F7C)
  Data.a 0
  Data.u $1FFA
  ; *caseUnfold($1FFB)
  Data.a 0
  Data.u $1F7D
  ; *caseUnfold($1F7D)
  Data.a 0
  Data.u $1FFB
  ; *caseUnfold($1FFC)
  Data.a 0
  Data.u $1FF3
  ; *caseUnfold($1FF3)
  Data.a 0
  Data.u $1FFC
  ; *caseUnfold($2132)
  Data.a 0
  Data.u $214E
  ; *caseUnfold($214E)
  Data.a 0
  Data.u $2132
  ; *caseUnfold($2160)
  Data.a 0
  Data.u $2170
  ; *caseUnfold($2170)
  Data.a 0
  Data.u $2160
  ; *caseUnfold($2161)
  Data.a 0
  Data.u $2171
  ; *caseUnfold($2171)
  Data.a 0
  Data.u $2161
  ; *caseUnfold($2162)
  Data.a 0
  Data.u $2172
  ; *caseUnfold($2172)
  Data.a 0
  Data.u $2162
  ; *caseUnfold($2163)
  Data.a 0
  Data.u $2173
  ; *caseUnfold($2173)
  Data.a 0
  Data.u $2163
  ; *caseUnfold($2164)
  Data.a 0
  Data.u $2174
  ; *caseUnfold($2174)
  Data.a 0
  Data.u $2164
  ; *caseUnfold($2165)
  Data.a 0
  Data.u $2175
  ; *caseUnfold($2175)
  Data.a 0
  Data.u $2165
  ; *caseUnfold($2166)
  Data.a 0
  Data.u $2176
  ; *caseUnfold($2176)
  Data.a 0
  Data.u $2166
  ; *caseUnfold($2167)
  Data.a 0
  Data.u $2177
  ; *caseUnfold($2177)
  Data.a 0
  Data.u $2167
  ; *caseUnfold($2168)
  Data.a 0
  Data.u $2178
  ; *caseUnfold($2178)
  Data.a 0
  Data.u $2168
  ; *caseUnfold($2169)
  Data.a 0
  Data.u $2179
  ; *caseUnfold($2179)
  Data.a 0
  Data.u $2169
  ; *caseUnfold($216A)
  Data.a 0
  Data.u $217A
  ; *caseUnfold($217A)
  Data.a 0
  Data.u $216A
  ; *caseUnfold($216B)
  Data.a 0
  Data.u $217B
  ; *caseUnfold($217B)
  Data.a 0
  Data.u $216B
  ; *caseUnfold($216C)
  Data.a 0
  Data.u $217C
  ; *caseUnfold($217C)
  Data.a 0
  Data.u $216C
  ; *caseUnfold($216D)
  Data.a 0
  Data.u $217D
  ; *caseUnfold($217D)
  Data.a 0
  Data.u $216D
  ; *caseUnfold($216E)
  Data.a 0
  Data.u $217E
  ; *caseUnfold($217E)
  Data.a 0
  Data.u $216E
  ; *caseUnfold($216F)
  Data.a 0
  Data.u $217F
  ; *caseUnfold($217F)
  Data.a 0
  Data.u $216F
  ; *caseUnfold($2183)
  Data.a 0
  Data.u $2184
  ; *caseUnfold($2184)
  Data.a 0
  Data.u $2183
  ; *caseUnfold($24B6)
  Data.a 0
  Data.u $24D0
  ; *caseUnfold($24D0)
  Data.a 0
  Data.u $24B6
  ; *caseUnfold($24B7)
  Data.a 0
  Data.u $24D1
  ; *caseUnfold($24D1)
  Data.a 0
  Data.u $24B7
  ; *caseUnfold($24B8)
  Data.a 0
  Data.u $24D2
  ; *caseUnfold($24D2)
  Data.a 0
  Data.u $24B8
  ; *caseUnfold($24B9)
  Data.a 0
  Data.u $24D3
  ; *caseUnfold($24D3)
  Data.a 0
  Data.u $24B9
  ; *caseUnfold($24BA)
  Data.a 0
  Data.u $24D4
  ; *caseUnfold($24D4)
  Data.a 0
  Data.u $24BA
  ; *caseUnfold($24BB)
  Data.a 0
  Data.u $24D5
  ; *caseUnfold($24D5)
  Data.a 0
  Data.u $24BB
  ; *caseUnfold($24BC)
  Data.a 0
  Data.u $24D6
  ; *caseUnfold($24D6)
  Data.a 0
  Data.u $24BC
  ; *caseUnfold($24BD)
  Data.a 0
  Data.u $24D7
  ; *caseUnfold($24D7)
  Data.a 0
  Data.u $24BD
  ; *caseUnfold($24BE)
  Data.a 0
  Data.u $24D8
  ; *caseUnfold($24D8)
  Data.a 0
  Data.u $24BE
  ; *caseUnfold($24BF)
  Data.a 0
  Data.u $24D9
  ; *caseUnfold($24D9)
  Data.a 0
  Data.u $24BF
  ; *caseUnfold($24C0)
  Data.a 0
  Data.u $24DA
  ; *caseUnfold($24DA)
  Data.a 0
  Data.u $24C0
  ; *caseUnfold($24C1)
  Data.a 0
  Data.u $24DB
  ; *caseUnfold($24DB)
  Data.a 0
  Data.u $24C1
  ; *caseUnfold($24C2)
  Data.a 0
  Data.u $24DC
  ; *caseUnfold($24DC)
  Data.a 0
  Data.u $24C2
  ; *caseUnfold($24C3)
  Data.a 0
  Data.u $24DD
  ; *caseUnfold($24DD)
  Data.a 0
  Data.u $24C3
  ; *caseUnfold($24C4)
  Data.a 0
  Data.u $24DE
  ; *caseUnfold($24DE)
  Data.a 0
  Data.u $24C4
  ; *caseUnfold($24C5)
  Data.a 0
  Data.u $24DF
  ; *caseUnfold($24DF)
  Data.a 0
  Data.u $24C5
  ; *caseUnfold($24C6)
  Data.a 0
  Data.u $24E0
  ; *caseUnfold($24E0)
  Data.a 0
  Data.u $24C6
  ; *caseUnfold($24C7)
  Data.a 0
  Data.u $24E1
  ; *caseUnfold($24E1)
  Data.a 0
  Data.u $24C7
  ; *caseUnfold($24C8)
  Data.a 0
  Data.u $24E2
  ; *caseUnfold($24E2)
  Data.a 0
  Data.u $24C8
  ; *caseUnfold($24C9)
  Data.a 0
  Data.u $24E3
  ; *caseUnfold($24E3)
  Data.a 0
  Data.u $24C9
  ; *caseUnfold($24CA)
  Data.a 0
  Data.u $24E4
  ; *caseUnfold($24E4)
  Data.a 0
  Data.u $24CA
  ; *caseUnfold($24CB)
  Data.a 0
  Data.u $24E5
  ; *caseUnfold($24E5)
  Data.a 0
  Data.u $24CB
  ; *caseUnfold($24CC)
  Data.a 0
  Data.u $24E6
  ; *caseUnfold($24E6)
  Data.a 0
  Data.u $24CC
  ; *caseUnfold($24CD)
  Data.a 0
  Data.u $24E7
  ; *caseUnfold($24E7)
  Data.a 0
  Data.u $24CD
  ; *caseUnfold($24CE)
  Data.a 0
  Data.u $24E8
  ; *caseUnfold($24E8)
  Data.a 0
  Data.u $24CE
  ; *caseUnfold($24CF)
  Data.a 0
  Data.u $24E9
  ; *caseUnfold($24E9)
  Data.a 0
  Data.u $24CF
  ; *caseUnfold($2C00)
  Data.a 0
  Data.u $2C30
  ; *caseUnfold($2C30)
  Data.a 0
  Data.u $2C00
  ; *caseUnfold($2C01)
  Data.a 0
  Data.u $2C31
  ; *caseUnfold($2C31)
  Data.a 0
  Data.u $2C01
  ; *caseUnfold($2C02)
  Data.a 0
  Data.u $2C32
  ; *caseUnfold($2C32)
  Data.a 0
  Data.u $2C02
  ; *caseUnfold($2C03)
  Data.a 0
  Data.u $2C33
  ; *caseUnfold($2C33)
  Data.a 0
  Data.u $2C03
  ; *caseUnfold($2C04)
  Data.a 0
  Data.u $2C34
  ; *caseUnfold($2C34)
  Data.a 0
  Data.u $2C04
  ; *caseUnfold($2C05)
  Data.a 0
  Data.u $2C35
  ; *caseUnfold($2C35)
  Data.a 0
  Data.u $2C05
  ; *caseUnfold($2C06)
  Data.a 0
  Data.u $2C36
  ; *caseUnfold($2C36)
  Data.a 0
  Data.u $2C06
  ; *caseUnfold($2C07)
  Data.a 0
  Data.u $2C37
  ; *caseUnfold($2C37)
  Data.a 0
  Data.u $2C07
  ; *caseUnfold($2C08)
  Data.a 0
  Data.u $2C38
  ; *caseUnfold($2C38)
  Data.a 0
  Data.u $2C08
  ; *caseUnfold($2C09)
  Data.a 0
  Data.u $2C39
  ; *caseUnfold($2C39)
  Data.a 0
  Data.u $2C09
  ; *caseUnfold($2C0A)
  Data.a 0
  Data.u $2C3A
  ; *caseUnfold($2C3A)
  Data.a 0
  Data.u $2C0A
  ; *caseUnfold($2C0B)
  Data.a 0
  Data.u $2C3B
  ; *caseUnfold($2C3B)
  Data.a 0
  Data.u $2C0B
  ; *caseUnfold($2C0C)
  Data.a 0
  Data.u $2C3C
  ; *caseUnfold($2C3C)
  Data.a 0
  Data.u $2C0C
  ; *caseUnfold($2C0D)
  Data.a 0
  Data.u $2C3D
  ; *caseUnfold($2C3D)
  Data.a 0
  Data.u $2C0D
  ; *caseUnfold($2C0E)
  Data.a 0
  Data.u $2C3E
  ; *caseUnfold($2C3E)
  Data.a 0
  Data.u $2C0E
  ; *caseUnfold($2C0F)
  Data.a 0
  Data.u $2C3F
  ; *caseUnfold($2C3F)
  Data.a 0
  Data.u $2C0F
  ; *caseUnfold($2C10)
  Data.a 0
  Data.u $2C40
  ; *caseUnfold($2C40)
  Data.a 0
  Data.u $2C10
  ; *caseUnfold($2C11)
  Data.a 0
  Data.u $2C41
  ; *caseUnfold($2C41)
  Data.a 0
  Data.u $2C11
  ; *caseUnfold($2C12)
  Data.a 0
  Data.u $2C42
  ; *caseUnfold($2C42)
  Data.a 0
  Data.u $2C12
  ; *caseUnfold($2C13)
  Data.a 0
  Data.u $2C43
  ; *caseUnfold($2C43)
  Data.a 0
  Data.u $2C13
  ; *caseUnfold($2C14)
  Data.a 0
  Data.u $2C44
  ; *caseUnfold($2C44)
  Data.a 0
  Data.u $2C14
  ; *caseUnfold($2C15)
  Data.a 0
  Data.u $2C45
  ; *caseUnfold($2C45)
  Data.a 0
  Data.u $2C15
  ; *caseUnfold($2C16)
  Data.a 0
  Data.u $2C46
  ; *caseUnfold($2C46)
  Data.a 0
  Data.u $2C16
  ; *caseUnfold($2C17)
  Data.a 0
  Data.u $2C47
  ; *caseUnfold($2C47)
  Data.a 0
  Data.u $2C17
  ; *caseUnfold($2C18)
  Data.a 0
  Data.u $2C48
  ; *caseUnfold($2C48)
  Data.a 0
  Data.u $2C18
  ; *caseUnfold($2C19)
  Data.a 0
  Data.u $2C49
  ; *caseUnfold($2C49)
  Data.a 0
  Data.u $2C19
  ; *caseUnfold($2C1A)
  Data.a 0
  Data.u $2C4A
  ; *caseUnfold($2C4A)
  Data.a 0
  Data.u $2C1A
  ; *caseUnfold($2C1B)
  Data.a 0
  Data.u $2C4B
  ; *caseUnfold($2C4B)
  Data.a 0
  Data.u $2C1B
  ; *caseUnfold($2C1C)
  Data.a 0
  Data.u $2C4C
  ; *caseUnfold($2C4C)
  Data.a 0
  Data.u $2C1C
  ; *caseUnfold($2C1D)
  Data.a 0
  Data.u $2C4D
  ; *caseUnfold($2C4D)
  Data.a 0
  Data.u $2C1D
  ; *caseUnfold($2C1E)
  Data.a 0
  Data.u $2C4E
  ; *caseUnfold($2C4E)
  Data.a 0
  Data.u $2C1E
  ; *caseUnfold($2C1F)
  Data.a 0
  Data.u $2C4F
  ; *caseUnfold($2C4F)
  Data.a 0
  Data.u $2C1F
  ; *caseUnfold($2C20)
  Data.a 0
  Data.u $2C50
  ; *caseUnfold($2C50)
  Data.a 0
  Data.u $2C20
  ; *caseUnfold($2C21)
  Data.a 0
  Data.u $2C51
  ; *caseUnfold($2C51)
  Data.a 0
  Data.u $2C21
  ; *caseUnfold($2C22)
  Data.a 0
  Data.u $2C52
  ; *caseUnfold($2C52)
  Data.a 0
  Data.u $2C22
  ; *caseUnfold($2C23)
  Data.a 0
  Data.u $2C53
  ; *caseUnfold($2C53)
  Data.a 0
  Data.u $2C23
  ; *caseUnfold($2C24)
  Data.a 0
  Data.u $2C54
  ; *caseUnfold($2C54)
  Data.a 0
  Data.u $2C24
  ; *caseUnfold($2C25)
  Data.a 0
  Data.u $2C55
  ; *caseUnfold($2C55)
  Data.a 0
  Data.u $2C25
  ; *caseUnfold($2C26)
  Data.a 0
  Data.u $2C56
  ; *caseUnfold($2C56)
  Data.a 0
  Data.u $2C26
  ; *caseUnfold($2C27)
  Data.a 0
  Data.u $2C57
  ; *caseUnfold($2C57)
  Data.a 0
  Data.u $2C27
  ; *caseUnfold($2C28)
  Data.a 0
  Data.u $2C58
  ; *caseUnfold($2C58)
  Data.a 0
  Data.u $2C28
  ; *caseUnfold($2C29)
  Data.a 0
  Data.u $2C59
  ; *caseUnfold($2C59)
  Data.a 0
  Data.u $2C29
  ; *caseUnfold($2C2A)
  Data.a 0
  Data.u $2C5A
  ; *caseUnfold($2C5A)
  Data.a 0
  Data.u $2C2A
  ; *caseUnfold($2C2B)
  Data.a 0
  Data.u $2C5B
  ; *caseUnfold($2C5B)
  Data.a 0
  Data.u $2C2B
  ; *caseUnfold($2C2C)
  Data.a 0
  Data.u $2C5C
  ; *caseUnfold($2C5C)
  Data.a 0
  Data.u $2C2C
  ; *caseUnfold($2C2D)
  Data.a 0
  Data.u $2C5D
  ; *caseUnfold($2C5D)
  Data.a 0
  Data.u $2C2D
  ; *caseUnfold($2C2E)
  Data.a 0
  Data.u $2C5E
  ; *caseUnfold($2C5E)
  Data.a 0
  Data.u $2C2E
  ; *caseUnfold($2C2F)
  Data.a 0
  Data.u $2C5F
  ; *caseUnfold($2C5F)
  Data.a 0
  Data.u $2C2F
  ; *caseUnfold($2C60)
  Data.a 0
  Data.u $2C61
  ; *caseUnfold($2C61)
  Data.a 0
  Data.u $2C60
  ; *caseUnfold($2C62)
  Data.a 0
  Data.u $026B
  ; *caseUnfold($026B)
  Data.a 0
  Data.u $2C62
  ; *caseUnfold($2C63)
  Data.a 0
  Data.u $1D7D
  ; *caseUnfold($1D7D)
  Data.a 0
  Data.u $2C63
  ; *caseUnfold($2C64)
  Data.a 0
  Data.u $027D
  ; *caseUnfold($027D)
  Data.a 0
  Data.u $2C64
  ; *caseUnfold($2C67)
  Data.a 0
  Data.u $2C68
  ; *caseUnfold($2C68)
  Data.a 0
  Data.u $2C67
  ; *caseUnfold($2C69)
  Data.a 0
  Data.u $2C6A
  ; *caseUnfold($2C6A)
  Data.a 0
  Data.u $2C69
  ; *caseUnfold($2C6B)
  Data.a 0
  Data.u $2C6C
  ; *caseUnfold($2C6C)
  Data.a 0
  Data.u $2C6B
  ; *caseUnfold($2C6D)
  Data.a 0
  Data.u $0251
  ; *caseUnfold($0251)
  Data.a 0
  Data.u $2C6D
  ; *caseUnfold($2C6E)
  Data.a 0
  Data.u $0271
  ; *caseUnfold($0271)
  Data.a 0
  Data.u $2C6E
  ; *caseUnfold($2C6F)
  Data.a 0
  Data.u $0250
  ; *caseUnfold($0250)
  Data.a 0
  Data.u $2C6F
  ; *caseUnfold($2C70)
  Data.a 0
  Data.u $0252
  ; *caseUnfold($0252)
  Data.a 0
  Data.u $2C70
  ; *caseUnfold($2C72)
  Data.a 0
  Data.u $2C73
  ; *caseUnfold($2C73)
  Data.a 0
  Data.u $2C72
  ; *caseUnfold($2C75)
  Data.a 0
  Data.u $2C76
  ; *caseUnfold($2C76)
  Data.a 0
  Data.u $2C75
  ; *caseUnfold($2C7E)
  Data.a 0
  Data.u $023F
  ; *caseUnfold($023F)
  Data.a 0
  Data.u $2C7E
  ; *caseUnfold($2C7F)
  Data.a 0
  Data.u $0240
  ; *caseUnfold($0240)
  Data.a 0
  Data.u $2C7F
  ; *caseUnfold($2C80)
  Data.a 0
  Data.u $2C81
  ; *caseUnfold($2C81)
  Data.a 0
  Data.u $2C80
  ; *caseUnfold($2C82)
  Data.a 0
  Data.u $2C83
  ; *caseUnfold($2C83)
  Data.a 0
  Data.u $2C82
  ; *caseUnfold($2C84)
  Data.a 0
  Data.u $2C85
  ; *caseUnfold($2C85)
  Data.a 0
  Data.u $2C84
  ; *caseUnfold($2C86)
  Data.a 0
  Data.u $2C87
  ; *caseUnfold($2C87)
  Data.a 0
  Data.u $2C86
  ; *caseUnfold($2C88)
  Data.a 0
  Data.u $2C89
  ; *caseUnfold($2C89)
  Data.a 0
  Data.u $2C88
  ; *caseUnfold($2C8A)
  Data.a 0
  Data.u $2C8B
  ; *caseUnfold($2C8B)
  Data.a 0
  Data.u $2C8A
  ; *caseUnfold($2C8C)
  Data.a 0
  Data.u $2C8D
  ; *caseUnfold($2C8D)
  Data.a 0
  Data.u $2C8C
  ; *caseUnfold($2C8E)
  Data.a 0
  Data.u $2C8F
  ; *caseUnfold($2C8F)
  Data.a 0
  Data.u $2C8E
  ; *caseUnfold($2C90)
  Data.a 0
  Data.u $2C91
  ; *caseUnfold($2C91)
  Data.a 0
  Data.u $2C90
  ; *caseUnfold($2C92)
  Data.a 0
  Data.u $2C93
  ; *caseUnfold($2C93)
  Data.a 0
  Data.u $2C92
  ; *caseUnfold($2C94)
  Data.a 0
  Data.u $2C95
  ; *caseUnfold($2C95)
  Data.a 0
  Data.u $2C94
  ; *caseUnfold($2C96)
  Data.a 0
  Data.u $2C97
  ; *caseUnfold($2C97)
  Data.a 0
  Data.u $2C96
  ; *caseUnfold($2C98)
  Data.a 0
  Data.u $2C99
  ; *caseUnfold($2C99)
  Data.a 0
  Data.u $2C98
  ; *caseUnfold($2C9A)
  Data.a 0
  Data.u $2C9B
  ; *caseUnfold($2C9B)
  Data.a 0
  Data.u $2C9A
  ; *caseUnfold($2C9C)
  Data.a 0
  Data.u $2C9D
  ; *caseUnfold($2C9D)
  Data.a 0
  Data.u $2C9C
  ; *caseUnfold($2C9E)
  Data.a 0
  Data.u $2C9F
  ; *caseUnfold($2C9F)
  Data.a 0
  Data.u $2C9E
  ; *caseUnfold($2CA0)
  Data.a 0
  Data.u $2CA1
  ; *caseUnfold($2CA1)
  Data.a 0
  Data.u $2CA0
  ; *caseUnfold($2CA2)
  Data.a 0
  Data.u $2CA3
  ; *caseUnfold($2CA3)
  Data.a 0
  Data.u $2CA2
  ; *caseUnfold($2CA4)
  Data.a 0
  Data.u $2CA5
  ; *caseUnfold($2CA5)
  Data.a 0
  Data.u $2CA4
  ; *caseUnfold($2CA6)
  Data.a 0
  Data.u $2CA7
  ; *caseUnfold($2CA7)
  Data.a 0
  Data.u $2CA6
  ; *caseUnfold($2CA8)
  Data.a 0
  Data.u $2CA9
  ; *caseUnfold($2CA9)
  Data.a 0
  Data.u $2CA8
  ; *caseUnfold($2CAA)
  Data.a 0
  Data.u $2CAB
  ; *caseUnfold($2CAB)
  Data.a 0
  Data.u $2CAA
  ; *caseUnfold($2CAC)
  Data.a 0
  Data.u $2CAD
  ; *caseUnfold($2CAD)
  Data.a 0
  Data.u $2CAC
  ; *caseUnfold($2CAE)
  Data.a 0
  Data.u $2CAF
  ; *caseUnfold($2CAF)
  Data.a 0
  Data.u $2CAE
  ; *caseUnfold($2CB0)
  Data.a 0
  Data.u $2CB1
  ; *caseUnfold($2CB1)
  Data.a 0
  Data.u $2CB0
  ; *caseUnfold($2CB2)
  Data.a 0
  Data.u $2CB3
  ; *caseUnfold($2CB3)
  Data.a 0
  Data.u $2CB2
  ; *caseUnfold($2CB4)
  Data.a 0
  Data.u $2CB5
  ; *caseUnfold($2CB5)
  Data.a 0
  Data.u $2CB4
  ; *caseUnfold($2CB6)
  Data.a 0
  Data.u $2CB7
  ; *caseUnfold($2CB7)
  Data.a 0
  Data.u $2CB6
  ; *caseUnfold($2CB8)
  Data.a 0
  Data.u $2CB9
  ; *caseUnfold($2CB9)
  Data.a 0
  Data.u $2CB8
  ; *caseUnfold($2CBA)
  Data.a 0
  Data.u $2CBB
  ; *caseUnfold($2CBB)
  Data.a 0
  Data.u $2CBA
  ; *caseUnfold($2CBC)
  Data.a 0
  Data.u $2CBD
  ; *caseUnfold($2CBD)
  Data.a 0
  Data.u $2CBC
  ; *caseUnfold($2CBE)
  Data.a 0
  Data.u $2CBF
  ; *caseUnfold($2CBF)
  Data.a 0
  Data.u $2CBE
  ; *caseUnfold($2CC0)
  Data.a 0
  Data.u $2CC1
  ; *caseUnfold($2CC1)
  Data.a 0
  Data.u $2CC0
  ; *caseUnfold($2CC2)
  Data.a 0
  Data.u $2CC3
  ; *caseUnfold($2CC3)
  Data.a 0
  Data.u $2CC2
  ; *caseUnfold($2CC4)
  Data.a 0
  Data.u $2CC5
  ; *caseUnfold($2CC5)
  Data.a 0
  Data.u $2CC4
  ; *caseUnfold($2CC6)
  Data.a 0
  Data.u $2CC7
  ; *caseUnfold($2CC7)
  Data.a 0
  Data.u $2CC6
  ; *caseUnfold($2CC8)
  Data.a 0
  Data.u $2CC9
  ; *caseUnfold($2CC9)
  Data.a 0
  Data.u $2CC8
  ; *caseUnfold($2CCA)
  Data.a 0
  Data.u $2CCB
  ; *caseUnfold($2CCB)
  Data.a 0
  Data.u $2CCA
  ; *caseUnfold($2CCC)
  Data.a 0
  Data.u $2CCD
  ; *caseUnfold($2CCD)
  Data.a 0
  Data.u $2CCC
  ; *caseUnfold($2CCE)
  Data.a 0
  Data.u $2CCF
  ; *caseUnfold($2CCF)
  Data.a 0
  Data.u $2CCE
  ; *caseUnfold($2CD0)
  Data.a 0
  Data.u $2CD1
  ; *caseUnfold($2CD1)
  Data.a 0
  Data.u $2CD0
  ; *caseUnfold($2CD2)
  Data.a 0
  Data.u $2CD3
  ; *caseUnfold($2CD3)
  Data.a 0
  Data.u $2CD2
  ; *caseUnfold($2CD4)
  Data.a 0
  Data.u $2CD5
  ; *caseUnfold($2CD5)
  Data.a 0
  Data.u $2CD4
  ; *caseUnfold($2CD6)
  Data.a 0
  Data.u $2CD7
  ; *caseUnfold($2CD7)
  Data.a 0
  Data.u $2CD6
  ; *caseUnfold($2CD8)
  Data.a 0
  Data.u $2CD9
  ; *caseUnfold($2CD9)
  Data.a 0
  Data.u $2CD8
  ; *caseUnfold($2CDA)
  Data.a 0
  Data.u $2CDB
  ; *caseUnfold($2CDB)
  Data.a 0
  Data.u $2CDA
  ; *caseUnfold($2CDC)
  Data.a 0
  Data.u $2CDD
  ; *caseUnfold($2CDD)
  Data.a 0
  Data.u $2CDC
  ; *caseUnfold($2CDE)
  Data.a 0
  Data.u $2CDF
  ; *caseUnfold($2CDF)
  Data.a 0
  Data.u $2CDE
  ; *caseUnfold($2CE0)
  Data.a 0
  Data.u $2CE1
  ; *caseUnfold($2CE1)
  Data.a 0
  Data.u $2CE0
  ; *caseUnfold($2CE2)
  Data.a 0
  Data.u $2CE3
  ; *caseUnfold($2CE3)
  Data.a 0
  Data.u $2CE2
  ; *caseUnfold($2CEB)
  Data.a 0
  Data.u $2CEC
  ; *caseUnfold($2CEC)
  Data.a 0
  Data.u $2CEB
  ; *caseUnfold($2CED)
  Data.a 0
  Data.u $2CEE
  ; *caseUnfold($2CEE)
  Data.a 0
  Data.u $2CED
  ; *caseUnfold($2CF2)
  Data.a 0
  Data.u $2CF3
  ; *caseUnfold($2CF3)
  Data.a 0
  Data.u $2CF2
  ; *caseUnfold($A640)
  Data.a 0
  Data.u $A641
  ; *caseUnfold($A641)
  Data.a 0
  Data.u $A640
  ; *caseUnfold($A642)
  Data.a 0
  Data.u $A643
  ; *caseUnfold($A643)
  Data.a 0
  Data.u $A642
  ; *caseUnfold($A644)
  Data.a 0
  Data.u $A645
  ; *caseUnfold($A645)
  Data.a 0
  Data.u $A644
  ; *caseUnfold($A646)
  Data.a 0
  Data.u $A647
  ; *caseUnfold($A647)
  Data.a 0
  Data.u $A646
  ; *caseUnfold($A648)
  Data.a 0
  Data.u $A649
  ; *caseUnfold($A649)
  Data.a 0
  Data.u $A648
  ; *caseUnfold($A64C)
  Data.a 0
  Data.u $A64D
  ; *caseUnfold($A64D)
  Data.a 0
  Data.u $A64C
  ; *caseUnfold($A64E)
  Data.a 0
  Data.u $A64F
  ; *caseUnfold($A64F)
  Data.a 0
  Data.u $A64E
  ; *caseUnfold($A650)
  Data.a 0
  Data.u $A651
  ; *caseUnfold($A651)
  Data.a 0
  Data.u $A650
  ; *caseUnfold($A652)
  Data.a 0
  Data.u $A653
  ; *caseUnfold($A653)
  Data.a 0
  Data.u $A652
  ; *caseUnfold($A654)
  Data.a 0
  Data.u $A655
  ; *caseUnfold($A655)
  Data.a 0
  Data.u $A654
  ; *caseUnfold($A656)
  Data.a 0
  Data.u $A657
  ; *caseUnfold($A657)
  Data.a 0
  Data.u $A656
  ; *caseUnfold($A658)
  Data.a 0
  Data.u $A659
  ; *caseUnfold($A659)
  Data.a 0
  Data.u $A658
  ; *caseUnfold($A65A)
  Data.a 0
  Data.u $A65B
  ; *caseUnfold($A65B)
  Data.a 0
  Data.u $A65A
  ; *caseUnfold($A65C)
  Data.a 0
  Data.u $A65D
  ; *caseUnfold($A65D)
  Data.a 0
  Data.u $A65C
  ; *caseUnfold($A65E)
  Data.a 0
  Data.u $A65F
  ; *caseUnfold($A65F)
  Data.a 0
  Data.u $A65E
  ; *caseUnfold($A660)
  Data.a 0
  Data.u $A661
  ; *caseUnfold($A661)
  Data.a 0
  Data.u $A660
  ; *caseUnfold($A662)
  Data.a 0
  Data.u $A663
  ; *caseUnfold($A663)
  Data.a 0
  Data.u $A662
  ; *caseUnfold($A664)
  Data.a 0
  Data.u $A665
  ; *caseUnfold($A665)
  Data.a 0
  Data.u $A664
  ; *caseUnfold($A666)
  Data.a 0
  Data.u $A667
  ; *caseUnfold($A667)
  Data.a 0
  Data.u $A666
  ; *caseUnfold($A668)
  Data.a 0
  Data.u $A669
  ; *caseUnfold($A669)
  Data.a 0
  Data.u $A668
  ; *caseUnfold($A66A)
  Data.a 0
  Data.u $A66B
  ; *caseUnfold($A66B)
  Data.a 0
  Data.u $A66A
  ; *caseUnfold($A66C)
  Data.a 0
  Data.u $A66D
  ; *caseUnfold($A66D)
  Data.a 0
  Data.u $A66C
  ; *caseUnfold($A680)
  Data.a 0
  Data.u $A681
  ; *caseUnfold($A681)
  Data.a 0
  Data.u $A680
  ; *caseUnfold($A682)
  Data.a 0
  Data.u $A683
  ; *caseUnfold($A683)
  Data.a 0
  Data.u $A682
  ; *caseUnfold($A684)
  Data.a 0
  Data.u $A685
  ; *caseUnfold($A685)
  Data.a 0
  Data.u $A684
  ; *caseUnfold($A686)
  Data.a 0
  Data.u $A687
  ; *caseUnfold($A687)
  Data.a 0
  Data.u $A686
  ; *caseUnfold($A688)
  Data.a 0
  Data.u $A689
  ; *caseUnfold($A689)
  Data.a 0
  Data.u $A688
  ; *caseUnfold($A68A)
  Data.a 0
  Data.u $A68B
  ; *caseUnfold($A68B)
  Data.a 0
  Data.u $A68A
  ; *caseUnfold($A68C)
  Data.a 0
  Data.u $A68D
  ; *caseUnfold($A68D)
  Data.a 0
  Data.u $A68C
  ; *caseUnfold($A68E)
  Data.a 0
  Data.u $A68F
  ; *caseUnfold($A68F)
  Data.a 0
  Data.u $A68E
  ; *caseUnfold($A690)
  Data.a 0
  Data.u $A691
  ; *caseUnfold($A691)
  Data.a 0
  Data.u $A690
  ; *caseUnfold($A692)
  Data.a 0
  Data.u $A693
  ; *caseUnfold($A693)
  Data.a 0
  Data.u $A692
  ; *caseUnfold($A694)
  Data.a 0
  Data.u $A695
  ; *caseUnfold($A695)
  Data.a 0
  Data.u $A694
  ; *caseUnfold($A696)
  Data.a 0
  Data.u $A697
  ; *caseUnfold($A697)
  Data.a 0
  Data.u $A696
  ; *caseUnfold($A698)
  Data.a 0
  Data.u $A699
  ; *caseUnfold($A699)
  Data.a 0
  Data.u $A698
  ; *caseUnfold($A69A)
  Data.a 0
  Data.u $A69B
  ; *caseUnfold($A69B)
  Data.a 0
  Data.u $A69A
  ; *caseUnfold($A722)
  Data.a 0
  Data.u $A723
  ; *caseUnfold($A723)
  Data.a 0
  Data.u $A722
  ; *caseUnfold($A724)
  Data.a 0
  Data.u $A725
  ; *caseUnfold($A725)
  Data.a 0
  Data.u $A724
  ; *caseUnfold($A726)
  Data.a 0
  Data.u $A727
  ; *caseUnfold($A727)
  Data.a 0
  Data.u $A726
  ; *caseUnfold($A728)
  Data.a 0
  Data.u $A729
  ; *caseUnfold($A729)
  Data.a 0
  Data.u $A728
  ; *caseUnfold($A72A)
  Data.a 0
  Data.u $A72B
  ; *caseUnfold($A72B)
  Data.a 0
  Data.u $A72A
  ; *caseUnfold($A72C)
  Data.a 0
  Data.u $A72D
  ; *caseUnfold($A72D)
  Data.a 0
  Data.u $A72C
  ; *caseUnfold($A72E)
  Data.a 0
  Data.u $A72F
  ; *caseUnfold($A72F)
  Data.a 0
  Data.u $A72E
  ; *caseUnfold($A732)
  Data.a 0
  Data.u $A733
  ; *caseUnfold($A733)
  Data.a 0
  Data.u $A732
  ; *caseUnfold($A734)
  Data.a 0
  Data.u $A735
  ; *caseUnfold($A735)
  Data.a 0
  Data.u $A734
  ; *caseUnfold($A736)
  Data.a 0
  Data.u $A737
  ; *caseUnfold($A737)
  Data.a 0
  Data.u $A736
  ; *caseUnfold($A738)
  Data.a 0
  Data.u $A739
  ; *caseUnfold($A739)
  Data.a 0
  Data.u $A738
  ; *caseUnfold($A73A)
  Data.a 0
  Data.u $A73B
  ; *caseUnfold($A73B)
  Data.a 0
  Data.u $A73A
  ; *caseUnfold($A73C)
  Data.a 0
  Data.u $A73D
  ; *caseUnfold($A73D)
  Data.a 0
  Data.u $A73C
  ; *caseUnfold($A73E)
  Data.a 0
  Data.u $A73F
  ; *caseUnfold($A73F)
  Data.a 0
  Data.u $A73E
  ; *caseUnfold($A740)
  Data.a 0
  Data.u $A741
  ; *caseUnfold($A741)
  Data.a 0
  Data.u $A740
  ; *caseUnfold($A742)
  Data.a 0
  Data.u $A743
  ; *caseUnfold($A743)
  Data.a 0
  Data.u $A742
  ; *caseUnfold($A744)
  Data.a 0
  Data.u $A745
  ; *caseUnfold($A745)
  Data.a 0
  Data.u $A744
  ; *caseUnfold($A746)
  Data.a 0
  Data.u $A747
  ; *caseUnfold($A747)
  Data.a 0
  Data.u $A746
  ; *caseUnfold($A748)
  Data.a 0
  Data.u $A749
  ; *caseUnfold($A749)
  Data.a 0
  Data.u $A748
  ; *caseUnfold($A74A)
  Data.a 0
  Data.u $A74B
  ; *caseUnfold($A74B)
  Data.a 0
  Data.u $A74A
  ; *caseUnfold($A74C)
  Data.a 0
  Data.u $A74D
  ; *caseUnfold($A74D)
  Data.a 0
  Data.u $A74C
  ; *caseUnfold($A74E)
  Data.a 0
  Data.u $A74F
  ; *caseUnfold($A74F)
  Data.a 0
  Data.u $A74E
  ; *caseUnfold($A750)
  Data.a 0
  Data.u $A751
  ; *caseUnfold($A751)
  Data.a 0
  Data.u $A750
  ; *caseUnfold($A752)
  Data.a 0
  Data.u $A753
  ; *caseUnfold($A753)
  Data.a 0
  Data.u $A752
  ; *caseUnfold($A754)
  Data.a 0
  Data.u $A755
  ; *caseUnfold($A755)
  Data.a 0
  Data.u $A754
  ; *caseUnfold($A756)
  Data.a 0
  Data.u $A757
  ; *caseUnfold($A757)
  Data.a 0
  Data.u $A756
  ; *caseUnfold($A758)
  Data.a 0
  Data.u $A759
  ; *caseUnfold($A759)
  Data.a 0
  Data.u $A758
  ; *caseUnfold($A75A)
  Data.a 0
  Data.u $A75B
  ; *caseUnfold($A75B)
  Data.a 0
  Data.u $A75A
  ; *caseUnfold($A75C)
  Data.a 0
  Data.u $A75D
  ; *caseUnfold($A75D)
  Data.a 0
  Data.u $A75C
  ; *caseUnfold($A75E)
  Data.a 0
  Data.u $A75F
  ; *caseUnfold($A75F)
  Data.a 0
  Data.u $A75E
  ; *caseUnfold($A760)
  Data.a 0
  Data.u $A761
  ; *caseUnfold($A761)
  Data.a 0
  Data.u $A760
  ; *caseUnfold($A762)
  Data.a 0
  Data.u $A763
  ; *caseUnfold($A763)
  Data.a 0
  Data.u $A762
  ; *caseUnfold($A764)
  Data.a 0
  Data.u $A765
  ; *caseUnfold($A765)
  Data.a 0
  Data.u $A764
  ; *caseUnfold($A766)
  Data.a 0
  Data.u $A767
  ; *caseUnfold($A767)
  Data.a 0
  Data.u $A766
  ; *caseUnfold($A768)
  Data.a 0
  Data.u $A769
  ; *caseUnfold($A769)
  Data.a 0
  Data.u $A768
  ; *caseUnfold($A76A)
  Data.a 0
  Data.u $A76B
  ; *caseUnfold($A76B)
  Data.a 0
  Data.u $A76A
  ; *caseUnfold($A76C)
  Data.a 0
  Data.u $A76D
  ; *caseUnfold($A76D)
  Data.a 0
  Data.u $A76C
  ; *caseUnfold($A76E)
  Data.a 0
  Data.u $A76F
  ; *caseUnfold($A76F)
  Data.a 0
  Data.u $A76E
  ; *caseUnfold($A779)
  Data.a 0
  Data.u $A77A
  ; *caseUnfold($A77A)
  Data.a 0
  Data.u $A779
  ; *caseUnfold($A77B)
  Data.a 0
  Data.u $A77C
  ; *caseUnfold($A77C)
  Data.a 0
  Data.u $A77B
  ; *caseUnfold($A77D)
  Data.a 0
  Data.u $1D79
  ; *caseUnfold($1D79)
  Data.a 0
  Data.u $A77D
  ; *caseUnfold($A77E)
  Data.a 0
  Data.u $A77F
  ; *caseUnfold($A77F)
  Data.a 0
  Data.u $A77E
  ; *caseUnfold($A780)
  Data.a 0
  Data.u $A781
  ; *caseUnfold($A781)
  Data.a 0
  Data.u $A780
  ; *caseUnfold($A782)
  Data.a 0
  Data.u $A783
  ; *caseUnfold($A783)
  Data.a 0
  Data.u $A782
  ; *caseUnfold($A784)
  Data.a 0
  Data.u $A785
  ; *caseUnfold($A785)
  Data.a 0
  Data.u $A784
  ; *caseUnfold($A786)
  Data.a 0
  Data.u $A787
  ; *caseUnfold($A787)
  Data.a 0
  Data.u $A786
  ; *caseUnfold($A78B)
  Data.a 0
  Data.u $A78C
  ; *caseUnfold($A78C)
  Data.a 0
  Data.u $A78B
  ; *caseUnfold($A78D)
  Data.a 0
  Data.u $0265
  ; *caseUnfold($0265)
  Data.a 0
  Data.u $A78D
  ; *caseUnfold($A790)
  Data.a 0
  Data.u $A791
  ; *caseUnfold($A791)
  Data.a 0
  Data.u $A790
  ; *caseUnfold($A792)
  Data.a 0
  Data.u $A793
  ; *caseUnfold($A793)
  Data.a 0
  Data.u $A792
  ; *caseUnfold($A796)
  Data.a 0
  Data.u $A797
  ; *caseUnfold($A797)
  Data.a 0
  Data.u $A796
  ; *caseUnfold($A798)
  Data.a 0
  Data.u $A799
  ; *caseUnfold($A799)
  Data.a 0
  Data.u $A798
  ; *caseUnfold($A79A)
  Data.a 0
  Data.u $A79B
  ; *caseUnfold($A79B)
  Data.a 0
  Data.u $A79A
  ; *caseUnfold($A79C)
  Data.a 0
  Data.u $A79D
  ; *caseUnfold($A79D)
  Data.a 0
  Data.u $A79C
  ; *caseUnfold($A79E)
  Data.a 0
  Data.u $A79F
  ; *caseUnfold($A79F)
  Data.a 0
  Data.u $A79E
  ; *caseUnfold($A7A0)
  Data.a 0
  Data.u $A7A1
  ; *caseUnfold($A7A1)
  Data.a 0
  Data.u $A7A0
  ; *caseUnfold($A7A2)
  Data.a 0
  Data.u $A7A3
  ; *caseUnfold($A7A3)
  Data.a 0
  Data.u $A7A2
  ; *caseUnfold($A7A4)
  Data.a 0
  Data.u $A7A5
  ; *caseUnfold($A7A5)
  Data.a 0
  Data.u $A7A4
  ; *caseUnfold($A7A6)
  Data.a 0
  Data.u $A7A7
  ; *caseUnfold($A7A7)
  Data.a 0
  Data.u $A7A6
  ; *caseUnfold($A7A8)
  Data.a 0
  Data.u $A7A9
  ; *caseUnfold($A7A9)
  Data.a 0
  Data.u $A7A8
  ; *caseUnfold($A7AA)
  Data.a 0
  Data.u $0266
  ; *caseUnfold($0266)
  Data.a 0
  Data.u $A7AA
  ; *caseUnfold($A7AB)
  Data.a 0
  Data.u $025C
  ; *caseUnfold($025C)
  Data.a 0
  Data.u $A7AB
  ; *caseUnfold($A7AC)
  Data.a 0
  Data.u $0261
  ; *caseUnfold($0261)
  Data.a 0
  Data.u $A7AC
  ; *caseUnfold($A7AD)
  Data.a 0
  Data.u $026C
  ; *caseUnfold($026C)
  Data.a 0
  Data.u $A7AD
  ; *caseUnfold($A7AE)
  Data.a 0
  Data.u $026A
  ; *caseUnfold($026A)
  Data.a 0
  Data.u $A7AE
  ; *caseUnfold($A7B0)
  Data.a 0
  Data.u $029E
  ; *caseUnfold($029E)
  Data.a 0
  Data.u $A7B0
  ; *caseUnfold($A7B1)
  Data.a 0
  Data.u $0287
  ; *caseUnfold($0287)
  Data.a 0
  Data.u $A7B1
  ; *caseUnfold($A7B2)
  Data.a 0
  Data.u $029D
  ; *caseUnfold($029D)
  Data.a 0
  Data.u $A7B2
  ; *caseUnfold($A7B3)
  Data.a 0
  Data.u $AB53
  ; *caseUnfold($AB53)
  Data.a 0
  Data.u $A7B3
  ; *caseUnfold($A7B4)
  Data.a 0
  Data.u $A7B5
  ; *caseUnfold($A7B5)
  Data.a 0
  Data.u $A7B4
  ; *caseUnfold($A7B6)
  Data.a 0
  Data.u $A7B7
  ; *caseUnfold($A7B7)
  Data.a 0
  Data.u $A7B6
  ; *caseUnfold($A7B8)
  Data.a 0
  Data.u $A7B9
  ; *caseUnfold($A7B9)
  Data.a 0
  Data.u $A7B8
  ; *caseUnfold($A7BA)
  Data.a 0
  Data.u $A7BB
  ; *caseUnfold($A7BB)
  Data.a 0
  Data.u $A7BA
  ; *caseUnfold($A7BC)
  Data.a 0
  Data.u $A7BD
  ; *caseUnfold($A7BD)
  Data.a 0
  Data.u $A7BC
  ; *caseUnfold($A7BE)
  Data.a 0
  Data.u $A7BF
  ; *caseUnfold($A7BF)
  Data.a 0
  Data.u $A7BE
  ; *caseUnfold($A7C0)
  Data.a 0
  Data.u $A7C1
  ; *caseUnfold($A7C1)
  Data.a 0
  Data.u $A7C0
  ; *caseUnfold($A7C2)
  Data.a 0
  Data.u $A7C3
  ; *caseUnfold($A7C3)
  Data.a 0
  Data.u $A7C2
  ; *caseUnfold($A7C4)
  Data.a 0
  Data.u $A794
  ; *caseUnfold($A794)
  Data.a 0
  Data.u $A7C4
  ; *caseUnfold($A7C5)
  Data.a 0
  Data.u $0282
  ; *caseUnfold($0282)
  Data.a 0
  Data.u $A7C5
  ; *caseUnfold($A7C6)
  Data.a 0
  Data.u $1D8E
  ; *caseUnfold($1D8E)
  Data.a 0
  Data.u $A7C6
  ; *caseUnfold($A7C7)
  Data.a 0
  Data.u $A7C8
  ; *caseUnfold($A7C8)
  Data.a 0
  Data.u $A7C7
  ; *caseUnfold($A7C9)
  Data.a 0
  Data.u $A7CA
  ; *caseUnfold($A7CA)
  Data.a 0
  Data.u $A7C9
  ; *caseUnfold($A7D0)
  Data.a 0
  Data.u $A7D1
  ; *caseUnfold($A7D1)
  Data.a 0
  Data.u $A7D0
  ; *caseUnfold($A7D6)
  Data.a 0
  Data.u $A7D7
  ; *caseUnfold($A7D7)
  Data.a 0
  Data.u $A7D6
  ; *caseUnfold($A7D8)
  Data.a 0
  Data.u $A7D9
  ; *caseUnfold($A7D9)
  Data.a 0
  Data.u $A7D8
  ; *caseUnfold($A7F5)
  Data.a 0
  Data.u $A7F6
  ; *caseUnfold($A7F6)
  Data.a 0
  Data.u $A7F5
  ; *caseUnfold($AB70)
  Data.a 0
  Data.u $13A0
  ; *caseUnfold($13A0)
  Data.a 0
  Data.u $AB70
  ; *caseUnfold($AB71)
  Data.a 0
  Data.u $13A1
  ; *caseUnfold($13A1)
  Data.a 0
  Data.u $AB71
  ; *caseUnfold($AB72)
  Data.a 0
  Data.u $13A2
  ; *caseUnfold($13A2)
  Data.a 0
  Data.u $AB72
  ; *caseUnfold($AB73)
  Data.a 0
  Data.u $13A3
  ; *caseUnfold($13A3)
  Data.a 0
  Data.u $AB73
  ; *caseUnfold($AB74)
  Data.a 0
  Data.u $13A4
  ; *caseUnfold($13A4)
  Data.a 0
  Data.u $AB74
  ; *caseUnfold($AB75)
  Data.a 0
  Data.u $13A5
  ; *caseUnfold($13A5)
  Data.a 0
  Data.u $AB75
  ; *caseUnfold($AB76)
  Data.a 0
  Data.u $13A6
  ; *caseUnfold($13A6)
  Data.a 0
  Data.u $AB76
  ; *caseUnfold($AB77)
  Data.a 0
  Data.u $13A7
  ; *caseUnfold($13A7)
  Data.a 0
  Data.u $AB77
  ; *caseUnfold($AB78)
  Data.a 0
  Data.u $13A8
  ; *caseUnfold($13A8)
  Data.a 0
  Data.u $AB78
  ; *caseUnfold($AB79)
  Data.a 0
  Data.u $13A9
  ; *caseUnfold($13A9)
  Data.a 0
  Data.u $AB79
  ; *caseUnfold($AB7A)
  Data.a 0
  Data.u $13AA
  ; *caseUnfold($13AA)
  Data.a 0
  Data.u $AB7A
  ; *caseUnfold($AB7B)
  Data.a 0
  Data.u $13AB
  ; *caseUnfold($13AB)
  Data.a 0
  Data.u $AB7B
  ; *caseUnfold($AB7C)
  Data.a 0
  Data.u $13AC
  ; *caseUnfold($13AC)
  Data.a 0
  Data.u $AB7C
  ; *caseUnfold($AB7D)
  Data.a 0
  Data.u $13AD
  ; *caseUnfold($13AD)
  Data.a 0
  Data.u $AB7D
  ; *caseUnfold($AB7E)
  Data.a 0
  Data.u $13AE
  ; *caseUnfold($13AE)
  Data.a 0
  Data.u $AB7E
  ; *caseUnfold($AB7F)
  Data.a 0
  Data.u $13AF
  ; *caseUnfold($13AF)
  Data.a 0
  Data.u $AB7F
  ; *caseUnfold($AB80)
  Data.a 0
  Data.u $13B0
  ; *caseUnfold($13B0)
  Data.a 0
  Data.u $AB80
  ; *caseUnfold($AB81)
  Data.a 0
  Data.u $13B1
  ; *caseUnfold($13B1)
  Data.a 0
  Data.u $AB81
  ; *caseUnfold($AB82)
  Data.a 0
  Data.u $13B2
  ; *caseUnfold($13B2)
  Data.a 0
  Data.u $AB82
  ; *caseUnfold($AB83)
  Data.a 0
  Data.u $13B3
  ; *caseUnfold($13B3)
  Data.a 0
  Data.u $AB83
  ; *caseUnfold($AB84)
  Data.a 0
  Data.u $13B4
  ; *caseUnfold($13B4)
  Data.a 0
  Data.u $AB84
  ; *caseUnfold($AB85)
  Data.a 0
  Data.u $13B5
  ; *caseUnfold($13B5)
  Data.a 0
  Data.u $AB85
  ; *caseUnfold($AB86)
  Data.a 0
  Data.u $13B6
  ; *caseUnfold($13B6)
  Data.a 0
  Data.u $AB86
  ; *caseUnfold($AB87)
  Data.a 0
  Data.u $13B7
  ; *caseUnfold($13B7)
  Data.a 0
  Data.u $AB87
  ; *caseUnfold($AB88)
  Data.a 0
  Data.u $13B8
  ; *caseUnfold($13B8)
  Data.a 0
  Data.u $AB88
  ; *caseUnfold($AB89)
  Data.a 0
  Data.u $13B9
  ; *caseUnfold($13B9)
  Data.a 0
  Data.u $AB89
  ; *caseUnfold($AB8A)
  Data.a 0
  Data.u $13BA
  ; *caseUnfold($13BA)
  Data.a 0
  Data.u $AB8A
  ; *caseUnfold($AB8B)
  Data.a 0
  Data.u $13BB
  ; *caseUnfold($13BB)
  Data.a 0
  Data.u $AB8B
  ; *caseUnfold($AB8C)
  Data.a 0
  Data.u $13BC
  ; *caseUnfold($13BC)
  Data.a 0
  Data.u $AB8C
  ; *caseUnfold($AB8D)
  Data.a 0
  Data.u $13BD
  ; *caseUnfold($13BD)
  Data.a 0
  Data.u $AB8D
  ; *caseUnfold($AB8E)
  Data.a 0
  Data.u $13BE
  ; *caseUnfold($13BE)
  Data.a 0
  Data.u $AB8E
  ; *caseUnfold($AB8F)
  Data.a 0
  Data.u $13BF
  ; *caseUnfold($13BF)
  Data.a 0
  Data.u $AB8F
  ; *caseUnfold($AB90)
  Data.a 0
  Data.u $13C0
  ; *caseUnfold($13C0)
  Data.a 0
  Data.u $AB90
  ; *caseUnfold($AB91)
  Data.a 0
  Data.u $13C1
  ; *caseUnfold($13C1)
  Data.a 0
  Data.u $AB91
  ; *caseUnfold($AB92)
  Data.a 0
  Data.u $13C2
  ; *caseUnfold($13C2)
  Data.a 0
  Data.u $AB92
  ; *caseUnfold($AB93)
  Data.a 0
  Data.u $13C3
  ; *caseUnfold($13C3)
  Data.a 0
  Data.u $AB93
  ; *caseUnfold($AB94)
  Data.a 0
  Data.u $13C4
  ; *caseUnfold($13C4)
  Data.a 0
  Data.u $AB94
  ; *caseUnfold($AB95)
  Data.a 0
  Data.u $13C5
  ; *caseUnfold($13C5)
  Data.a 0
  Data.u $AB95
  ; *caseUnfold($AB96)
  Data.a 0
  Data.u $13C6
  ; *caseUnfold($13C6)
  Data.a 0
  Data.u $AB96
  ; *caseUnfold($AB97)
  Data.a 0
  Data.u $13C7
  ; *caseUnfold($13C7)
  Data.a 0
  Data.u $AB97
  ; *caseUnfold($AB98)
  Data.a 0
  Data.u $13C8
  ; *caseUnfold($13C8)
  Data.a 0
  Data.u $AB98
  ; *caseUnfold($AB99)
  Data.a 0
  Data.u $13C9
  ; *caseUnfold($13C9)
  Data.a 0
  Data.u $AB99
  ; *caseUnfold($AB9A)
  Data.a 0
  Data.u $13CA
  ; *caseUnfold($13CA)
  Data.a 0
  Data.u $AB9A
  ; *caseUnfold($AB9B)
  Data.a 0
  Data.u $13CB
  ; *caseUnfold($13CB)
  Data.a 0
  Data.u $AB9B
  ; *caseUnfold($AB9C)
  Data.a 0
  Data.u $13CC
  ; *caseUnfold($13CC)
  Data.a 0
  Data.u $AB9C
  ; *caseUnfold($AB9D)
  Data.a 0
  Data.u $13CD
  ; *caseUnfold($13CD)
  Data.a 0
  Data.u $AB9D
  ; *caseUnfold($AB9E)
  Data.a 0
  Data.u $13CE
  ; *caseUnfold($13CE)
  Data.a 0
  Data.u $AB9E
  ; *caseUnfold($AB9F)
  Data.a 0
  Data.u $13CF
  ; *caseUnfold($13CF)
  Data.a 0
  Data.u $AB9F
  ; *caseUnfold($ABA0)
  Data.a 0
  Data.u $13D0
  ; *caseUnfold($13D0)
  Data.a 0
  Data.u $ABA0
  ; *caseUnfold($ABA1)
  Data.a 0
  Data.u $13D1
  ; *caseUnfold($13D1)
  Data.a 0
  Data.u $ABA1
  ; *caseUnfold($ABA2)
  Data.a 0
  Data.u $13D2
  ; *caseUnfold($13D2)
  Data.a 0
  Data.u $ABA2
  ; *caseUnfold($ABA3)
  Data.a 0
  Data.u $13D3
  ; *caseUnfold($13D3)
  Data.a 0
  Data.u $ABA3
  ; *caseUnfold($ABA4)
  Data.a 0
  Data.u $13D4
  ; *caseUnfold($13D4)
  Data.a 0
  Data.u $ABA4
  ; *caseUnfold($ABA5)
  Data.a 0
  Data.u $13D5
  ; *caseUnfold($13D5)
  Data.a 0
  Data.u $ABA5
  ; *caseUnfold($ABA6)
  Data.a 0
  Data.u $13D6
  ; *caseUnfold($13D6)
  Data.a 0
  Data.u $ABA6
  ; *caseUnfold($ABA7)
  Data.a 0
  Data.u $13D7
  ; *caseUnfold($13D7)
  Data.a 0
  Data.u $ABA7
  ; *caseUnfold($ABA8)
  Data.a 0
  Data.u $13D8
  ; *caseUnfold($13D8)
  Data.a 0
  Data.u $ABA8
  ; *caseUnfold($ABA9)
  Data.a 0
  Data.u $13D9
  ; *caseUnfold($13D9)
  Data.a 0
  Data.u $ABA9
  ; *caseUnfold($ABAA)
  Data.a 0
  Data.u $13DA
  ; *caseUnfold($13DA)
  Data.a 0
  Data.u $ABAA
  ; *caseUnfold($ABAB)
  Data.a 0
  Data.u $13DB
  ; *caseUnfold($13DB)
  Data.a 0
  Data.u $ABAB
  ; *caseUnfold($ABAC)
  Data.a 0
  Data.u $13DC
  ; *caseUnfold($13DC)
  Data.a 0
  Data.u $ABAC
  ; *caseUnfold($ABAD)
  Data.a 0
  Data.u $13DD
  ; *caseUnfold($13DD)
  Data.a 0
  Data.u $ABAD
  ; *caseUnfold($ABAE)
  Data.a 0
  Data.u $13DE
  ; *caseUnfold($13DE)
  Data.a 0
  Data.u $ABAE
  ; *caseUnfold($ABAF)
  Data.a 0
  Data.u $13DF
  ; *caseUnfold($13DF)
  Data.a 0
  Data.u $ABAF
  ; *caseUnfold($ABB0)
  Data.a 0
  Data.u $13E0
  ; *caseUnfold($13E0)
  Data.a 0
  Data.u $ABB0
  ; *caseUnfold($ABB1)
  Data.a 0
  Data.u $13E1
  ; *caseUnfold($13E1)
  Data.a 0
  Data.u $ABB1
  ; *caseUnfold($ABB2)
  Data.a 0
  Data.u $13E2
  ; *caseUnfold($13E2)
  Data.a 0
  Data.u $ABB2
  ; *caseUnfold($ABB3)
  Data.a 0
  Data.u $13E3
  ; *caseUnfold($13E3)
  Data.a 0
  Data.u $ABB3
  ; *caseUnfold($ABB4)
  Data.a 0
  Data.u $13E4
  ; *caseUnfold($13E4)
  Data.a 0
  Data.u $ABB4
  ; *caseUnfold($ABB5)
  Data.a 0
  Data.u $13E5
  ; *caseUnfold($13E5)
  Data.a 0
  Data.u $ABB5
  ; *caseUnfold($ABB6)
  Data.a 0
  Data.u $13E6
  ; *caseUnfold($13E6)
  Data.a 0
  Data.u $ABB6
  ; *caseUnfold($ABB7)
  Data.a 0
  Data.u $13E7
  ; *caseUnfold($13E7)
  Data.a 0
  Data.u $ABB7
  ; *caseUnfold($ABB8)
  Data.a 0
  Data.u $13E8
  ; *caseUnfold($13E8)
  Data.a 0
  Data.u $ABB8
  ; *caseUnfold($ABB9)
  Data.a 0
  Data.u $13E9
  ; *caseUnfold($13E9)
  Data.a 0
  Data.u $ABB9
  ; *caseUnfold($ABBA)
  Data.a 0
  Data.u $13EA
  ; *caseUnfold($13EA)
  Data.a 0
  Data.u $ABBA
  ; *caseUnfold($ABBB)
  Data.a 0
  Data.u $13EB
  ; *caseUnfold($13EB)
  Data.a 0
  Data.u $ABBB
  ; *caseUnfold($ABBC)
  Data.a 0
  Data.u $13EC
  ; *caseUnfold($13EC)
  Data.a 0
  Data.u $ABBC
  ; *caseUnfold($ABBD)
  Data.a 0
  Data.u $13ED
  ; *caseUnfold($13ED)
  Data.a 0
  Data.u $ABBD
  ; *caseUnfold($ABBE)
  Data.a 0
  Data.u $13EE
  ; *caseUnfold($13EE)
  Data.a 0
  Data.u $ABBE
  ; *caseUnfold($ABBF)
  Data.a 0
  Data.u $13EF
  ; *caseUnfold($13EF)
  Data.a 0
  Data.u $ABBF
  ; *caseUnfold($FF21)
  Data.a 0
  Data.u $FF41
  ; *caseUnfold($FF41)
  Data.a 0
  Data.u $FF21
  ; *caseUnfold($FF22)
  Data.a 0
  Data.u $FF42
  ; *caseUnfold($FF42)
  Data.a 0
  Data.u $FF22
  ; *caseUnfold($FF23)
  Data.a 0
  Data.u $FF43
  ; *caseUnfold($FF43)
  Data.a 0
  Data.u $FF23
  ; *caseUnfold($FF24)
  Data.a 0
  Data.u $FF44
  ; *caseUnfold($FF44)
  Data.a 0
  Data.u $FF24
  ; *caseUnfold($FF25)
  Data.a 0
  Data.u $FF45
  ; *caseUnfold($FF45)
  Data.a 0
  Data.u $FF25
  ; *caseUnfold($FF26)
  Data.a 0
  Data.u $FF46
  ; *caseUnfold($FF46)
  Data.a 0
  Data.u $FF26
  ; *caseUnfold($FF27)
  Data.a 0
  Data.u $FF47
  ; *caseUnfold($FF47)
  Data.a 0
  Data.u $FF27
  ; *caseUnfold($FF28)
  Data.a 0
  Data.u $FF48
  ; *caseUnfold($FF48)
  Data.a 0
  Data.u $FF28
  ; *caseUnfold($FF29)
  Data.a 0
  Data.u $FF49
  ; *caseUnfold($FF49)
  Data.a 0
  Data.u $FF29
  ; *caseUnfold($FF2A)
  Data.a 0
  Data.u $FF4A
  ; *caseUnfold($FF4A)
  Data.a 0
  Data.u $FF2A
  ; *caseUnfold($FF2B)
  Data.a 0
  Data.u $FF4B
  ; *caseUnfold($FF4B)
  Data.a 0
  Data.u $FF2B
  ; *caseUnfold($FF2C)
  Data.a 0
  Data.u $FF4C
  ; *caseUnfold($FF4C)
  Data.a 0
  Data.u $FF2C
  ; *caseUnfold($FF2D)
  Data.a 0
  Data.u $FF4D
  ; *caseUnfold($FF4D)
  Data.a 0
  Data.u $FF2D
  ; *caseUnfold($FF2E)
  Data.a 0
  Data.u $FF4E
  ; *caseUnfold($FF4E)
  Data.a 0
  Data.u $FF2E
  ; *caseUnfold($FF2F)
  Data.a 0
  Data.u $FF4F
  ; *caseUnfold($FF4F)
  Data.a 0
  Data.u $FF2F
  ; *caseUnfold($FF30)
  Data.a 0
  Data.u $FF50
  ; *caseUnfold($FF50)
  Data.a 0
  Data.u $FF30
  ; *caseUnfold($FF31)
  Data.a 0
  Data.u $FF51
  ; *caseUnfold($FF51)
  Data.a 0
  Data.u $FF31
  ; *caseUnfold($FF32)
  Data.a 0
  Data.u $FF52
  ; *caseUnfold($FF52)
  Data.a 0
  Data.u $FF32
  ; *caseUnfold($FF33)
  Data.a 0
  Data.u $FF53
  ; *caseUnfold($FF53)
  Data.a 0
  Data.u $FF33
  ; *caseUnfold($FF34)
  Data.a 0
  Data.u $FF54
  ; *caseUnfold($FF54)
  Data.a 0
  Data.u $FF34
  ; *caseUnfold($FF35)
  Data.a 0
  Data.u $FF55
  ; *caseUnfold($FF55)
  Data.a 0
  Data.u $FF35
  ; *caseUnfold($FF36)
  Data.a 0
  Data.u $FF56
  ; *caseUnfold($FF56)
  Data.a 0
  Data.u $FF36
  ; *caseUnfold($FF37)
  Data.a 0
  Data.u $FF57
  ; *caseUnfold($FF57)
  Data.a 0
  Data.u $FF37
  ; *caseUnfold($FF38)
  Data.a 0
  Data.u $FF58
  ; *caseUnfold($FF58)
  Data.a 0
  Data.u $FF38
  ; *caseUnfold($FF39)
  Data.a 0
  Data.u $FF59
  ; *caseUnfold($FF59)
  Data.a 0
  Data.u $FF39
  ; *caseUnfold($FF3A)
  Data.a 0
  Data.u $FF5A
  ; *caseUnfold($FF5A)
  Data.a 0
  Data.u $FF3A
EndDataSection
