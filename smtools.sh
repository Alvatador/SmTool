#!/bin/bash

########################
# Script By Alvatador  #
########################

# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
echo -e "\n"
echo -e "[${blink}${yellow}*${tp}]$red Thanks ${blue}For Using ${red}SmTools $cyan:)$tp"
exit 0
}

# spinner
spinlong ()
{
    bar=" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
    echo -e "[${green}OK${tp}]"
}


#lol
if [[ $(command -v lolcat) = "" ]] ; then
    apt install -y lolcat   &> /dev/null
fi

# Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
tp="\e[0m"
black="\033[0;30m"

if [[ $USER = "root" ]] ; then
    echo "ok" &> /dev/null
else
    echo -e "$red sudo bash smtools.sh${tp}.!"
    exit 1
fi

# random banner
function banner {
    randomnumb=$((1 + RANDOM % 4))
    if [[ $randomnumb = "1" ]] ; then
        cat banners/banner1 
    elif [[ $randomnumb = "2" ]] ; then
        cat banners/banner2 
    elif [[ $randomnumb = "3" ]] ; then
        cat banners/banner3    
    elif [[ $randomnumb = "4" ]] ; then
        cat banners/banner4  
    fi
}

#InterFace
banner | lolcat
echo ""
echo -e "\t $yellow 1-)$white Phishing Tools"
echo ""
echo -e "\t $yellow 2-)$white Password Attack Tools"
echo ""
echo -e "\t $yellow 3-)$white Osint Tools"
echo ""
echo -e "\n"
echo -ne "${red}Sm${white}💀${green}Tools]➢ "   
read n



#Phishing Tool Interface
if [[ $n = "1" ]] ; then
clear  
echo -e "$red Starting Phishing Tools"
sleep 1 
clear
banner | lolcat
echo ""
echo -e "   $yellow[1]${blue} ✔$white SocialPhish \t \t $yellow[4]${blue} ✔$white AdvPhishing"
echo -e "   $yellow[2]${blue} ✔$white Zphisher \t \t $yellow[5]${blue} ✔$white ShellPhish"
echo -e "   $yellow[3]${blue} ✔$white NexPhisher"
echo -e "\n \n \n"
echo -ne "${red}Sm${white}💀${green}Tools]➢ "   
read p
fi




#Password Attack Interface
if [[ $n = "2" ]] ; then
clear  
echo -e "$red Starting Password Attack Tools"
sleep 1 
clear
banner | lolcat
echo ""
echo -e "   $yellow[1]${blue} ✔$white Instashell \t \t $yellow[4]${blue} ✔$white Facebook-BruteForce"
echo -e "   $yellow[2]${blue} ✔$white hack-gmail"
echo -e "   $yellow[3]${blue} ✔$white Cupp"
echo -e "\n \n \n"
echo -ne "${red}Sm${white}💀${green}Tools]➢ "
read ps
fi


#Osint Tools Interface
if [[ $n = "3" ]] ; then
clear  
echo -e "$red Starting Osint Tools"
sleep 1 
clear
banner | lolcat
echo ""
echo -e "   $yellow[1]${blue} ✔$white OSIF"
echo -e "   $yellow[2]${blue} ✔$white UserRecon" 
echo -e "   $yellow[3]${blue} ✔$white inshackle"
echo -e "\n \n \n"
echo -ne "${red}Sm${white}💀${green}Tools]➢ "
read psz
fi



#Start Tools Option

#Phishing Tools Startup
if [[ $p = "1" ]] ; then 
   if [[ -d SocialPhish ]] ; then 
    echo -e "$red Starting SocialPhish"
        sleep 1
        clear
        cd SocialPhish
        ./socialphish.sh
    cd ..
else 
    echo -e "$red Downloading SocialPhish"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/xHak9x/SocialPhish &> /dev/null
    spinlong
    clear
    cd SocialPhish
    chmod +x socialphish.sh
    ./socialphish.sh
    cd .. 
   fi   
   fi

if [[ $p = "2" ]] ; then 
   if [[ -d zphisher ]] ; then 
    echo -e "$red Starting Zphisher"
    sleep 1
    clear
    cd zphisher
    bash zphisher.sh
    cd ..
else 
    echo -e "$red Downloading Zphisher"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/htr-tech/zphisher &> /dev/null
    spinlong
    clear
    cd zphisher
    chmod +x zphisher.sh
    bash zphisher.sh
    cd .. 
   fi   
   fi   

