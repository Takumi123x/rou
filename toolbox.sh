Fullscreen_force(){
UNMARK;TPUT 1 1; $E " "
}

ff=Fullscreen_force

super_info="
______________________
 | |Super image info :
 | |
 | |Super size : $(<~/kitchen-tmp/super.txt)
 | |For logical size : $(<~/kitchen-tmp/main.txt)
 | |System size : $(ls -nl ~/storage/shared/build-kitchen/system.img | awk '{print $5}')
 | |Vendor size : $(ls -nl ~/storage/shared/build-kitchen/vendor.img | awk '{print $5}')
 | |Product size : $(ls -nl ~/storage/shared/build-kitchen/product.img | awk '{print $5}')
 | |System ext size : $(ls -nl ~/storage/shared/build-kitchen/system_ext.img | awk '{print $5}')
 | |Odm size : $(ls -nl ~/storage/shared/build-kitchen/odm.img | awk '{print $5}')
||||||||||||||||||||||"


Case_universal="
______________________
 | |Super image kitchen GUI
 | |By TakuruKagami
 | |
 | |
 | |
 | |
 | |
 | |
 | |
 ||||||||||||||||||||||"

Build_rom (){
if [ -e ~/kitchen-tmp/super_map.txt ]
then
build_now (){
if [ -e ~/storage/shared/build-kitchen/odm.img ]
then
if [ -e ~/storage/shared/build-kitchen/product.img ]
then
echo " "
else
cp -rf ~/rou/fake/product.img ~/storage/shared/build-kitchen/
fi
lpmake --metadata-size 65536 --super-name super --metadata-slots 2 --device super:$(<~/kitchen-tmp/super.txt) --group main:$(<~/kitchen-tmp/main.txt) --partition system:readonly:$(ls -nl ~/storage/shared/build-kitchen/system.img | awk '{print $5}'):main --image system=~/storage/shared/build-kitchen/system.img --partition vendor:readonly:$(ls -nl ~/storage/shared/build-kitchen/vendor.img | awk '{print $5}'):main --image vendor=~/storage/shared/build-kitchen/vendor.img --partition product:readonly:$(ls -nl ~/storage/shared/build-kitchen/product.img | awk '{print $5}'):main --image product=~/storage/shared/build-kitchen/product.img --partition odm:readonly:$(ls -nl ~/storage/shared/build-kitchen/odm.img | awk '{print $5}'):main --image odm=~/storage/shared/build-kitchen/odm.img --sparse --output ~/storage/shared/build-kitchen/super.img
else
if [ -e ~/storage/shared/build-kitchen/system_ext.img ]
then
echo " "
else
cp -rf ~/rou/fake/system_ext.img ~/storage/shared/build-kitchen/
fi
lpmake --metadata-size 65536 --super-name super --metadata-slots 2 --device super:$(<~/kitchen-tmp/super.txt) --group main:$(<~/kitchen-tmp/main.txt) --partition system:readonly:$(ls -nl ~/storage/shared/build-kitchen/system.img | awk '{print $5}'):main --image system=~/storage/shared/build-kitchen/system.img --partition vendor:readonly:$(ls -nl ~/storage/shared/build-kitchen/vendor.img | awk '{print $5}'):main --image vendor=~/storage/shared/build-kitchen/vendor.img --partition product:readonly:$(ls -nl ~/storage/shared/build-kitchen/product.img | awk '{print $5}'):main --image product=~/storage/shared/build-kitchen/product.img --partition system_ext:readonly:$(ls -nl ~/storage/shared/build-kitchen/system_ext.img | awk '{print $5}'):main --image system_ext=~/storage/shared/build-kitchen/system_ext.img --sparse --output ~/storage/shared/build-kitchen/super.img
fi

tar -cvf ~/storage/shared/build-kitchen/super.tar ~/storage/shared/build-kitchen/super.img
}

build_lz4 (){
if [ -e ~/storage/shared/build-kitchen/odm.img ]
then
if [ -e ~/storage/shared/build-kitchen/product.img ]
then
echo " "
else
cp -rf ~/rou/fake/product.img ~/storage/shared/build-kitchen/
fi
lpmake --metadata-size 65536 --super-name super --metadata-slots 2 --device super:$(<~/kitchen-tmp/super.txt) --group main:$(<~/kitchen-tmp/main.txt) --partition system:readonly:$(ls -nl ~/storage/shared/build-kitchen/system.img | awk '{print $5}'):main --image system=~/storage/shared/build-kitchen/system.img --partition vendor:readonly:$(ls -nl ~/storage/shared/build-kitchen/vendor.img | awk '{print $5}'):main --image vendor=~/storage/shared/build-kitchen/vendor.img --partition product:readonly:$(ls -nl ~/storage/shared/build-kitchen/product.img | awk '{print $5}'):main --image product=~/storage/shared/build-kitchen/product.img --partition odm:readonly:$(ls -nl ~/storage/shared/build-kitchen/odm.img | awk '{print $5}'):main --image odm=~/storage/shared/build-kitchen/odm.img --sparse --output ~/storage/shared/build-kitchen/super.img
else
if [ -e ~/storage/shared/build-kitchen/system_ext.img ]
then
echo " "
else
echo ""
cp -rf ~/rou/fake/system_ext.img ~/storage/shared/build-kitchen/
fi
lpmake --metadata-size 65536 --super-name super --metadata-slots 2 --device super:$(<~/kitchen-tmp/super.txt) --group main:$(<~/kitchen-tmp/main.txt) --partition system:readonly:$(ls -nl ~/storage/shared/build-kitchen/system.img | awk '{print $5}'):main --image system=~/storage/shared/build-kitchen/system.img --partition vendor:readonly:$(ls -nl ~/storage/shared/build-kitchen/vendor.img | awk '{print $5}'):main --image vendor=~/storage/shared/build-kitchen/vendor.img --partition product:readonly:$(ls -nl ~/storage/shared/build-kitchen/product.img | awk '{print $5}'):main --image product=~/storage/shared/build-kitchen/product.img --partition system_ext:readonly:$(ls -nl ~/storage/shared/build-kitchen/system_ext.img | awk '{print $5}'):main --image system_ext=~/storage/shared/build-kitchen/system_ext.img --sparse --output ~/storage/shared/build-kitchen/super.img
fi

lz4 ~/storage/shared/build-kitchen/super.img
tar -cvf ~/storage/shared/build-kitchen/super.tar ~/storage/shared/build-kitchen/super.lz4
}

build_xz (){
if [ -e ~/storage/shared/build-kitchen/odm.img ]
then
if [ -e ~/storage/shared/build-kitchen/product.img ]
then
echo " "
else
cp -rf ~/rou/fake/product.img ~/storage/shared/build-kitchen/
fi
lpmake --metadata-size 65536 --super-name super --metadata-slots 2 --device super:$(<~/kitchen-tmp/super.txt) --group main:$(<~/kitchen-tmp/main.txt) --partition system:readonly:$(ls -nl ~/storage/shared/build-kitchen/system.img | awk '{print $5}'):main --image system=~/storage/shared/build-kitchen/system.img --partition vendor:readonly:$(ls -nl ~/storage/shared/build-kitchen/vendor.img | awk '{print $5}'):main --image vendor=~/storage/shared/build-kitchen/vendor.img --partition product:readonly:$(ls -nl ~/storage/shared/build-kitchen/product.img | awk '{print $5}'):main --image product=~/storage/shared/build-kitchen/product.img --partition odm:readonly:$(ls -nl ~/storage/shared/build-kitchen/odm.img | awk '{print $5}'):main --image odm=~/storage/shared/build-kitchen/odm.img --sparse --output ~/storage/shared/build-kitchen/super.img
else
if [ -e ~/storage/shared/build-kitchen/system_ext.img ]
then
echo " "
else
cp -rf ~/rou/fake/system_ext.img ~/storage/shared/build-kitchen/
fi
lpmake --metadata-size 65536 --super-name super --metadata-slots 2 --device super:$(<~/kitchen-tmp/super.txt) --group main:$(<~/kitchen-tmp/main.txt) --partition system:readonly:$(ls -nl ~/storage/shared/build-kitchen/system.img | awk '{print $5}'):main --image system=~/storage/shared/build-kitchen/system.img --partition vendor:readonly:$(ls -nl ~/storage/shared/build-kitchen/vendor.img | awk '{print $5}'):main --image vendor=~/storage/shared/build-kitchen/vendor.img --partition product:readonly:$(ls -nl ~/storage/shared/build-kitchen/product.img | awk '{print $5}'):main --image product=~/storage/shared/build-kitchen/product.img --partition system_ext:readonly:$(ls -nl ~/storage/shared/build-kitchen/system_ext.img | awk '{print $5}'):main --image system_ext=~/storage/shared/build-kitchen/system_ext.img --sparse --output ~/storage/shared/build-kitchen/super.img
fi

tar --xz -cvf ~/storage/shared/build-kitchen/super.tar.xz ~/storage/shared/build-kitchen/super.img
}

 
clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;$e "\ec\e[37;00m\e[J";};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Kitchen Tools Termux GUI Test           ";}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Build                           ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Build with lz4.tar              ";$ff;}
     M2(){ TPUT 20 $MU_X; $e "Build with tar.xz               ";$ff;}
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
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;build_now;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;build_lz4;INIT;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;clear;build_xz;INIT;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;clear;main_main;fi;;
 esac;POS;done
