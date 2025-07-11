CHAPTER 2 Creating a Basic Game World
=====================================

The arrival of smartphones and handheld devices that support gaming has created a renewed interest in
simple puzzle and physics-based games that can be played for short periods of time. Most of these games
have a simple concept, small levels, and are easy to learn. One of the most popular and famous games in
this genre is Angry Birds (by Rovio Entertainment), a puzzle/strategy game where players use a slingshot to
shoot birds at enemy pigs. Despite a fairly simple premise, the game has been downloaded and installed on
over two billion devices around the world. The game uses a physics engine to realistically model the slinging,
collisions, and breaking of objects inside its game world.

Over the next four chapters, we are going to build our own physics-based puzzle game with complete
playable levels. Our game, Froot Wars, will have fruits as protagonists, junk food as the enemy, and some
breakable structures within the level.

We will be implementing all the essential components you will need in your own games—splash
screens, loading screens and preloaders, menu screens, parallax scrolling, sound, realistic physics with the
Box2D physics engine, and a scoreboard. Once you have this basic framework, you should be able to reuse
these ideas in your own puzzle games.

So let’s get started.

Basic HTML Layout
-----------------

The first thing we need to do is to create the basic game layout. This will consist of several layers:

• Splash screen: Shown when the game page is loaded
• Game start screen: A menu that allows the player to start the game or modify settings
• Loading/progress screen: Shown whenever the game is loading assets (such as
images and sound files)
• Game canvas: The actual game layer
• Scoreboard: An overlay above the game canvas to show a few buttons and the score
• Ending screen: A screen displayed at the end of each level

Each of these layers will be either a div element or a canvas element that we will display or hide as
needed. The code will be laid out with separate folders for images and JavaScript code.

Creating the Splash Screen and Main Menu
----------------------------------------

We start with a skeleton HTML file, similar to the first chapter, and add the markup for our containers, as
shown in Listing 2-1.

Listing 2-1. Basic Skeleton (index.html) with the Layers Added

.. code:: Python

   <!DOCTYPE html>
   <html>
   <head>
   <meta http-equiv="Content-type" content="text/html; charset=utf-8">
   <title>Froot Wars</title>
   <script src="js/game.js" type="text/javascript"></script>
   <link rel="stylesheet" href="styles.css" type="text/css" media="screen">
   </head>
   <body>
   <div id="wrapper">
   <div id="gamecontainer">
   <canvas id="gamecanvas" width="640" height="480" class="gamelayer">
   </canvas>
   <div id="scorescreen" class="gamelayer">
   <img id="togglemusic" src="images/icons/sound.png" alt="Toggle Music">
   <img src="images/icons/prev.png" alt="Restart Level ">
   <span id="score">Score: 0</span>
   </div>
   <div id="gamestartscreen" class="gamelayer">
   <img src="images/icons/play.png" alt="Play Game"><br>
   <img src="images/icons/settings.png" alt="Settings">
   </div>
   <div id="levelselectscreen" class="gamelayer">
   </div>
   <div id="loadingscreen" class="gamelayer">
   <div id="loadingmessage"></div>
   </div>
   <div id="endingscreen" class="gamelayer">
   <div>
   <p id="endingmessage">The Level Is Over Message</p>
   <p id="playcurrentlevel" class="endingoption"><img src="images/
   icons/prev.png" alt="Replay">Replay Current Level</p>
   <p id="playnextlevel" class="endingoption"><img src="images/icons/
   next.png" alt="Next">Play Next Level</p>
   <p id="returntolevelscreen" class="endingoption"><img src="images/
   icons/return.png" alt="Return">Return to Level Screen</p>
   </div>
   </div>
   </div>
   </div>
   </body>
   </html>

As you can see, we defined a main gamecontainer div element that contains each of the game
layers: gamestartscreen, levelselectscreen, loadingscreen, scorescreen, endingscreen, and finally
gamecanvas. All of these are placed inside a wrapper div, which we can later use for positioning and resizing
the game around the page as needed.

We also link to two external files: game.js for JavaScript and styles.css for CSS. Keeping the JavaScript
and CSS as separate files makes the code easier to maintain. In larger projects, it is common to break out
the CSS and JavaScript into multiple files, and very large projects often use a dependency loading system
to automatically load all the distinct JavaScript files. For this game, single files for JavaScript and CSS will
suffice.

