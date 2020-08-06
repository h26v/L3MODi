bl='\e[1;34m' 
wht='\e[1;37m'
re='\e[1;31m'
grn='\e[1;32m'
del='\e[0m'
ylw='\e[1;33m'
mgt='\e[1;35m'
cyn='\e[1;36m'
ver='v1.0'

function language(){	
	clear
	figlet -f pagga " L3MODi " | lolcat
	echo -e "${wht}------[ BinIT™ - ${ver} ]-----"	
	echo -e "Choose a language to continued " | lolcat
	echo -e " ${grn}[1]${re} VN "
	echo -e " ${grn}[2]${re} EN " 
	echo -ne " ${bl}[${re}L3MODi${bl}]${wht}==> "
	read inslag
		case "$inslag" in
		"1") vn
		;;
		"2") en
		;;
			*)
			echo -ne " ${re}[!]${wht} Invalid Input "
			read 
			language
		;;
		esac
}

function vn(){
	chmod +x vn_package.sh
	./vn_package.sh
} 

function en(){
	chmod +x en_package.sh
	./en_package.sh
}
language







