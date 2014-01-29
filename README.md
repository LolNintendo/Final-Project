Final-Project
=============
Basic Project Description
-------------------------

After the start screen, the player moves his/her character through the level by pressing the "d" button. The "h" button makes the character jump. The background moves as the character moves, producing bad guys, obstacles, and coins. Touching an obstacle damages the character by decreasing his size. Once the "d" key is hit a certain number of times, a warp tunnel appears. If the character goes into the tunnel, he is transported to the final battle with the villain. If the player defeats the villain, he/she wins the game.

Different character options, power ups, and levels may be added to the game.

----------------------
Final Project Description

The game inolves six main screens put together in order to make a final finishing project, and a running game. 
I will go through each of the screens one by one and explain what they do and any special featurs about them.

First sceen is just a title screen and it has two booleans that either bring you to the game or to an info screen. 
If the info button is pressed, you go to a screen that explains the instructions involving the game.
You can press a back button in order to go back to the start screen. Pressing the actual start button will bring you to the actual game.

The seccond screen is the "choseing character screen". 
Here you click on what character you want, which is either sonic or mario. After clicking on the character you want you press the play button in order to go to the actual playable game.

The third screen is the first part of the playable game. In this section you can controll and move you character.
To move your character forward you press the 'd' button. This doesent actually move the character but moves the back ground behind him to give the aperence of the character moving. 
Things can spawn in while pressing d such as mountains, bushes, clouds, or enemies.
This works by each time the button is pressed a new number is randomly generated, if this random number becomes a target number then the item will spawn.
For enemies there are two types- the first type is a goomba, if you run into him you loose a life. With three lives lost the game is over, and a game over screen will appear.
Another type of emeny is a flying enemny (i dont know the actaully mario name for him). The difference with this character is that he spawns in when you are half way through this level. So once the d button is pressed a certain number of times this enemy will fly into the screen
The fying enemy floats back and forth and throws down these balls that when it hits the ground they turn into more ground enemies like the goombas. They appear over random intervals like the goombas as well.
In order to avoid all the enemies one must jump over them, to jump you press the 'h' key. This runs on a timer and the character falls back down after a seccond.
After the d button is pressed another certain amount of times a warp pipe appears at the end of the screen. Your character is automattically dragged to the pipe and when the two interact the next screen appears.

This next screen is called the "tunnel screen".
This is just an average forward walk leading up to the boss battle. Yet the difference here is that when you press the d button you character will actually move forward (this is the only time in the game this happens).
In the middle or your route down this tunnel there is an image or a fire flower.
When you come in contact with the flower id diseppears and your character also gets a new ability.
Now if you press the h button you can throw fire balls that fly straight forward from where ever your characters x and y location are.
Another interesting part of the tunnel screen is the tourches on the wall. What is so cool about this is that the picture of the flames are randomly changing giving it the apearens of fire flickering.
When the character reaches the end of the screen (x value is greator than width) the boss screen appears.

This is where you fight the boss which, of coarse, is an image of bowser who jumps up and down the screen. At the top of the screen there is also an image of a life bar, this life bar is for bowser.
In order to weaken him you must fire the flame balls that you just recived with your power up at him.
When the power balls come in contact with him he loses some of his health, you must hit him five times in order for him to die.
The trick is that bower is also shooting flame balls at you, that you need to avoid. 

When you drain all of the bosses health you appear at the final screen. This is where you are congradualted for completing the game. You have won! As an added bonus at the corner of the screen, thanks to the help of the array list, there are fireworks. Congradulations :).