We will start by creating the styles.css file and adding styles for the game container and the starting
menu screen, as shown in Listing 2-2.

Listing 2-2. CSS Styles for the Container and Start Screen (styles.css)

.. code:: Python

   body {
   background: #000900;
   /* Prevent the ugly blue highlighting from accidental selection of text */
   user-select: none;
   }
   #wrapper {
   position: absolute;
   }
   #gamecontainer {
   /* Set game container width, height, and background */
   width: 640px;
   height: 480px;
   background: url("images/splashscreen.png");
   }
   .gamelayer {
   width: 100%;
   height: 100%;
   position: absolute;
   display: none;
   }

   /* Game Starting Menu Screen */
   #gamestartscreen {
   padding-top: 250px;
   text-align: center;
   }
   #gamestartscreen img {
   margin: 10px;
   cursor: pointer;
   }

We have done the following in this CSS style sheet so far:

• Set the default page background color to almost black with a slight tinge of green and
disabled highlighting of text or elements by dragging the mouse.
• Defined our game container with a size of 640px by 480px.
• Made sure all game layers are positioned using absolute positioning (they are placed
on top of each other) so that we can show/hide and superimpose layers as needed.
Each of these layers has the same size as the parent game container and is hidden by
default.
• Set our game splash screen image as the main container background so it is the first
thing a player sees when the page loads.
• Added some styling for our game start screen (the starting menu), which has options
such as starting a new game and changing game settings.

9999

■ Note all the images and source code are available from this book’s product page on the apress website
(www.apress.com/9781484229095) by clicking the download source Code button. if you would like to follow
along, you can copy all the asset files into a fresh folder and build the game on your own.
If we open in a browser the HTML file we have created so far, we see the game splash screen, as shown
in Figure 2-1

Chapter 2 ■ Creating a BasiC game World
25
We need to add some JavaScript code to start showing the main menu, the loading screen, and the
game. We will keep all our game-related JavaScript code in a single file (js/game.js).
We start by defining a game object that will contain most of our game code. The first thing we need is an
init() function that will be called after the browser loads the HTML document.
Listing 2-3. A Basic game Object (js/game.js)
var game = {
// Start initializing objects, preloading assets and display start screen
init: function() {
//Get handler for game canvas and context
game.canvas = document.getElementById("gamecanvas");
game.context = game.canvas.getContext("2d");
// Hide all game layers and display the start screen
game.hideScreens();
game.showScreen("gamestartscreen");
},
//
hideScreens: function() {
var screens = document.getElementsByClassName("gamelayer");

Chapter 2 ■ Creating a BasiC game World
26
// Iterate through all the game layers and set their display to none
for (let i = screens.length - 1; i >= 0; i--) {
var screen = screens[i];
screen.style.display = "none";
}
},
hideScreen: function(id) {
var screen = document.getElementById(id);
screen.style.display = "none";
},
showScreen: function(id) {
var screen = document.getElementById(id);
screen.style.display = "block";
},
};
The code in Listing 2-3 defines a JavaScript object called game with an init() function. This init()
function first saves references to the game canvas and context so we can refer to them more easily using
game.context and game.canvas. After that it hides all game layers and shows the game start screen using
the hideScreens() and showScreen() methods. Next, we have three helper methods, hideScreens(),
hideScreen(), and showScreen(), which modify the display CSS attribute to help us show or hide the
menu screens that we created.
Trying to manipulate image and div elements before confirming that the page has loaded completely
will result in unpredictable behavior (including JavaScript errors). We can safely call this game.init()
method after the window has loaded by adding a small snippet of JavaScript code at the bottom of game.js
(shown in Listing 2-4).
Listing 2-4. Calling game.init() Method Safely Using the load Event
// Initialize game once page has fully loaded
window.addEventListener("load", function() {
game.init();
});
When we open our HTML code in the browser, the browser initially displays the splash screen and then
displays the game start screen on top of the splash screen, as shown in Figure 2-2.