else
a03s_profile (){
fileds=a03s.txt
cp -rf ~/rou/fake/profile/$fileds.txt ~/kitchen-tmp/
mv -rf ~/kitchen-tmp/$fileds.txt ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
Build_rom
}

a01core_profile (){
fileds=a01core.txt
cp -rf ~/rou/fake/profile/$fileds.txt ~/kitchen-tmp/
mv -rf ~/kitchen-tmp/$fileds.txt ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
Build_rom
}

a03_profile (){

}

#custom profile
clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;$e "\ec\e[37;00m\e[J";};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Kitchen Tools Termux GUI Test           ";}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "A03S                            ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "A01 core                        ";$ff;}
     M2(){ TPUT 20 $MU_X; $e "None                            ";$ff;}
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
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;a03s_profile;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;a01core_profile;INIT;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;clear;main_main;INIT;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;clear;main_main;fi;;
 esac;POS;done
fi
}

Extract_rom (){
extract_internal (){
if [ 1 == "$(find ~/storage/shared/build-kitchen/$filesuper -type f ! -size 0 -printf '%S\n' | sed 's/\.[0-9]*//')"]
then
mv -rf ~/storage/shared/build-kitchen/$filesuper ~/storage/shared/build-kitchen/$filesupersp
else
simg2img ~/storage/shared/build-kitchen/$filesuper ~/storage/shared/build-kitchen/$filesupersp
fi
rm -rf ~/storage/shared/build-kitchen/$filesuper
lpdump ~/storage/shared/build-kitchen/$filesupersp > ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
lpunpack ~/storage/shared/build-kitchen/$filesupersp ~/storage/shared/build-kitchen/
}
extract_root (){
if [ "$(id -u)" != "0" ]; then
echo "This script must be run as root" 1>&2
lpdump /dev/block/by-name/super > ~/kitchen-tmp/super_map.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Size:" | awk '{print $2}' > ~/kitchen-tmp/super.txt
printf "$(<~/kitchen-tmp/super_map.txt)" | grep -e "Maximum size:" | awk '{print $3}' | sed '2!d' > ~/kitchen-tmp/main.txt
lpunpack /dev/block/by-name/super ~/storage/shared/build-kitchen/
else
echo "No root permission dude"
fi
}

filesuper=super.img
filesupersp=super_raw.img
 
clear
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;$e "\ec\e[37;00m\e[J";};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Kitchen Tools Termux GUI Test           ";}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Extract from current phone(root)";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Extract from internal           ";$ff;}
     M2(){ TPUT 20 $MU_X; $e "About                           ";$ff;}
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
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;extract_root;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;extract_internal;INIT;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;clear;About_GMSENADIS;INIT;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;clear;main_main;fi;;
 esac;POS;done
}

