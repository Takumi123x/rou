tset=/data/tbm-set

Fullscreen_force(){
UNMARK;TPUT 1 1; $E " "
}

ff=Fullscreen_force
#$e "\ec\e[37;00m\e[J";
#MARK(){ $e "\e[7m\e[3$(( $RANDOM * 6 / 32767 + 1 ))m";}
MARK(){ $e "\e[7m\e[30m";}
MARK2(){ $e "\e[7m\e[37m";}
UNMARK(){ $e "\e[27m";}
BLT(){ $e "\e[7m\e[0;30m";}

Case_universal=" "
Build_done=" "
clear_kitchen=" "
clear2_kitchen=" "
failed_build=" "
Extract_done=" "

Build_rom (){
super_info=" "

if grep -R "Super" ~/kitchen-tmp/super_map.txt
then
failed_build (){
clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Info═══════════════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super image kitchen GUI"
TPUT   7 3; $e "by TakuruKagami"
TPUT   9 3; $e "Build Failed"
TPUT  10 3; $e "- Check storage size"
TPUT  11 3; $e "- Check termux permission"
TPUT  12 3; $e "Maybe other problem make it failed too";
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Back to Build menu              ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Back to Main menu               ";$ff;}
      LM=1
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;set_info=$failed_build;R;HEAD;FOOT2;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;Build_rom;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;main_main;INIT;fi;;
 esac;POS;done
}

build_done (){
clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Info═══════════════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super image kitchen GUI"
TPUT   7 3; $e "by TakuruKagami"
TPUT   9 3; $e "Build Done"
TPUT  11 3; $e "Check result in build-kitchen folder"
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Back to Build menu              ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Back to Main menu               ";$ff;}
      LM=1
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;set_info=$Build_done;R;HEAD;FOOT2;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;Build_rom;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;main_main;INIT;fi;;
 esac;POS;done
}

build_super (){
if [ "$(find $internal_root/system.img -type f ! -size 0 -printf '%S\n' | sed 's/\.[0-9]*//')" == 1 ]
then
echo " "
else
simg2img $internal_root/system.img $internal_root/system.raw.img
fi
if [ -e $internal_root/odm.img ]
then
if [ -e $internal_root/product.img ]
then
echo " "
else
cp -rf ~/rou/fake/product.img $internal_root/
fi
lpmake --metadata-size 65536 --super-name super --metadata-slots 2 --device super:$(<~/kitchen-tmp/super.txt) --group main:$(<~/kitchen-tmp/main.txt) --partition system:readonly:$(ls -nl $internal_root/system.img | awk '{print $5}'):main --image system=$internal_root/system.img --partition vendor:readonly:$(ls -nl $internal_root/vendor.img | awk '{print $5}'):main --image vendor=$internal_root/vendor.img --partition product:readonly:$(ls -nl $internal_root/product.img | awk '{print $5}'):main --image product=$internal_root/product.img --partition odm:readonly:$(ls -nl $internal_root/odm.img | awk '{print $5}'):main --image odm=$internal_root/odm.img --sparse --output super.img
else
if [ -e $internal_root/product.img ]
then
echo " "
else
cp -rf ~/rou/fake/product.img $internal_root/
fi
if [ -e $internal_root/system_ext.img ]
then
echo " "
else
cp -rf ~/rou/fake/system_ext.img $internal_root/
fi
lpmake --metadata-size 65536 --super-name super --metadata-slots 2 --device super:$(<~/kitchen-tmp/super.txt) --group main:$(<~/kitchen-tmp/main.txt) --partition system:readonly:$(ls -nl $internal_root/system.img | awk '{print $5}'):main --image system=$internal_root/system.img --partition vendor:readonly:$(ls -nl $internal_root/vendor.img | awk '{print $5}'):main --image vendor=$internal_root/vendor.img --partition product:readonly:$(ls -nl $internal_root/product.img | awk '{print $5}'):main --image product=$internal_root/product.img --partition system_ext:readonly:$(ls -nl $internal_root/system_ext.img | awk '{print $5}'):main --image system_ext=$internal_root/system_ext.img --sparse --output super.img
fi
}

build_now (){
build_super

tar -cvf $internal_root/super.tar super.img
rm -rf ./super.img

if [ "$(ls -nl $internal_root/super.tar | awk '{print $5}')" -lt 100000 ]
then
failed_build
else
build_done
fi
}

build_only (){
build_super

lz4 -1 -v super.img

if [ "$(ls -nl $internal_root/super.img | awk '{print $5}')" -lt 100000 ]
then
failed_build
else
build_done
fi
}

build_xz (){
build_super

tar --xz -cvf $internal_root/super.tar.xz super.img
rm -rf ./super.img

if [ "$(ls -nl $internal_root/super.tar.xz | awk '{print $5}')" -lt 100000 ]
then
failed_build
else
build_done
fi
}

build_gz (){
build_super

tar -zcvf $internal_root/super.tar.gz super.img
rm -rf ./super.img

if [ "$(ls -nl $internal_root/super.tar.gz | awk '{print $5}')" -lt 100000 ]
then
failed_build
else
build_done
fi
}

build_7z (){
build_super

7z a $internal_root/super.7z $internal_root/super.img
rm -rf ./super.img

if [ "$(ls -nl $internal_root/super.7z | awk '{print $5}')" -lt 100000 ]
then
failed_build
else
build_done
fi
}

super_info=" "

Build_archive (){
clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Info═══════════════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super size : $(if [ -e ~/kitchen-tmp/super.txt ];then echo "$(<~/kitchen-tmp/super.txt)";fi)"
TPUT   7 3; $e "For logical size : $(if [ -e ~/kitchen-tmp/main.txt ];then echo "$(<~/kitchen-tmp/main.txt)";fi)"
TPUT   8 3; $e "System size : $(if [ -e $internal_root/system.img ];then ls -nl $internal_root/system.img | awk '{print $5}';fi)"
TPUT   9 3; $e "Vendor size : $(if [ -e $internal_root/vendor.img ];then ls -nl $internal_root/vendor.img | awk '{print $5}';fi)"
TPUT  10 3; $e "Product size : $(if [ -e $internal_root/product.img ];then ls -nl $internal_root/product.img | awk '{print $5}';fi)"
TPUT  11 3; $e "System ext size : $(if [ -e $internal_root/system_ext.img ];then ls -nl $internal_root/system_ext.img | awk '{print $5}';fi)"
TPUT  12 3; $e "Odm size : $(if [ -e $internal_root/odm.img ];then ls -nl $internal_root/odm.img | awk '{print $5}';fi)";
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Build with tar.gz               ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Build with tar.xz               ";$ff;}
     M2(){ TPUT 20 $MU_X; $e "Build with 7z                   ";$ff;}
     M3(){ TPUT 22 $MU_X; $e "exit                            ";$ff;}
      LM=3
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;set_info=$super_info;R;HEAD;FOOT2;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;build_gz;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;build_xz;INIT;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;clear;build_7z;INIT;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;clear;Build_rom;fi;;
 esac;POS;done
 }

cd $internal_root/
clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Info═══════════════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super size : $(if [ -e ~/kitchen-tmp/super.txt ];then echo "$(<~/kitchen-tmp/super.txt)";fi)"
TPUT   7 3; $e "For logical size : $(if [ -e ~/kitchen-tmp/main.txt ];then echo "$(<~/kitchen-tmp/main.txt)";fi)"
TPUT   8 3; $e "System size : $(if [ -e $internal_root/system.img ];then ls -nl $internal_root/system.img | awk '{print $5}';fi)"
TPUT   9 3; $e "Vendor size : $(if [ -e $internal_root/vendor.img ];then ls -nl $internal_root/vendor.img | awk '{print $5}';fi)"
TPUT  10 3; $e "Product size : $(if [ -e $internal_root/product.img ];then ls -nl $internal_root/product.img | awk '{print $5}';fi)"
TPUT  11 3; $e "System ext size : $(if [ -e $internal_root/system_ext.img ];then ls -nl $internal_root/system_ext.img | awk '{print $5}';fi)"
TPUT  12 3; $e "Odm size : $(if [ -e $internal_root/odm.img ];then ls -nl $internal_root/odm.img | awk '{print $5}';fi)";
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Build                           ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Build IMG Only                  ";$ff;}
     M2(){ TPUT 20 $MU_X; $e "Build tar with extra archive    ";$ff;}
     M3(){ TPUT 22 $MU_X; $e "Back to Main menu               ";$ff;}
      LM=3
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;set_info=$super_info;R;HEAD;FOOT2;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;build_now;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;build_only;INIT;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;clear;Build_archive;INIT;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;clear;main_main;fi;;
 esac;POS;done
else
clear
dirf=~/rou/fake/profile
TPUT  6 1;ls -x $dirf
UNMARK
TPUT  1 1;$e " |Profile| ";
MARK;TPUT 3 1;$e "	______________________
"
TPUT  3 1;$e "| write "exit" for cancel |";
UNMARK
MARK;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select profile from list:";read p;UNMARK;
case $p in
"")
echo "Select in menu or exit"
;;
"exit")
clear
fontceti
;;
*)
cp -rf ~/rou/fake/profile/$p ~/kitchen-tmp/
mv -f ~/kitchen-tmp/$p ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
clear
Build_rom
;;
esac
fi
}