Level Selection
So far we have waited for the game HTML file to load completely and then displayed a main menu with
two options, Play and Settings. When the user clicks the Play button, ideally we would like to display a level
selection screen that shows a list of available levels.
Before we can do this, we need to create an object for handling levels. This object will contain both the
level data and some simple functions for handling level initialization. We will create this levels object inside
game.js and place it after the game object, as shown in Listing 2-5.
Listing 2-5. Simple levels Object with Level Data and Functions
var levels = {
// Level data
data: [{ // First level
foreground: "desert-foreground",
background: "clouds-background",
entities: []
}, { // Second level
foreground: "desert-foreground",
background: "clouds-background",
entities: []
}],

/ Initialize level selection screen
init: function() {
var levelSelectScreen = document.getElementById("levelselectscreen");
// An event handler to call
var buttonClickHandler = function() {
game.hideScreen("levelselectscreen");
// Level label values are 1, 2. Levels are 0, 1
levels.load(this.value - 1);
};
for (let i = 0; i < levels.data.length; i++) {
var button = document.createElement("input");
button.type = "button";
button.value = (i + 1); // Level labels are 1, 2
button.addEventListener("click", buttonClickHandler);
levelSelectScreen.appendChild(button);
}
},
// Load all data and images for a specific level
load: function(number) {
}
};
The levels object has a data array that contains information about each of the levels. For now, the
only level information we store is a background image and foreground image. However, we will be adding
information about the hero characters, the villains, and the destructible entities within each level. This will
allow us to add new levels very quickly by just adding new items to the array.
The next thing the levels object contains is an init() function that goes through the level data and
dynamically generates buttons for each of the levels. Each of the buttons is assigned a click event handler,
which calls the load() method and then hides the level selection screen. Note that we use a level index
starting from 0 internally since JavaScript arrays are zero-based, but when we display the level numbers to
the player on the level selection screen, we start the numbering from 1.
Finally, the levels object has a placeholder load() method, which is currently empty.
We will call levels.init() from inside the game.init() method to generate the level selection screen
buttons when the game is first initialized. The game.init() method now looks as shown in Listing 2-6.
Listing 2-6. Initializing Levels from game.init()
init: function() {
//Get handler for game canvas and context
game.canvas = document.getElementById("gamecanvas");
game.context = game.canvas.getContext("2d");

// Initialize objects
levels.init();
// Hide all game layers and display the start screen
game.hideScreens();
game.showScreen("gamestartscreen");
},
We also need to add some CSS styling for the buttons inside styles.css, as shown in Listing 2-7.
Listing 2-7. CSS Styles for the Level Selection Screen
/* Level Selection Screen */
#levelselectscreen {
padding-top: 150px;
padding-left: 50px;
}
#levelselectscreen input {
margin: 20px;
cursor: pointer;
background: url("images/icons/level.png") no-repeat;
color: yellow;
font-size: 20px;
width: 64px;
height: 64px;
border: 0;
/* Remove the default blue border when an input is selected */
outline: 0;
}
This fairly simple CSS code adds some padding, margins, and styling to the buttons. It also sets a default
background image for the buttons.
The next thing we need to do is create, inside the game object, a simple game.showLevelScreen()
method that hides the main menu screen and displays the level selection screen, as shown in Listing 2-8.
Listing 2-8. showLevelScreen() Method Inside the game Object
showLevelScreen: function() {
game.hideScreens();
game.showScreen("levelselectscreen");
}

Chapter 2 ■ Creating a BasiC game World
30
This method first hides all the other game layers and then shows the levelselectscreen layer.
The last thing we need to do is call the game.showLevelScreen() method when the user clicks the Play
button. We do this by calling the method from the play image’s onclick event in our HTML file:
<img src="images/icons/play.png" alt="Play Game"
onclick="game.showLevelScreen()">
Now, when we start the game and click the Play button, the browser hides the main menu, and shows
the level selection screen with buttons for each of the levels, as shown in Figure 2-3.
Right now, we only have a couple of levels showing. However, as we add more levels, the code will
automatically detect the levels and add the right number of buttons (formatted properly, thanks to the CSS).
When the user clicks these buttons, the browser will hide the level selection screen and then call the
levels.load() method that we have yet to implement.
Loading Images
Before we implement the levels themselves, we need to put in place the image loader and the loading
screen. This will allow us to programmatically load the images for a level and start the game once all the
assets have finished loading.

