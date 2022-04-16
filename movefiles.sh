#Move files from one folder to respective folders
read -p "Create Folder :" x
read -p "Create Nested Folder :" y
read -p "Specify which file you want to Move :" fileName
read -p "SPecify to which folder you want to Move :" folderName
function nested_folder(){
  mkdir $x
  mkdir -p $x/$y | mv $fileName $folderName
}

nested_folder $x $y $fileName $folderName