Extract_rom (){
save_profile (){
dirf=~/rou/fake/profile
TPUT  6 1;ls -x $dirf
UNMARK
TPUT  1 1;$e " |Profile| ";
MARK;TPUT 3 1;$e "	______________________
"
TPUT  3 1;$e "| write "exit" for cancel |";
UNMARK
MARK;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select profile from list:";read p;UNMARK;
case $p in
"")
echo "Select in menu or exit"
;;
"exit")
clear
fontceti
;;
*)
cp -rf ~/kitchen-tmp/super_map.txt ~/rou/fake/profile/$p
clear
Build_rom
;;
esac
}

extract_done (){
clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Extract_Done═══════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super size : $(if [ -e ~/kitchen-tmp/super.txt ];then echo "$(<~/kitchen-tmp/super.txt)";fi)"
TPUT   7 3; $e "For logical size : $(if [ -e ~/kitchen-tmp/main.txt ];then echo "$(<~/kitchen-tmp/main.txt)";fi)"
TPUT   8 3; $e "System size : $(if [ -e $internal_root/system.img ];then ls -nl $internal_root/system.img | awk '{print $5}';fi)"
TPUT   9 3; $e "Vendor size : $(if [ -e $internal_root/vendor.img ];then ls -nl $internal_root/vendor.img | awk '{print $5}';fi)"
TPUT  10 3; $e "Product size : $(if [ -e $internal_root/product.img ];then ls -nl $internal_root/product.img | awk '{print $5}';fi)"
TPUT  11 3; $e "System ext size : $(if [ -e $internal_root/system_ext.img ];then ls -nl $internal_root/system_ext.img | awk '{print $5}';fi)"
TPUT  12 3; $e "Odm size : $(if [ -e $internal_root/odm.img ];then ls -nl $internal_root/odm.img | awk '{print $5}';fi)";
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Back to Extract menu              ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Save this profile                 ";$ff;}
      LM=1
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;set_info=$Extract_done;R;HEAD;FOOT2;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;Extract_rom;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;save_profile;INIT;fi;;
 esac;POS;done
}

