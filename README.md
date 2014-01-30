Final-Project
=============
Basic Project Description
-------------------------
The player starts the game with a screen that takes him/her to a character selection screen where the player can choose to play with mario or sonic. It also has an Info button for instructions on how to play the game.

After the start screen, the player moves his/her character through the level by pressing the "d" button. The "h" button makes the character jump. The background moves as the character moves, producing bad guys as obstacles. Touching an obstacle damages the character by decreasing his lives. Once the "d" key is hit a certain number of times, or the character has moved 75 spaces, a warp tunnel appears. If the character goes passes the tunnel, he is transported to a tunnel where they can obtain a power up, and then to the final battle with the villain, Bowser. If the player defeats the villain, he/she wins the game.

----------------------
Final Project Description

The game involves six main screens put together in order to make a final finishing project, and a running game. 
I will go through each of the screens one by one and explain what they do and any special features about them.

First screen is just a title screen and it has two booleans that either bring you to the character selection and game or to an info screen. 
If the info button is pressed, you go to a screen that explains the instructions involving the game.
You can press a back button in order to go back to the start screen. Pressing the actual start button will bring you to the actual game.

The second screen is the "character selection screen". 
Here you click on what character you want, which is either sonic or mario. After clicking on the character you want, you press the play button in order to go to the actual playable game.

The third screen is the first part of the playable game. In this section you can control and move your character.
To move your character forward you press the 'd' button. This doesn’t actually move the character but moves the background behind him to give the appearance of the character moving. 
Things can spawn in while pressing d such as mountains, bushes, clouds, or enemies (goombas).
This works because each time the 'd' button is pressed a new number is randomly generated, if this random number becomes a the item's target number then the item will spawn.
The enemies in the game are the goombas. If you run into them, you lose a life. When three lives lost, at any point in the game, the game is over, your character will fall off the screen, and a game over screen will appear.
In order to avoid all the enemies the player must jump over them. To jump, press the 'h' key. This runs on a timer and the character falls back down after a second and a half.
After the 'd' button is pressed 75 times, a warp pipe appears at the end of the screen. Your character is automatically dragged towards the pipe and when the character passes the pipe, the next screen appears.

This next screen is called the "tunnel screen".
This is just an average forward walk leading up to the boss battle. The difference here is that when you press the 'd' button your character will actually move forward (this is the only time in the game this happens).
In the middle of your route down this tunnel, there is an image of a fire flower.
When you come in contact with the flower it disappears and your character also gets a new ability to shoot fire balls in the upcoming battle with Bowser.
Now if you press the 'h' button you can throw fire balls that fly straight forward from wherever your character's x and y location are.
Another interesting part of the tunnel screen is the torches on the wall. What is so cool about this is that the picture of the flames are randomly changing giving it the appearance of fire flickering.
When the character reaches the end of the screen (x value is greater than width) the boss screen appears.

This is the final screen, where you fight the boss which, of course, is an image of Bowser who jumps up and down the screen. At the top of the screen there is also an image of a life bar, this life bar is for Bowser.
In order to weaken him you must fire the flame balls that you just received with your power up, at him.
When the power balls come in contact with him, he loses some of his health, you must hit him five times in order for him to die.
The trick is that bower is also shooting flame balls at you; that you need to avoid. 

When you drain all of the boss’s health you appear at the final screen. This is where you are congratulated for completing the game. You have won! As an added bonus at the corner of the screen, thanks to the help of the array list, there are fireworks. Congratulations :).