We are going to design a simple loading screen that contains an animated GIF with a progress bar image
and some text above it showing the number of images loaded so far. First, we need to add the CSS in Listing 2-9
to styles.css.
Listing 2-9. CSS for the Loading Screen
/* Loading Screen */
#loadingscreen {
background: rgba(100, 100, 100, 0.5);
}
#loadingmessage {
margin-top: 400px;
text-align: center;
height: 48px;
color: white;
background: url("images/loader.gif") no-repeat center;
font: 12px Arial;
}
This CSS adds a dim gray color over the game background to let the user know that the game is
currently processing something and is not ready to receive any user input. It also displays a loading message
in white text. Finally, it places a progress bar image, which is an animated GIF file, in the background.
The next step is to create a JavaScript asset loader based on the code from Chapter 1. The loader will do
the work of actually loading the assets and then updating the loadingscreen div element. We will define a
loader object inside game.js, as shown in Listing 2-10.
Listing 2-10. The Image/Sound Asset Loader
var loader = {
loaded: true,
loadedCount: 0, // Assets that have been loaded so far
totalCount: 0, // Total number of assets that need loading
init: function() {
// Check for sound support
var mp3Support, oggSupport;
var audio = document.createElement("audio");
if (audio.canPlayType) {
// Currently canPlayType() returns: "", "maybe" or "probably"
mp3Support = "" !== audio.canPlayType("audio/mpeg");
oggSupport = "" !== audio.canPlayType("audio/ogg; codecs=\"vorbis\"");
} else {
// The audio tag is not supported
mp3Support = false;
oggSupport = false;
}
// Check for ogg, then mp3, and finally set soundFileExtn to undefined
loader.soundFileExtn = oggSupport ? ".ogg" : mp3Support ? ".mp3" : undefined;
},

Chapter 2 ■ Creating a BasiC game World
32
loadImage: function(url) {
this.loaded = false;
this.totalCount++;
game.showScreen("loadingscreen");
var image = new Image();
image.addEventListener("load", loader.itemLoaded, false);
image.src = url;
return image;
},
soundFileExtn: ".ogg",
loadSound: function(url) {
this.loaded = false;
this.totalCount++;
game.showScreen("loadingscreen");
var audio = new Audio();
audio.addEventListener("canplaythrough", loader.itemLoaded, false);
audio.src = url + loader.soundFileExtn;
return audio;
},
itemLoaded: function(ev) {
// Stop listening for event type (load or canplaythrough) for this item
now that it has been loaded
ev.target.removeEventListener(ev.type, loader.itemLoaded, false);
loader.loadedCount++;
document.getElementById("loadingmessage").innerHTML = "Loaded " + loader.loadedCount
+ " of " + loader.totalCount;
if (loader.loadedCount === loader.totalCount) {
// Loader has loaded completely..
// Reset and clear the loader
loader.loaded = true;
loader.loadedCount = 0;
loader.totalCount = 0;
// Hide the loading screen
game.hideScreen("loadingscreen");

Chapter 2 ■ Creating a BasiC game World
33
// and call the loader.onload method if it exists
if (loader.onload) {
loader.onload();
loader.onload = undefined;
}
}
}
};
The asset loader in Listing 2-10 has the same elements we discussed in Chapter 1, but it is built in a
more modular way. It has the following components:
• An init() method that detects the supported audio file format and saves it.
• Two methods for loading images and audio files: loadImage() and loadSound().
Both methods increment the totalCount variable and show the loading screen when
invoked. The methods then dynamically create the asset, set the src attribute, and
set the appropriate event listener (load for images and canplaythrough for audio) to
call itemLoaded() once the asset is loaded.
• An itemLoaded() method that is invoked each time an asset finishes loading. This
method updates the loaded count and the loading message. Once all the assets are
loaded, the loading screen is hidden and an optional loader.onload() method is
called (if defined). This lets us assign a callback function to be called once the images
are loaded.
■ Note Using a callback method makes it easy for us to wait while the images are loading and start the
game once all the images have loaded.
Before the loader can be used, we need to call the loader.init() method from inside game.init()
so that the loader is initialized when the game is getting initialized. The game.init() method now looks as
shown in Listing 2-11.
Listing 2-11. Initializing the Loader from game.init()
init: function() {
//Get handler for game canvas and context
game.canvas = document.getElementById("gamecanvas");
game.context = game.canvas.getContext("2d");
// Initialize objects
levels.init();
loader.init();
// Hide all game layers and display the start screen
game.hideScreens();
game.showScreen("gamestartscreen");
},