Extract_browse (){
$e "\ec\e[37;00m\e[J"
Alone_a (){
clear
dirf="$(echo "$(<~/rou/pc_ext.txt)")"
TPUT  6 1;ls -x $dirf
MARK2;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select path from list:";read p;UNMARK;
case $p in
"")
echo "not select anything"
read -p " "
Alone_a
;;
"exit")
clear
Extract_browse
;;
*)
internal_path="$dirf"
if [ -e $internal_path/AP_*.tar.md5 ]
then
cd ~
mkdir $internal_root/AP
7z e $internal_path/AP_*.tar.md5 -o$internal_root/AP
if [ -e $internal_root/AP/super.img.lz4 ]
then
mv -f $internal_root/AP/super.img.lz4 $internal_root/
else
mv -f $internal_root/AP/super.img $internal_root/
fi
rm -rf $internal_root/AP/
extract_internal
else
if [ -e $internal_path/AP_*.tar ]
then
cd ~
mkdir $internal_root/AP
7z e $internal_path/AP_*.tar -o$internal_root/AP
if [ -e $internal_root/AP/super.img.lz4 ]
then
mv -f $internal_root/AP/super.img.lz4 $internal_root/
else
mv -f $internal_root/AP/super.img $internal_root/
fi
rm -rf $internal_root/AP/
extract_internal
else
if [ -e $dirf/$p ]
then
echo "$dirf/$p" > ~/rou/pc_ext.txt
Alone_b
else
Alone_a
fi
fi
fi
;;
esac
}

