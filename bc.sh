!/bin/bash
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
ylo='\033[1;33m'                                                
blue='\033[1;34m'
cyan='\033[1;36m' 
pink='\033[1;35m'
#-----------------
clear
termux-setup-storage
echo
echo -e "\e[91m ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤\e[0m";
echo""
echo -e "  $red"¤" $red[1] Backup Termux Data      $red"¤" $rset"   
echo -e "  $red"¤" $blue[2] Restore Termux Data     $red"¤" $rest" 
echo -e "  $red"¤"$ylo [3] Update Script $red          "¤" $rset"
echo -e "  $red"¤ "$cyan[4] Restore Termux Tools $red   "¤" $rest"
echo -e "  $red"¤ "$pink[5] Back up Termux Tools $red   "¤" $rset"
echo -e "  $red"¤"$grn [6] Exit               $red     "¤" $rset"
echo""
echo -e "\e[91m ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤\e[0m";
echo""
read -p'enter numbar :-' userinput1;

if [ "${userinput1:-}" = "1" ]
then
cd $HOME
cd /data/data/com.termux/files
tar -cvzf /sdcard/T-Back-up.tgz home usr
fi

if [ "${userinput1:-}" = "2" ]
then
cd $HOME
cd /data/data/com.termux/files
tar -xvzf /sdcard/T-back-up.tgz
fi

if [ "${userinput1:-}" = "3" ]
then
cd $HOME
rm -rf Back-up
fi

if [ "${userinput1:-}" = "6" ]
then
cd $HOME
exit
fi

if [ "${userinput1:-}" = "5" ]
then
cd $HOME
cd backuo
bash Readme
fi

if [ "${userinput1:-}" = "4" ]
then
cd $HOME
cd ..
cd /sdcard
cp T-backup $HOME
cd
cd T-backup
fi
