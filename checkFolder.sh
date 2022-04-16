
read -p "foldername :" Directory
if [ -d "$Directory" ];
then
	echo -e "it's exits\n"
fi
### To check if it's not exists
if [ ! -d "$Directory" ];
then 
	echo -e "It's not there\n"
        mkdir $Directory
fi