Alone_b (){
clear
dirf="$(echo "$(<~/rou/pc_ext.txt)")"
TPUT  6 1;ls -x $dirf
MARK2;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select path from list:";read p;UNMARK;
case $p in
"")
echo "not select anything"
read -p " "
Alone_b
;;
"exit")
clear
Extract_browse
;;
*)
internal_path="$dirf"
if [ -e $internal_path/AP_*.tar.md5 ]
then
cd ~
mkdir $internal_root/AP
7z e $internal_path/AP_*.tar.md5 -o$internal_root/AP
if [ -e $internal_root/AP/super.img.lz4 ]
then
mv -f $internal_root/AP/super.img.lz4 $internal_root/
else
mv -f $internal_root/AP/super.img $internal_root/
fi
rm -rf $internal_root/AP/
extract_internal
else
if [ -e $internal_path/AP_*.tar ]
then
cd ~
mkdir $internal_root/AP
7z e $internal_path/AP_*.tar -o$internal_root/AP
if [ -e $internal_root/AP/super.img.lz4 ]
then
mv -f $internal_root/AP/super.img.lz4 $internal_root/
else
mv -f $internal_root/AP/super.img $internal_root/
fi
rm -rf $internal_root/AP/
extract_internal
else
if [ -e $dirf/$p ]
then
echo "$dirf/$p" > ~/rou/pc_ext.txt
Alone_a
else
Alone_b
fi
fi
fi
;;
esac
}

clear
if [ "$(getprop ro.product.cpu.abi)" == "armeabi-v7a" ]
then
dirf="/storage/emulated/0/"
else
if [ "$(getprop ro.product.cpu.abi)" == "arm64-v8a" ]
then
dirf="/storage/emulated/0/"
else
if [ "$(dpkg --print-architecture)" == "amd64" ]
then
dirf="/mnt"
fi
fi
fi
clear
TPUT  6 1;ls -x $dirf
MARK2;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select path from list:";read p;UNMARK;
case $p in
"")
echo "not select anything"
read -p " "
Extract_browse
;;
"exit")
clear
Extract_rom
;;
*)
internal_path="$dirf"
if [ -e $internal_path/AP_*.tar.md5 ]
then
cd ~
mkdir $internal_root/AP
7z e $internal_path/AP_*.tar.md5 -o$internal_root/AP
if [ -e $internal_root/AP/super.img.lz4 ]
then
mv -f $internal_root/AP/super.img.lz4 $internal_root/
else
mv -f $internal_root/AP/super.img $internal_root/
fi
rm -rf $internal_root/AP/
extract_internal
else
if [ -e $internal_path/AP_*.tar ]
then
cd ~
mkdir $internal_root/AP
7z e $internal_path/AP_*.tar -o$internal_root/AP
if [ -e $internal_root/AP/super.img.lz4 ]
then
mv -f $internal_root/AP/super.img.lz4 $internal_root/
else
mv -f $internal_root/AP/super.img $internal_root/
fi
rm -rf $internal_root/AP/
extract_internal
else
if [ -e $dirf/$p ]
then
echo "$dirf/$p" > ~/rou/pc_ext.txt
Alone_a
else
Alone_b
fi
fi
fi
;;
esac
}


