0 rem ********************************* *****              **              *****
1 rem * michael schmidt * 1984 * msc. *      ****                      ****
2 rem *  b a d i s c h e   6 4 ' e r  *    **     ******* msc. *******     **
3 rem *   supervoc.   * commodore 64  *      ****                      ****
4 rem ********************************* *****  badische    ** 64'er  1984  *****
10 gosub5500:poke198,0:wait198,1
15 poke32768,96:poke650,234
20 dimv$(50,4):pf=1732:pr=1727:sy=1
30 print"{clr}":print:print:print
35 print"  vokabeln von kassette ( j / n )?"
40 geta$:ifa$="j"thengosub2000:gosub3000:goto720
50 ifa$="n"thengosub3500:gosub3000:goto720
52 goto40
80 gosub1000
200 n=n(rnd(ti)*9):r=0:f=0:pr=1727:pf=1732
295 m=0
300 z=z+1:m=m+n:ifm>50thenm=m-50
302 ifm=nthenm1=m1+1:ifm1=2thenm1=0:z=0:goto700
305 poke214,2:print:printtab(4)"{lblu}               "
307 poke214,1:print:printtab(34)z
310 ifv$(m,1)="*"then300
312 ifsx=1thensy=int(rnd(ti)*2+1)
315 poke214,7:print:printtab(4)"               "
320 poke214,2:print:printtab(4)v$(m,sy);" ?"
325 poke214,7:print:b$=""
330 fori=1to15
333 poke198,0:wait198,1:geta$
335 ifa$="{home}"thenpoke214,7:print:printtab(4)"               {up}":b$="":goto330
340 ifasc(a$)=13then400
345 ifa$="{del}"ora$="{clr}"ora$="{inst}"ora$="{down}"ora$="{up}"ora$="{rght}"ora$="{left}"then333
350 printtab(4)a$;
360 b$=b$+a$
370 next
400 ifsy=2then430
410 forj=2to4:ifv$(m,j)&lt;>b$orb$=""thennext:goto500
420 goto600
430 ifv$(m,1)=b$then600
440 goto500
500 fz=fz+1
515 poke214,12:print:printtab(7)"{rvon} falsch* "
520 forj=1to255:next:poke214,12:print:printtab(7)"{rvof} falsch* "
530 print"{blk}"
540 f=f+1:iff>3thenf=1:pf=pf-40
550 fori=pftopf+2:pokei,f(f):poke54272+i,0:next
565 poke214,20:print"{blk}":mm=0
570 fori=3to5:print" : ";:forj=1tolen(v$(m,i-sy))
575 mm=mm+1
580 printmid$(v$(m,i-sy),j,1);
585 fork=1to100:next:next:next
590 fori=mmto31:print" ";:next:print:goto300
600 rz=rz+1
615 poke214,12:print:printtab(7)"{rvon} richtig "
620 fork=1to255:next:poke214,12:print:printtab(7)"{rvof} richtig "
630 print"{blk}"
640 r=r+1:ifr>3thenr=1:pr=pr-40
650 fori=prtopr+2:pokei,r(r):poke54272+i,0:next
660 poke214,20:print:print"                                        ";
665 print"{lblu} RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR":goto300
670 goto300
700 print"{lblu}"
705 iffz&lt;2then780
710 gosub800
720 rz=0:fz=0
730 gosub5000
740 geta$:ifa$="y"thengosub1000:goto200
750 ifa$="s"thengosub2500:goto720
760 ifa$="c"thengosub4000:goto720
765 ifa$="l"thenrun20
770 goto740
780 ifsy=2andsz=0thensz=1:gosub900:sx=1:goto720
783 if sz=1then950
785 gosub860
790 sy=2
795 goto730
800 print"{clr}{down}{down}{down}":print" von "fz+rz" haben sie{down}{down}"
810 printtab(10)rz"richtig    und{down}{down}"
820 printtab(10)fz"falsch {down}{down}{down}"
830 print"ich schlage ihnen vor die vokabeln{down}"
840 print"noch einmal zu wiederholen"
850 fori=1984to2023:pokei,160:poke54272+i,14:forj=1to100:next:next:return
860 print"{clr}{down}{down}{down}  bravo!{down}{down}":print"sie haben von"fz+rz"vokabeln{down}{down}"
870 printtab(10)rz" gewusst{down}{down}{down}"
880 print"ich hore sie jetzt umgekehrt ab"
890 fori=1984to2023:pokei,160:poke54272+i,14:forj=1to100:next:next:return
900 print"{clr}{down}{down}{down}  dritte runde{down}{down}{down}"
910 printrz" richtige "fz" falsche{$a0}{down}{down}{down}"
920 print"und jetzt geht's durcheinander"
930 fori=1984to2023:pokei,160:poke54272+i,14:forj=1to100:next:next:return
950 print"{clr}{down}{down}{down}so, das duerfte genuegen!{down}{down}{down}"
960 print"wiederholen sie diese vokabeln {down}{down}"
970 print"in ca 3-4 wochen{down}{down}{down}"
980 printn$"  verabschiedet sich !
990 fori=1to4000:next:run
1000 print"{clr}"
1010 fori=1to2
1020 print"   U{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}I"
1030 forj=1to3
1040 print"   {SHIFT--}                 {SHIFT--}"
1050 next
1060 print"   J{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}K"
1070 next
1100 print:printtab(6)"U{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}I"
1110 printtab(6)"{SHIFT--}         {SHIFT--}"
1120 printtab(6)"J{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}K"
1150 poke214,21:print:print" RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR"
1160 print" **************************************"
1200 poke214,1:print
1210 fori=1to16:printtab(22)"{rvon}{CBM-K}{rvof}   {CBM-K}{rvon}{CBM-K}{rvof}   {CBM-K}"
1220 next
1230 printtab(21)"{rvon}------------"
1235 printtab(26-len(n$)/2)"{rvon} ";:fori=1to10:printmid$(n$,i,1);:next:print"{rvon} "
1240 poke214,2:print
1250 fori=1to7:printtab(24)r$(i);tab(29)f$(i):print:next
1300 poke214,5:print
1310 printtab(33)"{rvon} note "
1350 print:printtab(33)"U{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}I
1360 fori=1to3:printtab(33)"{SHIFT--}    {SHIFT--}":next
1370 printtab(33)"J{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}K
1400 return
2000 print"{clr}{down}{down}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}";:poke32768,76
2010 open1,1,0,"vokabeln"
2015 input#1,n$
2020 fori=1to50
2030 input#1,v$(i,1)
2031 input#1,v$(i,2)
2032 input#1,v$(i,3)
2033 input#1,v$(i,4)
2040 printi:next
2050 close1
2060 return                              :
2500 sys32768:print"{clr}"
2505 input"name des programms             _{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}";n$:print
2507 n$=left$(n$,10)
2508 print"{down}{down}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rvon}  "n$"  {down}{down}"
2510 open1,1,1,"vokabeln"
2515 print#1,n$
2520 fori=1to50
2530 print#1,v$(i,1)
2531 print#1,v$(i,2)
2532 print#1,v$(i,3)
2533 print#1,v$(i,4)
2540 next
2550 close1
2560 return                              :
3000 rem
3010 fori=1to7:readj$,k$:r$(i)=j$:f$(i)=k$:next
3100 fori=0to9:readj:n(i)=j:next
3120 fori=1to3:readj:f(i)=j:next
3140 fori=1to3:readj:r(i)=j:next
3200 return
3500 fori=1to50
3510 print"{clr}"
3520 print:printtab(5)"{rvon} eingeben neuer vokabeln ! "i"{left}  "
3530 poke214,4:print:print
3540 input"vokabel :";v$(i,1)
3560 ifv$(i,1)=""thengosub4400:return
3565 iflen(v$(i,1))>15then3530
3570 forj=2to4
3580 poke214,2+3*j:print                                      "
3590 input"bedeutung :";v$(i,j)
3600 ifv$(i,j)=""thenv$(i,j)="*"
3610 iflen(v$(i,j))>15then3580
3620 next:next
3700 return
4000 fori=1to50
4010 print"{clr}":print:printtab(5)"{rvon} verbessern von vokabeln ! "i"{left}  "
4015 print:print"        ( {rvon}n{rvof}ext  or  {rvon}c{rvof}orrect )
4020 poke214,6:print:printtab(10)v$(i,1)
4030 geta$:ifa$=""then4030
4040 ifa$="n"thennext:return
4050 ifa$&lt;>"c"then4030
4060 poke214,11:print
4070 forj=1to4:printv$(i,j),:input"v: ";v$(i,j)
4080 next:next
4100 return
4300 return
4400 print"{clr}{down}{down}{down}      a little moment, please !"
4450 fork=ito50:forj=1to4:v$(k,j)="*":next:next:return
4500 datar,f,i,a,c,l,h,s,t,c,i,h,g,*
4600 data3,7,9,13,17,19,21,47,41,37
4700 data121,248,160,121,248,160
5000 print"{lblu}{clr}{down}{down}{down}"
5010 print" pressU{SHIFT-*}{SHIFT-*}{SHIFT-*}IU{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}I
5020 fori=1to12
5030 print"      {SHIFT--}   {SHIFT--}{SHIFT--}                      {SHIFT--}
5040 next
5050 print"      J{SHIFT-*}{SHIFT-*}{SHIFT-*}KJ{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}K
5060 poke214,5:print
5070 printtab(8)"y"tab(13)"to start"
5080 printtab(8)"{down}{down}c"tab(13)"to correct"
5090 printtab(8)"{down}{down}s"tab(13)"to save the words"
5100 printtab(8)"{down}{down}l"tab(13)"to load in new words"
5200 return
5500 print"{clr}{down}{down}"
5510 v$="copyright by michael schmidt :"
5520 printtab(4);:fori=1tolen(v$)
5530 printmid$(v$,i,1);:forj=1to100:next:next:print
5535 fori=1to500:next
5540 print"{down}    U{SHIFT-*}{SHIFT-*}{SHIFT-*}I"
5550 print"    {SHIFT--}   {SHIFT--}"
5560 print" UI {SHIFT--} U{SHIFT-*}K                            UI"
5570 print"UKJI{SHIFT--}{$a0}J{SHIFT-*}IUIUIU{SHIFT-*}{SHIFT-*}IU{SHIFT-*}{SHIFT-*}I{CBM-A}{SHIFT-*}IUIUIU{SHIFT-*}{SHIFT-*}IU{SHIFT-*}{SHIFT-*}IUKJI";
5580 print"JIUKJ{SHIFT-*}I{$a0}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}UI{SHIFT--}{SHIFT--}WW{SHIFT--}{SHIFT--}UK{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}UI{SHIFT--}{SHIFT--}U{SHIFT-*}KJIUK";
5590 print" JK U{SHIFT-*}K{$a0}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}U{SHIFT-*}K{SHIFT--}{SHIFT--}{$a0}{SHIFT--}JK{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}{SHIFT--}   JK"
5600 print"    {SHIFT--}{$a0}{$a0}{$a0}{SHIFT--}{SHIFT--}JK{SHIFT--}{SHIFT--}JK{SHIFT--}{SHIFT--}J{SHIFT-*}I{SHIFT--}{SHIFT--}{$a0}JIUK{SHIFT--}JK{SHIFT--}{SHIFT--}J{SHIFT-*}I"
5610 print"    J{SHIFT-*}{SHIFT-*}{SHIFT-*}KJ{SHIFT-*}{SHIFT-*}K{SHIFT--}U{SHIFT-*}KJ{SHIFT-*}{SHIFT-*}KJK  JK J{SHIFT-*}{SHIFT-*}KJ{SHIFT-*}{SHIFT-*}K"
5620 print"             {SHIFT--}{SHIFT--}"
5630 print"             {SHIFT--}{SHIFT--} badische 64'er"
5635 print"             JK"
5640 print" U{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}I
5650 print" {SHIFT--} ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ {SHIFT--}
5660 print" J{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}K"
5670 print"{down}{down}{down}{rght}{rght}{rght}{rght}{rght}*** press any key to start ***"
5680 return