clear_kitchen (){
rm ~/kitchen-tmp
}

main_main (){
mkdir ~/kitchen-tmp
mkdir ~/storage/shared/build-kitchen
internal_tmp=~/storage/shared/build-kitchen
main_tmp=~/kitchen-tmp
mkdir ~/kitchen-tmp
ln -s ~/storage/shared/build-kitchen ~/
clear
 
clear
MU_X=5
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   MARK(){ $e "\e[7m\e[3$(( $RANDOM * 7 / 32767 + 1 ))m";}
 UNMARK(){ $e "\e[27m";}
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
      R(){ CLEAR ;stty sane;$e "\ec\e[37;00m\e[J";};
   HEAD(){ DRAW
           for each in $(seq 45 25);do
           $E "   x                                          x"
           done
           WRITE;MARK;TPUT 1 1
           $E " ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 47 2
           printf "ENTER - SELECT,NEXT                     ";TPUT  2 2; $e "Kitchen Tools Termux GUI Test           ";}
   FOOT2(){ UNMARK;TPUT 3 45
   printf "$set_info";}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT 16 $MU_X; $e "Extract Super                   ";$ff;}
     M1(){ TPUT 18 $MU_X; $e "Mount partition                 ";$ff;}
     M2(){ TPUT 20 $MU_X; $e "Build ROM                       ";$ff;}
     M3(){ TPUT 22 $MU_X; $e "Clear Temp folder               ";$ff;}
     M4(){ TPUT 24 $MU_X; $e "About                           ";$ff;}
     M5(){ TPUT 26 $MU_X; $e "exit                            ";$ff;}
      LM=5
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
        0) S=M0;SC;if [[ $cur == "" ]];then R;clear;Extract_rom;INIT;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;clear;Mount_rom;INIT;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;clear;Build_rom;INIT;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;clear;clear_kitchen;fi;;
        4) S=M4;SC;if [[ $cur == "" ]];then R;clear;Info_p1;fi;;
        5) S=M5;SC;if [[ $cur == "" ]];then R;clear;exit;fi;;
 esac;POS;done
}

main_main