Chapter 2 ■ Creating a BasiC game World
34
We will use the loader by calling one of the two load methods, loadImage() or loadSound(). When
either of these load methods is called, the browser will display the loading screen shown in Figure 2-4 until
all the images and sounds are loaded.
■ Note You can optionally have different images for each of these screens by setting a different background
property style for each div element.
Loading Levels
Now that we have an image loader in place, we can work on getting the levels loaded. For now, let’s start with
loading the game background, foreground, and slingshot images by defining a load() method inside the
levels object, as shown in Listing 2-12.
Listing 2-12. Basic Skeleton for the load() Method Inside the levels Object
// Load all data and images for a specific level
load: function(number) {
// Declare a new currentLevel object
game.currentLevel = { number: number };
game.score = 0;
document.getElementById("score").innerHTML = "Score: " + game.score;
var level = levels.data[number];

Chapter 2 ■ Creating a BasiC game World
35
// Load the background, foreground, and slingshot images
game.currentLevel.backgroundImage = loader.loadImage("images/backgrounds/" + level.
background + ".png");
game.currentLevel.foregroundImage = loader.loadImage("images/backgrounds/" + level.
foreground + ".png");
game.slingshotImage = loader.loadImage("images/slingshot.png");
game.slingshotFrontImage = loader.loadImage("images/slingshot-front.png");
// Call game.start() once the assets have loaded
loader.onload = game.start;
}
The load() function creates a currentLevel object to store the loaded level data. So far we have only
loaded a few images for the background, the foreground, and the front and back of the slingshot. We will
eventually also use this method to load the heroes, villains, and blocks needed to build the game.
One last thing to note is that we call the game.start() method once the images are loaded by setting an
onload callback. This start() method is where the actual game will be drawn.
Animating the Game
As discussed in Chapter 1, to animate our game, we will call our drawing and animation code multiple times
a second using requestAnimationFrame.
We use the game.start() method to set up the animation loop, and then we draw the level inside the
game.animate() method. The code is shown in Listing 2-13.
Listing 2-13. The start() and animate() Functions Inside the game Object
// Store current game state - intro, wait-for-firing, firing, fired, load-next-hero,
success, failure
mode: "intro",
// X & Y coordinates of the slingshot
slingshotX: 140,
slingshotY: 280,
// X & Y coordinate of point where band is attached to slingshot
slingshotBandX: 140 + 55,
slingshotBandY: 280 + 23,
// Flag to check if the game has ended
ended: false,
// The game score
score: 0,
// X axis offset for panning the screen from left to right
offsetLeft: 0,
start: function() {
game.hideScreens();

Chapter 2 ■ Creating a BasiC game World
36
// Display the game canvas and score
game.showScreen("gamecanvas");
game.showScreen("scorescreen");
game.mode = "intro";
game.currentHero = undefined;
game.offsetLeft = 0;
game.ended = false;
game.animationFrame = window.requestAnimationFrame(game.animate, game.canvas);
},
handleGameLogic: function() {
// Temporary placeholder code. Keep panning the game towards the right
game.offsetLeft++;
},
animate: function() {
// Handle panning, game states, and control flow
game.handleGameLogic();
// Draw the background with parallax scrolling
// First draw the background image, offset by a fraction of the offsetLeft distance (1/4)
// The bigger the fraction, the closer the background appears to be
game.context.drawImage(game.currentLevel.backgroundImage, game.offsetLeft / 4, 0, game.
canvas.width, game.canvas.height, 0, 0, game.canvas.width, game.canvas.height);
// Then draw the foreground image, offset by the entire offsetLeft distance
game.context.drawImage(game.currentLevel.foregroundImage, game.offsetLeft, 0, game.
canvas.width, game.canvas.height, 0, 0, game.canvas.width, game.canvas.height);
// Draw the base of the slingshot, offset by the entire offsetLeft distance
game.context.drawImage(game.slingshotImage, game.slingshotX - game.offsetLeft, game.
slingshotY);
// Draw the front of the slingshot, offset by the entire offsetLeft distance
game.context.drawImage(game.slingshotFrontImage, game.slingshotX - game.offsetLeft,
game.slingshotY);
if (!game.ended) {
game.animationFrame = window.requestAnimationFrame(game.animate, game.canvas);
}
},

