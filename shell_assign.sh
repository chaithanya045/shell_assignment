#!/bin/bash
echo " ">new.sh
echo "please give your component name :"
echo "component1:ingestor"
echo "component2:joiner"
echo "component3:wrangler"
echo "component4:validator"

read -p "please make your choice in {1,2,3,4}: " choice
if [ "$choice" == "ingestor" ];then
	echo "your component is valid and will be stored"
	echo $choice>>new.sh

elif [ "$choice" == "joiner" ];then
        echo "your component is valid and will be stored"
	echo $choice>>new.sh

elif [ "$choice" == "validator" ];then
        echo "your component is valid and will be stored"
	echo $choice>>new.sh

elif [ "$choice" == "wrangler" ];then
   	echo "your component is valid and will be stored"
	echo $choice>>new.sh

else
       echo "your component is invalid,please enter a valid component name"
       echo " ">>new.sh
fi

echo "please give your scale given below: "
echo "Scale1:High"
echo "scale2:medium"
echo "scale3:low"

read -p "please make your choice {1,2,3} :" choice1
if [ "$choice1" == "high" ];then
        echo "your scale is valid and will be stored"
	echo $choice1>>new.sh
elif [ "$choice1" == "medium" ];then
        echo "your scale is valid and will be stored"
	echo $choice1>>new.sh
elif [ "$choice1" == "low" ];then
        echo "your scale is valid and will be stored"
	echo $choice1>>new.sh
else
	echo "your sacle is invalid,please enter a valid scale given in choice"
	echo " ">>new.sh
fi


echo "please give your view: "
echo "view1:action"
echo "view2:bid"
read -p "please give your choice :" choice2
if [ "$choice2" == "action" ];then
        echo "your component is valid and will be stored"
	echo $choice2>>new.sh
elif [ "$choice2" == "bid" ];then
        echo "your component is valid and will be stored"
	echo $choice2>>new.sh
else
	echo "your input is invalid,please try valid one"
	echo "">>new.sh
	
fi

echo "please give your input choice between 1-9:"
read choice3
if [ $choice3 -lt 10 ];then
	echo "it is valid one and will be stored"
	echo $choice3>>new.sh
else 
	echo "invalid input!!,please enter a valid number"
	echo " ">>new.sh
fi

cat new.sh