extract_internal (){
if [ -e $internal_root/AP_*.tar.md5 ]
then
cd ~
mkdir $internal_root/AP
7z e $internal_root/AP_*.tar.md5 -o$internal_root/AP
if [ -e $internal_root/AP/super.img.lz4 ]
then
mv -f $internal_root/AP/super.img.lz4 $internal_root/
else
mv -f $internal_root/AP/super.img $internal_root/
fi
else
if [ -e $internal_root/AP_*.tar ]
then
cd ~
mkdir $internal_root/AP
7z e $internal_root/AP_*.tar -o$internal_root/AP
if [ -e $internal_root/AP/super.img.lz4 ]
then
mv -f $internal_root/AP/super.img.lz4 $internal_root/
else
mv -f $internal_root/AP/super.img $internal_root/
fi
else
echo " "
fi
fi
rm -rf $internal_root/AP/
if [ -e $internal_root/super.img.lz4 ]
then
unlz4 --rm $internal_root/super.img.lz4
else
echo " "
fi
simg2img $internal_root/super.img $internal_root/super_raw.img
if [ "$(ls -nl $internal_root/super_raw.img | awk '{print $5}')" -lt 100000 ]
then
if [ -e ~/rou/only_mode.txt ]
then
rm -rf $internal_root/super_raw.img 
lpdump $internal_root/super.img > ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
lpunpack -p vendor $internal_root/super.img $internal_root/
lpunpack -p odm $internal_root/super.img $internal_root/
lpunpack -p system_ext $internal_root/super.img $internal_root/
else
rm -rf $internal_root/super_raw.img 
lpdump $internal_root/super.img > ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
lpunpack $internal_root/super.img $internal_root/
fi
else
if [ -e ~/rou/only_mode.txt ]
then
rm -rf $internal_root/super.img
lpdump $internal_root/super_raw.img > ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
lpunpack -p vendor $internal_root/super_raw.img $internal_root/
lpunpack -p odm $internal_root/super_raw.img $internal_root/
else
rm -rf $internal_root/super.img
lpdump $internal_root/super_raw.img > ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
lpunpack $internal_root/super_raw.img $internal_root/
fi
fi
extract_done
}

extract_root (){
if [ "$(id -u)" != "0" ]; then
echo "This script must be run as root" 1>&2
else
if [ -e ~/rou/only_mode.txt ]
then
lpdump /dev/block/by-name/super > ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
dd if=/dev/block/mapper/vendor of=$internal_root/vendor.img
dd if=/dev/block/mapper/odm of=$internal_root/odm.img
dd if=/dev/block/mapper/system_ext of=$internal_root/system_ext.img
else
lpdump /dev/block/by-name/super > ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
lpunpack /dev/block/by-name/super $internal_root/
fi
fi
extract_done
}

super_info=" "

clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Info═══════════════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super size : $(if [ -e ~/kitchen-tmp/super.txt ];then echo "$(<~/kitchen-tmp/super.txt)";fi)"
TPUT   7 3; $e "For logical size : $(if [ -e ~/kitchen-tmp/main.txt ];then echo "$(<~/kitchen-tmp/main.txt)";fi)"
TPUT   8 3; $e "System size : $(if [ -e $internal_root/system.img ];then ls -nl $internal_root/system.img | awk '{print $5}';fi)"
TPUT   9 3; $e "Vendor size : $(if [ -e $internal_root/vendor.img ];then ls -nl $internal_root/vendor.img | awk '{print $5}';fi)"
TPUT  10 3; $e "Product size : $(if [ -e $internal_root/product.img ];then ls -nl $internal_root/product.img | awk '{print $5}';fi)"
TPUT  11 3; $e "System ext size : $(if [ -e $internal_root/system_ext.img ];then ls -nl $internal_root/system_ext.img | awk '{print $5}';fi)"
TPUT  12 3; $e "Odm size : $(if [ -e $internal_root/odm.img ];then ls -nl $internal_root/odm.img | awk '{print $5}';fi)";
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Extract from current phone(root)";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Extract from folder build       ";$ff;}
     M2(){ TPUT 20 $MU_X; $e "Extract with browse(AP only)   ";$ff;}
     M3(){ TPUT 22 $MU_X; $e "Back to Main menu               ";$ff;}
      LM=3 
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;set_info=$super_info;R;HEAD;FOOT2;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;extract_root;Extract_rom;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;extract_internal;Extract_rom;INIT;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;clear;Extract_browse;Extract_rom;INIT;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;clear;main_main;fi;;
 esac;POS;done
}