Chapter 2 ■ Creating a BasiC game World
37
The preceding code consists primarily of two methods, game.start() and game.animate(). The
start() method does the following:
• Initializes a few variables that we need in the game: offsetLeft and mode.
offsetLeft will be used for panning the game view around the entire level, and mode
will be used to store the current state of the game (intro, wait for firing, firing, fired).
• Hides all other layers and displays the canvas layer and the score layer, which is a
narrow bar on the top of the screen that contains the game score and a few game
interface control elements.
• Sets the game animation interval to call the animate() function by using window.
requestAnimationFrame.
The bigger method, animate(), will do all the animation and drawing within our game. The method
starts with calling a temporary placeholder handleGameLogic() method, which we will use to handle
panning as well as the game control flow using game modes. We will be implementing these later. For now,
it contains a single line of code to keep increasing the offsetLeft property, which should pan the game
screen toward the right.
We then draw the background and foreground images. For both the images, we first crop a canvas-sized
portion of the image that is offset appropriately along the x-axis using the offsetLeft variable, and then
draw it onto the canvas. One thing to note is that the background image and foreground image are moved
at different speeds relative to the left offset: the background image is moved only one-fourth of the distance
that the foreground image is moved. This difference in movement speed of the two layers will give us the
illusion that the clouds are further away once we start panning around the level.
After the backgrounds, we draw the slingshot in the foreground, subtracting offsetLeft from its x-axis
position so that the slingshot appears to stay in the same place while the game pans to the right.
Finally, we check if the game.ended flag has been set and, if not, use requestAnimationFrame to call
animate() again. We can use the game.ended flag later to decide when to stop the animation loop.
■ Note parallax scrolling is a technique used to create an illusion of depth by moving background images
slower than foreground images. this technique exploits the fact that objects at a distance always appear to
move slower than objects that are close by.
Before we can try out the code, we need to add a little more CSS styling inside styles.css to implement
our score screen panel, as shown in Listing 2-14.
Listing 2-14. CSS for Score Screen Panel
/* Score Screen */
#scorescreen {
height: 60px;
font: 32px "Comic Sans MS";
text-shadow: 0 0 2px black;
color: white;
}

Chapter 2 ■ Creating a BasiC game World
38
#scorescreen img {
opacity: 0.6;
top: 5%;
left: 5%;
position: relative;
padding: 8px;
cursor: pointer;
}
#score {
position: absolute;
top: 5%;
right: 5%;
}
The scorescreen layer, unlike the other layers in our game, is just a narrow band at the very top of our
game. Along with the usual positioning and styling, we set the opacity for the interface buttons to make
them translucent. This ensures that the interface buttons (for toggling music and restarting the level) do not
distract from the rest of the game.
When we run this code and try to start a level, we should see a basic level with the interface buttons and
the score displayed at the top of the screen, as shown in Figure 2-5.
Figure 2-5. A basic level with the score

Chapter 2 ■ Creating a BasiC game World
39
Our crude implementation of panning currently causes the screen to slowly pan toward the right until
the image is no longer visible. Don’t worry, we will be working on a better implementation soon.
As you can see, the clouds in the background move slower than the foreground because we move the
background layer at a different speed, making it seem like the clouds are much farther than the mountains.
We could potentially add more layers and move them at different speeds to build more of an effect. For
example, the foreground with the cactus, the mountains, and the clouds in the background could form three
distinct layers, moving at three different speeds. However, the two layers that we have right now are sufficient
to illustrate the parallax effect fairly well.
Now that we have a basic level in place, we will add the ability to handle mouse input and implement
panning around the level with game states.
Handling Mouse Input
JavaScript has several events that we can use to capture mouse input: mousedown, mouseup, and mousemove.
To keep things simple we will create a separate mouse object inside game.js to handle all the mouse events,
as shown in Listing 2-15.
Listing 2-15. Handling Mouse Events
var mouse = {
x: 0,
y: 0,
down: false,
dragging: false,
init: function() {
var canvas = document.getElementById("gamecanvas");
canvas.addEventListener("mousemove",
mouse.mousemovehandler, false);
canvas.addEventListener("mousedown",
mouse.mousedownhandler, false);
canvas.addEventListener("mouseup",
mouse.mouseuphandler, false);
canvas.addEventListener("mouseout",
mouse.mouseuphandler, false);
},
mousemovehandler: function(ev) {
var offset = game.canvas.getBoundingClientRect();
mouse.x = ev.clientX - offset.left;
mouse.y = ev.clientY - offset.top;
if (mouse.down) {
mouse.dragging = true;
}
ev.preventDefault();
},

mousedownhandler: function(ev) {
mouse.down = true;
ev.preventDefault();
},
mouseuphandler: function(ev) {
mouse.down = false;
mouse.dragging = false;
ev.preventDefault();
}
};
This mouse object has an init() method that sets event handlers for when the mouse is moved, when a
mouse button is pressed or released, and when the mouse leaves the canvas area. The following are the three
handler methods that we use:
• mousemovehandler(): Uses the canvas’s getBoundingClientRect() method and the
event object’s clientX and clientY properties to calculate the x and y coordinates of
the mouse relative to the top-left corner of the canvas and stores them. It also checks
whether the mouse button is pressed down while the mouse is being moved and, if
so, sets the dragging variable to true.
• mousedownhandler(): Sets the down variable to true.
• mouseuphandler(): Sets the down and dragging variables to false. If the mouse
leaves the canvas area, we call this same method.
All three methods additionally contain an extra line to prevent the default browser behavior for the
mouse event.
Now that we have these methods in place, we can add code to interact with the game elements as
needed. We also have access to the mouse.x, mouse.y, mouse.dragging, and mouse.down properties from
anywhere within the game. As with all the previous init() methods, we call this method from game.init(),
so it now looks as shown in Listing 2-16.
Listing 2-16. Initializing the Mouse from game.init()
init: function() {
// Get handler for game canvas and context
game.canvas = document.getElementById("gamecanvas");
game.context = game.canvas.getContext("2d");
// Initialize objects
levels.init();
loader.init();
mouse.init();
// Hide all game layers and display the start screen
game.hideScreens();
game.showScreen("gamestartscreen");
},
With this bit of functionality in place, let’s now implement some basic game states and panning

