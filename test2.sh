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
echo "the shadows: I will give you three healing items and 100 health"
HEALTH=100
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

elif [ $DIRECTION = "Right" ]; then
echo "right is not always right you trip on a rock and hit your head on a wall, also it was a dead end you go left"
expr $HEALTH - 5
fi
sleep 3

echo "you encounter a giant spider big enough to be Australia's PM"
sleep 0.5
echo "what do you do attack, flee, spare, or heal"
read ACTION1

if [ $ACTION1 = "attack" ]; then
echo "you stomped on it"
sleep 1
echo "you won the fight yay!"

elif [ $ACTION1 = "flee" ]; then
echo "mate it was only like 10cm"

elif [ $ACTION1 = "spare" ]; then
echo "you and the spider hugged"
echo "spider: thanks mate for not stepping on me"

elif [ $ACTION1 = "heal" ] && [ $HEALTH = 100 ]; then
echo "your health is full already mate!"
sleep 2
echo "also you can't heal again in this fight"
read ACTION2

elif [ $ACTION1 = "heal" ] && [ $HEALTH -lt 100 ]; then
echo "you healed 25"
expr $HEALTH + 25
sleep 2
echo "also you can't heal again in this fight"
read ACTION2
fi

if [ $ACTION2 = "attack" ]; then
echo "you stomped on it"
sleep 1
echo "you won the fight yay!"

elif [ $ACTION2 = "flee" ]; then
echo "mate it was only like 10cm"

elif [ $ACTION2 = "spare" ]; then
echo "you and the spider hugged"
echo "spider: thanks mate for not stepping on me"

fi
echo "would you like to kill your character now?"
read DEATH_WISH

if [ $DEATH_WISH = "yes" ]; then
expr $HEALTH - 120
echo "The deed has been done"

elif [ $DEATH_WISH = "no" ]; then
echo "ok bye"

fi

if [ $HEALTH -lt 1 ]; then
"you have died lol"

fi

exit

