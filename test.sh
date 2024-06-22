echo "warning: shell was not made with games in mind and since I couldn't be be bothered to add loops please make sure your spelling is correct and no caps please, like Attack just put attack or it will not works"
sleep 5
echo "What is your name?"
read PERSON
echo "Hello, $PERSON"
NAME=$PERSON
sleep 2
echo "You encountered a monster do you type help for what to do"

read ACTION1

HEALTH=100

if [ $ACTION1 = "help" ]; then
	echo "commands: attack, flee"
	sleep 2
	read ACTION2
fi

if [ $ACTION2 = "attack" ]; then
	echo "you took half of its health"
	sleep 1
	echo "the monster took half of your health aswell"
	expr $HEALTH - 50
	echo "PS that's your health"

elif [ $ACTION2 = "flee" ]; then
	echo "you ran away sissy!"


fi

if [ $ACTION2 = "attack" ]; then
echo "Good Job what do you pick now? (since I removed help the commands are attack, flee, and spare)"
sleep 2
read ACTION3
fi


if [ $ACTION3 = "spare" ]; then
echo "you left the moster alone and left"


elif [ $ACTION3 = "attack" ]; then
echo "You were too brave, you killed the last of its kind. infact it was the only one of its kind"

elif [ $ACTION3 = "flee" ]; then
echo "you ran away sissy! and you were close to the end aswell"

fi
sleep 3

if [ $ACTION3 = "spare" ]; then
echo "good ending aka pacifist ending. You left the species alone and they reproduced, then they bonded with humans"


elif [ $ACTION3 = "attack" ]; then
echo "genocide ending.you were charged and sent to prison"

elif [ $ACTION3 = "flee" ]; then
echo "sissy ending. lol you were afraid"

elif [ $ACTION2 = "flee" ]; then
echo "sissy ending. lol you were afraid"

fi

date
exit
#Made By Rioboyva2554
#Licensed under the RIO License
#RIO License
#
#Terms of use for copying, distribution, and modification

#Copyright (C) (2024) (Rioboyva2554)

#-When Downloading this software and using it you are given the right to Modify freely to your hearts content and publish it, But You must state the original Authors name and credit them in your code.

#-The software must be in some kind of working state (or at least have one working bit like working binaries but cannot compile from source) and not harmful in anyway possible.

#-If the owner of the original project asks you to take it down because you may have accidentally broken the terms then you must abide, unless if it has nothing to do with the actual license like if they say "I don't like this" or "This project was never meant for (insert operating system or software)".

#-If the original was free yours has to be too

#- Your project must be open source

#- Also dont claim this license as one you made

#- you are responsible if you modify the software and break anything

#- Do not plagerise and if you do you ABSOLUTELY must credit them or they can take your work down

#Made By Riley Ivan Vega Acosta or also known as Rioboyva2554