clear_kitchen (){
Build_remove (){
rm -rf ~/build-kitchen/*

clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Info═══════════════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super image kitchen GUI"
TPUT   7 3; $e "by TakuruKagami"
TPUT   9 3; $e "$(if [ -e $internal_root/vendor.img ];then echo "Faild remove";else echo "Files removed";fi)";
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 18 $MU_X; $e "Back to Main menu               ";$ff;}
      LM=0
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;set_info=$clear2_kitchen;R;HEAD;FOOT2;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M1;SC;if [[ $cur == "" ]];then R;clear;clear_kitchen;INIT;fi;;
 esac;POS;done
 }

profile_remove (){
rm -rf ~/kitchen-tmp

clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Info═══════════════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super image kitchen GUI"
TPUT   7 3; $e "by TakuruKagami"
TPUT   9 3; $e "$(if [ -e ~/kitchen-tmp/super.txt ];then echo "Faild remove";else echo "Profile removed";fi)";
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Delete folder build-kitchen    ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Back to Main menu               ";$ff;}
      LM=1
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;set_info=$clear_kitchen;R;HEAD;FOOT2;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;Build_remove;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;clear_kitchen;INIT;fi;;
 esac;POS;done
}
 
Change_path (){
$e "\ec\e[37;00m\e[J"
if [ "$(getprop ro.product.cpu.abi)" == "armeabi-v7a" ]
then
clear
dirf="/storage/emulated/0/"
TPUT  6 1;ls -x $dirf
MARK2;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select path from list:";read p;UNMARK;
case $p in
"")
echo "not select anything"
read -p " "
Change_path
;;
"exit")
clear
clear_kitchen
;;
*)
if [ -e $dirf/$p ]
then
echo "$dirf/$p" > ~/rou/pc.txt
internal_root="$(echo "$(<~/rou/pc.txt)")"
echo "binary installed" > ~/rou/complete.txt
else
main_main
fi
;;
esac
else
if [ "$(getprop ro.product.cpu.abi)" == "arm64-v8a" ]
then
clear
dirf="/storage/emulated/0/"
TPUT  6 1;ls -x $dirf
MARK2;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select path from list:";read p;UNMARK;
case $p in
"")
echo "not select anything"
read -p " "
Change_path
;;
"exit")
clear
clear_kitchen
;;
*)
if [ -e $dirf/$p ]
then
echo "$dirf/$p" > ~/rou/pc.txt
internal_root="$(echo "$(<~/rou/pc.txt)")"
echo "binary installed" > ~/rou/complete.txt
else
main_main
fi
;;
esac
else
clear
dirf=/mnt
TPUT  6 1;ls -x $dirf
UNMARK
TPUT  1 1;$e " |Drive| ";
MARK2;TPUT 3 1;$e "	______________________
"
TPUT  3 1;$e "| write "exit" for cancel |";
UNMARK
MARK2;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select drive from list:";read p;UNMARK;
case $p in
"")
echo "not select anything"
read -p " "
Change_path
;;
"exit")
clear
clear_kitchen
;;
*)
if [ -e $dirf/$p ]
then
echo "$dirf/$p" > ~/rou/temp_pc.txt
clear
dirf="$(echo "$(<~/rou/temp_pc.txt)")"
TPUT  6 1;ls -x $dirf
UNMARK
TPUT  1 1;$e " |Custom Path| ";
MARK2;TPUT 3 1;$e "	______________________
"
TPUT  3 1;$e "| write "exit" for cancel |";
UNMARK
MARK2;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select Path from list:";read p;UNMARK;
case $p in
"")
echo "not select anything"
read -p " "
Change_path
;;
"exit")
clear
clear_kitchen
;;
*)
if [ -e $dirf/$p ]
then
echo "$dirf/$p" > ~/rou/pc.txt
internal_root="$(echo "$(<~/rou/pc.txt)")"
echo "binary installed" > ~/rou/complete.txt
else
main_main
fi
;;
esac
echo "binary installed" > ~/rou/complete.txt
else
main_main
fi
;;
esac
fi
fi
}

switch_unpack (){
if [ -e ~/rou/only_mode.txt ]
then
rm -rf ~/rou/only_mode.txt
else
echo " " > ~/rou/only_mode.txt
fi
}

clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Options════════════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super image kitchen GUI"
TPUT   7 3; $e "by TakuruKagami"
TPUT   9 3; $e "Profile :$(if [ -e ~/kitchen-tmp/super.txt ];then echo "Exist";else echo "No";fi)"
TPUT  10 3; $e "Extract odm vendor only :$(if [ -e ~/rou/only_mode.txt ];then echo "Yes";else echo "No";fi)"
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Clear Profile                   ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Odm vendor only                 ";$ff;}
     M2(){ TPUT 20 $MU_X; $e "Change Path                     ";$ff;}
     M3(){ TPUT 22 $MU_X; $e "Back to Main menu               ";$ff;}
      LM=3
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;set_info=$Case_universal;R;HEAD;FOOT2;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;profile_remove;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;switch_unpack;INIT;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;clear;Change_path;INIT;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;clear;main_main;INIT;fi;;
 esac;POS;done
}

main_main(){
clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;printf %b '\e[46m' '\e[8]' '\e[H\e[J';};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                      ";TPUT  2 2; $e "Super Kitchen Tools Termux GUI           ";UNMARK;MARK2;
TPUT   5 2; $e "╔Tool═══════════════════════════════════╗"
TPUT   6 2; $e "║                                       ║";
TPUT   7 2; $e "║                                       ║";
TPUT   8 2; $e "║                                       ║";
TPUT   9 2; $e "║                                       ║";
TPUT  10 2; $e "║                                       ║";
TPUT  11 2; $e "║                                       ║";
TPUT  12 2; $e "║                                       ║";
TPUT  13 2; $e "╚═══════════════════════════════════════╝";
TPUT   6 3; $e "Super image kitchen GUI"
TPUT   7 3; $e "by TakuruKagami"
MARK;TPUT  14 3; $e "                                         ";TPUT  13 43; $e " ";TPUT  12 43; $e " ";TPUT  11 43; $e " ";TPUT  10 43; $e " ";TPUT  9 43; $e " ";TPUT  8 43; $e " ";TPUT  7 43; $e " ";TPUT  6 43; $e " ";UNMARK;}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
   
if [ -e ~/rou/complete.txt ]
then
if [ "$(getprop ro.product.cpu.abi)" == "armeabi-v7a" ]
then
internal_root="$(echo "$(<~/rou/pc.txt)")"
else
if [ "$(getprop ro.product.cpu.abi)" == "arm64-v8a" ]
then
internal_root="$(echo "$(<~/rou/pc.txt)")"
else
if [ "$(dpkg --print-architecture)" == "amd64" ]
then
internal_root="$(echo "$(<~/rou/pc.txt)")"
else
echo "False"
main_main
fi
fi
fi
else
if [ "$(getprop ro.product.cpu.abi)" == "armeabi-v7a" ]
then
dpkg -i ~/rou/deb/arm32/android-tools.deb
dpkg -i ~/rou/deb/arm32/abseil-cpp.deb
dpkg -i ~/rou/deb/arm32/brotli.deb
dpkg -i ~/rou/deb/arm32/liblz4.deb
dpkg -i ~/rou/deb/arm32/libprotobuff.deb
dpkg -i ~/rou/deb/arm32/lz4.deb
dpkg -i ~/rou/deb/arm32/libusb.deb
dpkg -i ~/rou/deb/arm32/zstd.deb
dpkg -i ~/rou/deb/arm32/p7zip.deb
echo "/storage/emulated/0/build-kitchen" > ~/rou/pc.txt
internal_root="$(echo "$(<~/rou/pc.txt)")"
echo "binary installed" > ~/rou/complete.txt
termux-setup-storage
else
if [ "$(getprop ro.product.cpu.abi)" == "arm64-v8a" ]
then
dpkg -i ~/rou/deb/arm64/android-tools.deb
dpkg -i ~/rou/deb/arm64/abseil-cpp.deb
dpkg -i ~/rou/deb/arm64/brotli.deb
dpkg -i ~/rou/deb/arm64/liblz4.deb
dpkg -i ~/rou/deb/arm64/libprotobuff.deb
dpkg -i ~/rou/deb/arm64/lz4.deb
dpkg -i ~/rou/deb/arm64/libusb.deb
dpkg -i ~/rou/deb/arm64/zstd.deb
dpkg -i ~/rou/deb/arm64/p7zip.deb
echo "/storage/emulated/0/build-kitchen" > ~/rou/pc.txt
internal_root="$(echo "$(<~/rou/pc.txt)")"
echo "binary installed" > ~/rou/complete.txt
termux-setup-storage
else
if [ "$(dpkg --print-architecture)" == "amd64" ]
then
cp -f ~/rou/deb/PC/* /bin
clear
if [ -n "$(ls -A /mnt 2>/dev/null)" ]
then
dirf=/mnt
else
dirf=/home
fi
TPUT  6 1;ls -x $dirf
UNMARK
TPUT  1 1;$e " |Drive| ";
MARK2;TPUT 3 1;$e "	______________________
"
TPUT  3 1;$e "| write "exit" for cancel |";
UNMARK
MARK2;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select drive from list:";read p;UNMARK;
case $p in
"")
echo "not select anything"
read -p " "
main_main
;;
"exit")
clear
exit
;;
*)
if [ -e $dirf/$p ]
then
echo "$dirf/$p/build-kitchen" > ~/rou/pc.txt
internal_root="$(echo "$(<~/rou/pc.txt)")"
chmod +x ~/rou/deb/PC/*
cp ~/rou/deb/PC/* /bin
chmod +x /bin/lpmake
chmod +x /bin/lpunpack
chmod +x /bin/lpadd
chmod +x /bin/lpdump
apt install android-sdk-libsparse-utils
sudo apt-get update --fix-missing
sudo apt-get install --fix-missing
apt install android-sdk-libsparse-utils
apt install p7zip-full
apt install lz4
echo "binary installed" > ~/rou/complete.txt
else
echo "False"
main_main
fi
;;
esac
else
if [ -n "$(ls -A /mnt 2>/dev/null)" ]
then
dirf=/mnt
else
dirf=/home
fi
clear
TPUT  6 1;ls -x $dirf
UNMARK
TPUT  1 1;$e " |Drive| ";
MARK2;TPUT 3 1;$e "	______________________
"
TPUT  3 1;$e "| write "exit" for cancel |";
UNMARK
MARK2;TPUT 47 1;$e "	                        ";TPUT 47 1;$e "Select drive from list:";read p;UNMARK;
case $p in
"")
echo "not select anything"
read -p " "
main_main
;;
"exit")
clear
exit
;;
*)
if [ -e $dirf/$p ]
then
echo "$dirf/$p" > ~/rou/pc.txt
internal_root="$(echo "$(<~/rou/pc.txt)")"
chmod +x ~/rou/deb/PC/*
cp ~/rou/deb/PC/* /bin
chmod +x /bin/lpmake
chmod +x /bin/lpunpack
chmod +x /bin/lpadd
chmod +x /bin/lpdump
apt install android-sdk-libsparse-utils
sudo apt-get update --fix-missing
sudo apt-get install --fix-missing
apt install android-sdk-libsparse-utils
echo "binary installed" > ~/rou/complete.txt
else
main_main
fi
;;
esac
fi
fi
fi
echo " " > ~/rou/only_mode.txt
fi

cd ~/
mkdir ~/kitchen-tmp
mkdir $internal_root
internal_tmp=$internal_root
main_tmp=~/kitchen-tmp
mkdir ~/kitchen-tmp
ln -s $internal_root ~/
ln -s ~/rou/toolbox.sh ~/
ln -s ~/rou/toolbox.sh /bin
ln -s ~/rou/toolbox.sh /data/data/com.termux/files/usr/bin
clear
super_info=" "
clear
MU_X=5

#Device info

  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Extract Super                   ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Build ROM                       ";$ff;}
     M2(){ TPUT 20 $MU_X; $e "Options                         ";$ff;}
     M3(){ TPUT 22 $MU_X; $e "Exit                            ";$ff;}
      LM=3
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ clear;R;HEAD;FOOT2;FOOT;UNMARK;TPUT  3 2; $e "$internal_root";MARK;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
   ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;Extract_rom;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;Build_rom;INIT;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;clear;clear_kitchen;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;clear;$e "\ec\e[37;00m\e[J";exit;fi;;
 esac;POS;done
}


main_main

