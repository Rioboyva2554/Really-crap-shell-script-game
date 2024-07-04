tiv thissmol.png
sleep 2
echo "After the last game you were roaming around the village and you were walking to the baker-"
sleep 1
echo "you fell down a well"
sleep 5
echo "the shadows: what is your name traveler"
read NAME
echo "the shadows: hmm very nice name, $NAME"
sleep 0.5
echo "the shadows: I will give you three healing items and 100 health, also if you win in a battle against a creature you will get gold"
HEALTH=100
HEALITEM=3
GOLD=0
sleep 0.5
echo "you're at a fork in the path Left or Right?"
read DIRECTION
if [ $DIRECTION = "left" ]; then
echo "the path continues"

elif [ $DIRECTION = "Left" ]; then
echo "the path continues"

elif [ $DIRECTION = "right" ]; then
echo "right is not always right you trip on a rock and hit your head on a wall also it was a dead end you go left"
expr $HEALTH - 5
echo "you lost 5 health"

elif [ $DIRECTION = "Right" ]; then
echo "right is not always right you trip on a rock and hit your head on a wall, also it was a dead end you go left"
expr $HEALTH - 5
echo "you lost 5 health"
fi
sleep 3

echo "you encounter a giant spider big enough to be Australia's PM"
sleep 1.5
echo "what do you do attack, flee, spare, or heal"
read ACTION1

if [ $ACTION1 = "attack" ]; then
echo "you stomped on it"
sleep 1
echo "you won the fight yay!"
expr $GOLD + 10
echo "you also got 10 gold!"

elif [ $ACTION1 = "flee" ]; then
echo "mate it was only like 10cm"

elif [ $ACTION1 = "spare" ]; then
echo "you and the spider hugged"
echo "spider: thanks mate for not stepping on me"

elif [ $ACTION1 = "heal" ] && [ $HEALTH = 100 ]; then
echo "your health is full already mate! or its been maxed out"
sleep 2
echo "also you can't heal again in this fight"
read ACTION2

elif [ $ACTION1 = "heal" ] && [ $HEALTH -lt 100 ]; then
echo "you healed 25"
expr $HEALITEM - 1
expr $HEALTH + 25
sleep 2
echo "also you can't heal again in this fight"
read ACTION2
fi

if [ "$ACTION2" = "attack" ]; then
echo "you stomped on it"
sleep 1

elif [ "$ACTION2" = "flee" ]; then
echo "mate it was only like 10cm"

elif [ "$ACTION2" = "spare" ]; then
echo "you and the spider hugged"
echo "spider: thanks $NAME for not stepping on me"

fi
sleep 2.5

echo "you find a mysterious portal do you enter yes/no"
read ACTION3

if [ $ACTION3 = "yes" ]; then
echo "You entered and found a healing item and a sword"
expr $HEALITEM + 1
STARTSWORD="true"

elif [ $ACTION3 = "no" ]; then
echo "you went on"

fi

echo "Goblin: hiya kid for 100 gold you can leave this cave/well do you wanna leave?"
read END100

if [ "$END100" = "yes" ] && [ "$GOLD" -lt 100 ]; then
sleep 1.5
echo "Goblin: sorry kid you don't have enough gold"

elif [ "$END100" = "yes" ] && [ "$GOLD" -eq 100 ]; then
echo "Goblin: wow kid come on throu-"
sleep 1.5
echo "*Goblin being brutally beaten with a shovel*"
sleep 3.5
echo "The creator: hi I am Rioboyva2554 now if you're reading this you are either reading the source code or have modified the amount of gold you started with and are now playing it. I'm ok with both. now you get to see the ending, but do not tell others this is between you and me, okay"
sleep 2
echo "you slowly went up the staircase and found your self at a door"
sleep 1.5
echo "you quickly slam it open only to find the remains of what once was society, what seemed like minutes was actually thousands of years. You start to cry knowing that eceryone you ever loved is dead"
sleep 1.5
echo "you grab a heavy rock and drop it on your head"
sleep 2.2
echo "Suicide/quick ending"
exit

elif [ "$END100" = "no" ]; then
echo "Goblin: Ok bye $NAME have a great journey. just try to avoid HIM"

fi

echo "you encountered a gen alpha what do you do"
sleep 1
echo "attack,spare,heal,flee"
read ACTION4

if [ "$ACTION4" = "attack" ]; then
echo "you destroy the childs ipad leaving him crying and with half his health"
expr $HEALTH - 25
echo "the child slaps you and calls you insults you lose 25 health"
read ACTION5

elif [ "$ACTION4" = "spare" ]; then
echo "you leave the child alone to watch his weird toilet thing"

elif [ "$ACTION4" = "flee" ]; then
echo "why are you scared of child you flee"

elif [ "$ACTION4" = "heal" ] && [ "$HEALTH" = 100 ]; then
echo "you already have full health or it's maxed out"
sleep 1
echo "ps you can not heal again"
read ACTION5

elif [ $ACTION4 = "heal" ] && [ $HEALTH -lt 100 ]; then
echo "you healed 25"
expr $HEALITEM - 1
expr $HEALTH + 25
sleep 2
echo "also you can't heal again in this fight"
read ACTION5

fi
sleep 1

if [ "$ACTION5" = "attack" ]; then
echo "you kill the child leaving him on the floor bleeding"
expr $GOLD + 25
echo "you got 25 gold"

elif [ "$ACTION5" = "spare" ]; then
echo "you leave the child alone to watch his weird toilet thing"

elif [ "$ACTION5" = "flee" ]; then
echo "why are you scared of child. you flee"

fi

sleep 1
echo "would you like to kill your character now?"
read DEATH_WISH

if [ $DEATH_WISH = "yes" ]; then
expr $HEALTH - 100
echo "The deed has been done"

elif [ $DEATH_WISH = "no" ]; then
echo "ok bye"

fi

if [ "$HEALTH" -eq 0 ]; then
echo "You have died but do not be afraid."
sleep 1
echo "better days are coming"
exit
fi


