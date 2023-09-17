
mass_loop(){
counter=1
while [ $counter -le 5 ]
do
SLEEP 0.5
echo MASSS!
((counter++))
done
SLEEP 1
}

type_writer_text(){

message=$1 
	for ((i=0; i<${#message}; i++)); 
	do 
	echo "after 100" | tclsh; 
	printf "${message:$i:1}"; 
done; 
echo;
}

mass_loop

type_writer_text "Who is man of mass?"

read varname
if [ "$varname" == 'sai kiran' ]
then
	type_writer_text "GOOD, YOU LIVE ANOTHER DAY"
else
	type_writer_text "YOU FORGOT THE MAN OF MASS!!!! , YOU WILL BE HACKED!"
	SLEEP 2
	ascii-image-converter ./saikiran-is-man-of-mass.jpeg -C -b --dither
	mass_loop
	type_writer_text "SAI KIRAN IS THE MAN OF MAAASSSSSSS"
fi