Defining Our Game States
Remember the game.mode variable that we briefly looked at earlier when we were creating game.start()?
Well, this is where it comes into the picture. We will be storing the current state of our game in this variable.
Some of the modes or states that we expect our game to go through are as follows:
• intro: The level has just loaded and the game will pan around the level once to show
the player everything in the level.
• load-next-hero: The game checks whether there is another hero to load onto the
slingshot and, if so, loads the hero. If we run out of heroes or all the villains have
been destroyed, the level ends.
• wait-for-firing: The game pans back to the slingshot area and waits for the user
to fire the “hero.” At this point, we are waiting for the user to click the hero. The user
may also optionally drag the canvas screen with the mouse to pan around the level.
• firing: This happens after the user clicks the hero but before the user releases the
mouse button. At this point, we are waiting for the user to drag the mouse around to
decide the angle and height at which to fire the hero.
• fired: This happens after the user releases the mouse button. At this point, we
launch the hero and let the physics engine handle everything while the user just
watches. The game will pan so that the user can follow the path of the hero as far as
possible.
We may implement more states as needed. One thing to note about these different states is that only
one of them is possible at a time, and there are clear conditions for transitioning from one state to another,
and what is possible during each state. This construct is popularly known as a finite state machine in
computer science. We will be using these states to create some simple conditions for our panning code.
First we will build a panTo() method that will pan the screen to any specific location on the game, as
shown in Listing 2-17. All of this code goes inside the game object after the start() method.
Listing 2-17. Implementing a panTo() Function
// Maximum panning speed per frame in pixels
maxSpeed: 3,
// Pan the screen so it centers at newCenter
// (or at least as close as possible)
panTo: function(newCenter) {
// Minimum and Maximum panning offset
var minOffset = 0;
var maxOffset = game.currentLevel.backgroundImage.width - game.canvas.width;
// The current center of the screen is half the screen width from the left offset
var currentCenter = game.offsetLeft + game.canvas.width / 2;

Chapter 2 ■ Creating a BasiC game World
42
// If the distance between new center and current center is > 0 and we have not panned
to the min and max offset limits, keep panning
if (Math.abs(newCenter - currentCenter) > 0 && game.offsetLeft <= maxOffset && game.
offsetLeft >= minOffset) {
// We will travel half the distance from the newCenter to currentCenter in each tick
// This will allow easing
var deltaX = (newCenter - currentCenter) / 2;
// However if deltaX is really high, the screen will pan too fast, so if it is
greater than maxSpeed
if (Math.abs(deltaX) > game.maxSpeed) {
// Limit deltaX to game.maxSpeed (and keep the sign of deltaX)
deltaX = game.maxSpeed * Math.sign(deltaX);
}
// And if we have almost reached the goal, just get to the ending in this turn
if (Math.abs(deltaX) <= 1) {
deltaX = (newCenter - currentCenter);
}
// Finally add the adjusted deltaX to offsetX so we move the screen by deltaX
game.offsetLeft += deltaX;
// And make sure we don't cross the minimum or maximum limits
if (game.offsetLeft <= minOffset) {
game.offsetLeft = minOffset;
// Let calling function know that we have panned as close as possible to the
newCenter
return true;
} else if (game.offsetLeft >= maxOffset) {
game.offsetLeft = maxOffset;
// Let calling function know that we have panned as close as possible to the
newCenter
return true;
}
} else {
// Let calling function know that we have panned as close as possible to the
newCenter
return true;
}
},
The panTo() method slowly pans the screen to a given x coordinate (newCenter) and returns true either
when the screen center reaches the coordinate or when the screen has panned to the extreme left or right.
The speed of panning varies based on the distance of the current center from newCenter, so the panning
slows down as the screen pans closer to its destination. The code caps the panning speed using maxSpeed so
that the panning never becomes too fast.
Each time panTo() is called, the screen center is shifted toward newCenter while there is still space to pan

