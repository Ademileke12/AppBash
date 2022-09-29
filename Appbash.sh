#!/usr/bin/bash
echo "Run Uisng Admin priviledges"
echo "1.Move all particular extention file"
echo "2.Copy all particular extention file"
echo "3.Delete all particular extention file... This doesnt go to your recycle bin be warned"
echo "4.Move a single file to a directory"
echo "5.Copy a single file to a directory"
echo "6.Delete a single file permanetly... This doesnt go to your recycle bin be warned" 
echo "7.Compile a C file"
echo ""

echo "Pick an option:"; read option

echo ""
if [ $option -eq 1 ]
then
	echo "Type The directory name:"; read directory_name
	echo "Type in the extension name e.g txt, py etc"; read extension_name

	mv *.$extension_name $directory_name
	echo "Process..Completed"

elif [ $option -eq 2 ]
then
	echo "Type The directory name:"; read directory_name
        echo "Type in the extension name e.g txt, py etc"; read extension_name

	cp *.$extension_name $directory_name
	echo "Process..Completed"
elif [ $option -eq 3 ]
then
        echo "Type in the extension name e.g txt, py etc"; read extension_name

	rm -rf *.$extension_name
	echo "Process..Completed"
elif [ $option -eq 4 ]
then 
	echo "Type The directory name:"; read directory_name
        echo "Type in the filename alongside the extension e.g game.txt, del.py etc"; read filename_name

	mv $filename_name $directory_name

	echo "Process..Completed"
elif [ $option -eq 5 ]
then
	echo "Type The directory name:"; read directory_name
        echo "Type in the filename alongside the extension e.g game.txt, del.py etc"; read filename_name

	cp $filename_name $directory_name
	echo "Process..Completed"
elif [ $option -eq 6 ]
then
        echo "Type in the filename alongside the extension e.g game.txt, del.py etc"; read filename_name

	rm -rf $filename_name
	echo "Process..Completed"
elif [ $option -eq 7 ]
then
	echo "Type in the name of the c file to be compiled, e.g debug.c"; read c_name
	echo "Type in the executable name without .c, e.g debug"; read c_reg_name

	gcc $c_name -o $c_reg_name

	echo "Process..Completed"

else
	echo ""
	echo " Invalid option"
fi

echo "Created by Ademileke... Github Ademileke12"