if [[ $p = "3" ]] ; then 
   if [[ -d nexphisher ]] ; then 
    echo -e "$red Starting NexPhisher"
    sleep 1
    clear
    cd nexphisher
    bash nexphisher
    cd ..
else 
    echo -e "$red Downloading NexPhisher"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/htr-tech/nexphisher &> /dev/null
    spinlong
    clear
    cd nexphisher
    bash setup
    bash nexphisher
    cd .. 
   fi   
   fi      


   if [[ $p = "4" ]] ; then 
   if [[ -d AdvPhishing ]] ; then 
    echo -e "$red Starting AdvPhishing"
    sleep 1
    clear
    cd AdvPhishing
    bash AdvPhishing.sh
    cd ..
else 
    echo -e "$red Downloading AdvPhishing"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/Ignitetch/AdvPhishing &> /dev/null
    spinlong
    clear
    cd AdvPhishing
    bash Linux-Setup.sh
    bash AdvPhishing.sh
    cd .. 
   fi   
   fi

if [[ $p = "5" ]] ; then 
   if [[ -d ShellPhish ]] ; then 
    echo -e "$red Starting ShellPhish"
    sleep 1
    clear
    cd ShellPhish
    bash shellphish.sh
    cd ..
else 
    echo -e "$red Downloading ShellPhish"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/AbirHasan2005/ShellPhish &> /dev/null
    spinlong
    clear
    cd ShellPhish
    bash update.sh
    bash shellphish.sh
    cd .. 
   fi   
   fi      

#Password Attack Tools Startup
if [[ $ps = "1" ]] ; then 
   if [[ -d instashell ]] ; then 
    echo -e "$red Starting instashell"
    sleep 1
    clear
    cd instashell
    service tor start
    ./instashell.sh
    cd ..
else 
    echo -e "$red Downloading instashell"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/maxrooted/instashell &> /dev/null
    spinlong
    clear
    cd instashell
    chmod +x install.sh
    ./install.sh
    chmod +x instashell.sh
    service tor start
    ./instashell.sh
    cd .. 
   fi   
   fi  

  

 if [[ $ps = "2" ]] ; then 
   if [[ -d Cupp ]] ; then 
    echo -e "$red Starting Cupp"
    sleep 1
    clear
    cd cupp
    python3 cupp.py -i
    cd ..
else 
    echo -e "$red Downloading Cupp"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/Mebus/cupp &> /dev/null
    spinlong
    clear
    cd cupp
    python3 cupp.py -i
    cd .. 
   fi   
   fi 

 if [[ $ps = "3" ]] ; then 
   if [[ -d Facebook-BruteForce ]] ; then 
    echo -e "$red Starting Facebook-BruteForce"
    sleep 1
    clear
    cd Facebook-BruteForce
    python3 fb.py 
    cd ..
else 
    echo -e "$red Downloading Facebook-BruteForce"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/IAmBlackHacker/Facebook-BruteForce &> /dev/null
    spinlong
    clear
    cd Facebook-BruteForce
    python3 fb.py 
    cd .. 
   fi   
   fi

#Osint Tools Startup

 if [[ $psz = "1" ]] ; then 
   if [[ -d OSIF ]] ; then 
    echo -e "$red Starting OSIF"
    sleep 1
    clear
    cd OSIF
    python2 osif.py 
    cd ..
else 
    echo -e "$red Downloading OSIF"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/CiKu370/OSIF &> /dev/null
    spinlong
    clear
    cd OSIF
    pkg update upgrade
    pkg install git python2
    pip2 install -r requirements.txt
    python2 osif.py
    cd .. 
   fi   
   fi

 if [[ $psz = "2" ]] ; then 
   if [[ -d userrecon ]] ; then 
    echo -e "$red Starting userrecon"
    sleep 1
    clear
    cd userrecon
    bash userrecon.sh
    cd ..
else 
    echo -e "$red Downloading userrecon"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/issamelferkh/userrecon &> /dev/null
    spinlong
    clear
    cd userrecon
    bash userrecon.sh
    cd .. 
   fi   
   fi

 
   if [[ $ps = "3" ]] ; then 
   if [[ -d inshackle ]] ; then 
    echo -e "$red Starting inshackle"
    sleep 1
    clear
    cd inshackle
    bash inshackle.sh
    cd ..
else 
    echo -e "$red Downloading inshackle"
    sleep 1
    clear 
    echo -e "$red Wait!"
    git clone https://github.com/nandy121/inshackle &> /dev/null
    spinlong
    clear
    cd inshackle
    bash inshackle.sh
    cd .. 
   fi   
   fi                   