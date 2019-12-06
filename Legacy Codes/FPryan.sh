utama(){
	loop=1;
jumlah=0;
tiket=0;
total=0;
Jenis_Jen1=0;
Jenis_Jen2=0;
jenis_Jen3=0;



declare -a jum 
declare -a jen1
declare -a jen2
declare -a jen3

function input_Data(){
	echo "=========DATA==========";
	echo "Masukkan nama :";
	read nama;
	echo "Masukkan alamat :";
	read alamat;
	echo "Masukkan nomor tlp :";
	read nomor;
	echo "=======================";
}

function input_harga(){
	clear;
	echo "=========CONSOLE & HARGA=========="
	echo "1.PlayStation 4 = 4.500.000 ";
	echo "2.Xbox one x = 6.700.000 ";
	echo "3.Nintendo Switch = 3.500.000 ";
	echo "4.PlayStation 4 pro = 7.000.000 ";
	echo "5.Xbox one = 5.500.000 ";
	echo "==================================";
	read -p "Pilihan console anda : " pil;

	if [[ $pil -eq 1 ]]; then tiket="4.500.000";
		co="PlayStation 4"
		echo "banyak barang :"
		read Jum;
	let total=Jum*4500000;
	echo "$total";
	elif [[ $pil -eq 2 ]]; then tiket="6.700.000";
		co="Xbox one x"
		echo "banyak barang :"
		read Jum;
	let total=Jum*6700000;
	echo "$total";
	elif [[ $pil -eq 3 ]]; then tiket="3.500.000";
		co="Nintendo switch"
		echo "banyak barang :"
		read Jum;
	let total=Jum*3500000;
	echo "$total";
elif [[ $pil -eq 4 ]]; then tiket="7.000.000";
		co="PlayStation 4 pro"
		echo "banyak barang :"
		read Jum;
	let total=Jum*7000000;
	echo "$total";
elif [[ $pil -eq 5 ]]; then tiket="5.500.000";
		co="Xbox one"
		echo "banyak barang :"
		read Jum;
	let total=Jum*5500000;
	echo "$total";
else
	echo " ";
	echo "MAAF TIDAK TERSEDIA!!!";
	echo " ";	

fi
}
function lihat_Harga(){
		echo "======CEK DATA======="
		echo "nama : $nama ";
		echo "alamat : $alamat";
		echo "nomor tlp : $nomor";
		echo "console : $co";
		echo "banyak barang : $Jum";
		echo "total harga : $total";
		echo "=====================";
}
function Cetak(){

	echo "=======CETAK NOTA========";
	echo "nama : $nama ";
	echo "alamat : $alamat";
	echo "nomor tlp : $nomor";
	echo "console : $co";
	echo "banyak barang : $Jum";
	echo "total harga : $total";
	echo "=========================";
}

	

while [[ loop -eq 1 ]]; do
	echo "||==========================================||";
	echo "||             SELAMAT DATANG               ||";
	echo "||    DIPELAYANAN PEMBELIAN CONSOLE GAME    ||";
	echo "||==========================================||";
	echo "||1. Input data pembeli                     ||";
	echo "||2. input harga console                    ||";
	echo "||3. view data diri dan harga               ||";
	echo "||4. Cetak nota                             ||";
	echo "||5. Keluar Program                         ||";
	echo "||==========================================||";
	echo "Pilihan : "
	read pilih;
	

	case "$pilih" in
		"1" )
		input_Data;
			;;
		"2" )
		input_harga;
			;;
		"3" )
		lihat_Harga;
			;;
		"4" )
		Cetak;
			;;
		"5" )
		let loop=2;
			;;
	esac

done
}

kedua(){
	
	deadlock(){
	echo "apakah anda yakin mencoba deadlock"
	echo "apabila deadlock sudah berjalan tekan ctrl+c untuk memberhentikannya"
	echo "apakah anda yakin mau mencoba? (y/n)"
	read yakinmau
	if [[ $yakinmau == y ]]; then
	while :; do

dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1

if [ $?  -eq 0 ]; then

echo “$2” > in.fifo exit 0

fi

done
fi
if [[ $yakinmau ]]; then
	echo "anda tidak berani mencoba :V"
fi	
}


membuatuser(){
	echo "masukkan nama user baru:"
	read userbaru
	sudo adduser $userbaru
}

masukuser(){
	ls /home
	echo "Mau masuk ke user yang mana? "
	read masukuser
su $masukuser
}

membuatbash(){
	echo "buat nama :"
	read nama_file
nano nama_file $nama_file
}


browsing(){

	firefox
}



while [[ pilih=1 ]]; do
	echo "========================================="
	echo "	      MENU PROGRAM    		           "
	echo "=========================================" 
	echo "1. Apakah ingin mencoba deadlock?        "
	echo "2. membuat user baru					   "
	echo "3. Masuk user		 			           "
	echo "4. Membuat file bash 	 		  	       "
	echo "5. silahkan browsing 	                   "
	echo "6. Keluar			                       "
	echo "========================================="
	echo -n "Masukkan pilihan anda : "
	read pilih



	case "$pilih" in 
		"1" ) deadlock; 
					;; 
		"2" ) membuatuser;
					 ;;
 	    "3" ) masukuser;
			;; 
		"4" ) membuatbash; 
			;; 
		"5") browsing; 
			;; 
		"6" )break;
 			 ;;	
 			  esac
 		

done
}

while [[ pilith=1 ]]; do
	echo "menu"
	echo "1. beli console game"
	echo "2. program penerapan sisop"
	echo "3. exit"
	read pilih
	case $pilih in
		1 )
		utama
			;;
		2 )
		kedua
		;;
		3 )
		exit
		;;
	esac
done