Chapter 2 ■ Creating a BasiC game World
43
Eventually, once the screen either reaches its destination or reaches as close as possible (when
offset reaches either minOffset or maxOffset), the method returns true. The maxOffset is calculated by
comparing the width of the background image with that of the canvas, so the game will never pan past the
end of the background image.
Now that we have an effective way to pan the screen, we will use it to implement panning within the
handleGameLogic() method, as shown in Listing 2-18.
Listing 2-18. Implementing Panning in handleGameLogic()
handleGameLogic: function() {
if (game.mode === "intro") {
if (game.panTo(700)) {
game.mode = "load-next-hero";
}
}
if (game.mode === "wait-for-firing") {
if (mouse.dragging) {
game.panTo(mouse.x + game.offsetLeft);
} else {
game.panTo(game.slingshotX);
}
}
if (game.mode === "load-next-hero") {
// First count the heroes and villains and populate their respective arrays
// Check if any villains are alive, if not, end the level (success)
// Check if there are any more heroes left to load, if not end the level (failure)
// Load the hero and set mode to wait-for-firing
game.mode = "wait-for-firing";
}
if (game.mode === "firing") {
// If the mouse button is down, allow the hero to be dragged around and aimed
// If not, fire the hero into the air
}
if (game.mode === "fired") {
// Pan to the location of the current hero as he flies
// Wait till the hero stops moving or is out of bounds
}
if (game.mode === "level-success" || game.mode === "level-failure") {
// First pan all the way back to the left
// Then show the game as ended and show the ending screen
}
},

We have now improved the handleGameLogic() method so it implements several of the game states we
described earlier.
When the game is in the default intro mode, we pan the screen all the way to the right and, once there,
switch the mode to load-next-hero. We haven’t implemented the load-next-hero, firing, fired, level-
success, or level-failure states yet. For now, the code just flips the load-next-hero mode on to wait-
for-firing, which pans the screen back to the slingshot.
If we run the code we have so far, we will see that as the level starts, the screen pans toward the right
until we reach the right extreme and panTo() returns true (see Figure 2-6). The game mode then changes
from intro to wait-for-firing and the screen slowly pans back to the starting position and waits for user
input.
We can also use the mouse to interact with the level, by clicking and holding the mouse on the right side
of the screen to make the screen pan right and then releasing the mouse button to pan back to the left.

Summary
In this chapter we set out to develop the basic framework for our game.
We started by defining and implementing a splash screen and game menu. We then created a simple
level system and an asset loader to dynamically load the images used by each level. We set up the game
canvas and animation loop and implemented parallax scrolling to give the illusion of depth. We used game
states to simplify our game flow and move around our level in an interesting way. Finally, we captured and
used mouse events to let the player pan around the level.
At this point we have a basic game world that we can interact with, so we are ready to add the various
game entities and game physics.
In the next chapter we will take a break from this game code to briefly explore the basics of the Box2D
physics engine and see how it can be used to model typical game physics. We will also look at how to
animate characters using data from the physics engine.
Once we have done this, in Chapter 4, we will integrate the Box2D engine with our existing game
framework so that the game entities move realistically within our game world, after which we can actually
start playing the game


