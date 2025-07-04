CHAPTER 1 HTML5 and JavaScript Essentials
=========================================

HTML5, the latest version of the HTML standard, provides us with many new features for improved
interactivity and media support. These new features (such as canvas, audio, and video) have made it
possible to make fairly rich and interactive applications for the browser without requiring third-party plug-
ins such as Flash.

Even though the HTML5 standard continues to grow and improve as a “living standard,” all the
elements that we need for building some very amazing games are already supported by all modern browsers
(Google Chrome, Mozilla Firefox, Internet Explorer 9+, Microsoft Edge, Safari, and Opera).

Over the past half-decade (since I wrote the first edition of this book), HTML5 support has become a
standard across all modern browsers, both desktop and mobile. This means we now can make games in
HTML5 that can be easily extended to work on both mobile and desktop across a wide variety of operating
systems.

All you need to get started on developing your games in HTML5 are a good text editor to write your
code (I currently use Visual Studio Code on both Mac and PC—https://code.visualstudio.com/) and
a modern, HTML5-compatible browser (I primarily use Google Chrome). Once you have installed your
preferred text editor and HTML5-compatible browser, you are ready to create your first HTML5 page.

A Basic HTML5 Page
------------------

The structure of an HTML5 document is very similar to the structure in previous versions, except that
HTML5 has a much simpler DOCTYPE tag at the beginning of the document. This simpler DOCTYPE tag
lets the browser know that it needs to use the latest standards when interpreting the document.

Listing 1-1 provides a skeleton for a very basic HTML5 file that we will be using as a starting point for the
rest of this chapter. Executing this code involves saving it as an HTML file and then opening the file in a web
browser. If you do everything correctly, the browser should pop up the message “Hello World!”

Listing 1-1. Basic HTML5 File Skeleton

.. code:: HTML

   <!DOCTYPE html>
   <html>
   <head>
   <meta http-equiv="Content-type" content="text/html; charset=utf-8">
   <title>Sample HTML5 File</title>
   <script type="text/javascript">
   // This function will be called once the page loads completely
   function pageLoaded(){
      alert("Hello World!");
   }

   </script>
   </head>
   <body onload="pageLoaded();">
   </body>
   </html>

■ Note We use the body’s onload event to call our pageLoaded() function so that we can be sure that
our page has completely loaded before we start working with it. this will become important when we start
manipulating elements like images and audio. trying to access these elements before the browser has finished
loading them will cause JavaScript errors or other unexpected behavior.

Before we start developing games, we need to go over some of the basic building blocks that we will be
using to create our games. The most important ones that we need are

• The canvas element, to render shapes and images
• The audio element, to add sounds and background music
• The image element, to load our game artwork and display it on the canvas
• The browser timer functions, and game loops to handle animation

The canvas Element
------------------

The most important element for use in our games is the new canvas element. As per the HTML5 standard
specification, “The canvas element provides scripts with a resolution-dependent bitmap canvas, which
can be used for rendering graphs, game graphics, art, or other visual images on the fly.” You can find the
complete specification at https://html.spec.whatwg.org/multipage/scripting.html#the-canvas-
element.

The canvas allows us to draw primitive shapes like lines, circles, and rectangles, as well as images and
text, and has been optimized for fast drawing. Browsers have started enabling GPU-accelerated rendering of
2D canvas content, so that canvas-based games and animations run fast.

Using the canvas element is fairly simple. Place the <canvas> tag inside the body of the HTML5 file we
created earlier, as shown in Listing 1-2.

Listing 1-2. Creating a Canvas Element

.. code:: Python

   <body onload="pageLoaded();">
      <canvas width="640" height="480" id="testcanvas" style="border: 1px solid black;">
         Your browser does not support HTML5 Canvas. Please shift to a newer browser.
      </canvas>
   </body>

The code in Listing 1-2 creates a canvas that is 640 pixels wide and 480 pixels high. By itself, the canvas
shows up as a blank area (with a black border that we specified in the style). We can now start drawing inside
this rectangle using JavaScript.

■ Note Browsers that do not support canvas will ignore the <canvas> tag and render anything inside
the <canvas> tag. You can use this feature to show users on older browsers alternative fallback content or a
message directing them to a more modern browser.

We draw on the canvas using what is known as its primary rendering context. We can access this context
with the getContext() method of the canvas object. The getContext() method takes one parameter: the
type of context that we need. We will be using the 2d context for our games.

Listing 1-3 shows how we can access the canvas and its context once the page has loaded by modifying
the pageLoaded() method.

Listing 1-3. Accessing the Canvas Context

.. code:: Python

   <script type="text/javascript">
      function pageLoaded(){
         // Get a handle to the canvas object
         var canvas = document.getElementById("testcanvas");
         // Get the 2d context for this canvas
         var context = canvas.getContext("2d");
         // Our drawing code here...
      }
   </script>

■ Note all browsers support the 2d context that we need for 2d graphics. Most browsers also implement
other contexts with names such as webgl or experimental-webgl for 3d graphics.

This code doesn’t seem to do anything yet. However, we now have access to a 2d context object. This
context object provides us with a large number of methods that we can use to draw our game elements on
the screen. This includes methods for the following:

• Drawing rectangles
• Drawing complex paths (lines, arcs, and so forth)
• Drawing text
• Customizing drawing styles (colors, alpha, textures, and so forth)
• Drawing images
• Transforming and rotating

We will look at each of these methods in more detail in the following sections

Drawing Rectangles
------------------

Before you can start drawing on the canvas, you need to understand how to reference coordinates on it. The
canvas uses a coordinate system with the origin (0, 0) at the top-left corner of the canvas, x increasing toward
the right, and y increasing downward, as illustrated in Figure 1-1.

We can draw a rectangle on the canvas using the context’s rectangle methods:

• fillRect(x, y, width, height): Draws a filled rectangle
• strokeRect(x, y, width, height): Draws a rectangular outline
• clearRect(x, y, width, height): Clears the specified rectangular area and makes
it fully transparent

Listing 1-4. Drawing Rectangles Inside the Canvas

.. code:: Python

   // FILLED RECTANGLES
   // Draw a solid square with width and height of 100 pixels at (200,10)
   context.fillRect(200, 10, 100, 100);
   // Draw a solid square with width of 90 pixels and height of 30 pixels at (50,70)
   context.fillRect(50, 70, 90, 30);
   // STROKED RECTANGLES
   // Draw a rectangular outline with width and height of 50 pixels at (110, 10)
   context.strokeRect(110, 10, 50, 50);
   // Draw a rectangular outline with width and height of 50 pixels at (30, 10)
   context.strokeRect(30, 10, 50, 50);
   // CLEARING RECTANGLES
   // Clear a rectangle with width of 30 pixels and height of 20 pixels at (210, 20)
   context.clearRect(210, 20, 30, 20);
   // Clear a rectangle with width of 30 pixels and height of 20 pixels at (260, 20)
   context.clearRect(260, 20, 30, 20);

The code in Listing 1-4 will draw multiple rectangles on the top-left corner of the canvas, as shown in
Figure 1-2. Add the code to the bottom of the pageLoaded() method, save the file, and refresh the browser to
see the result of these changes.

Drawing Complex Paths
---------------------

The context has several methods that allow us to draw complex shapes when simple boxes aren’t enough:

• beginPath(): Starts recording a new shape
• closePath(): Closes the path by drawing a line from the current drawing point to the
starting point
• fill(), stroke(): Fills or draws an outline of the recorded shape
• moveTo(x, y): Moves the drawing point to x, y
• lineTo(x, y): Draws a line from the current drawing point to x, y
• arc(x, y, radius, startAngle, endAngle, anticlockwise): Draws an arc at x, y
with specified radius

Using these methods, drawing a complex path involves the following steps:

* 1. Use beginPath() to start recording the new shape.
* 2. Use moveTo(), lineTo(), and arc() to create the shape.
* 3. Optionally, close the shape using closePath().
* 4. Use either stroke() or fill() to draw an outline or filled shape. Using fill() automatically closes any open paths

Listing 1-5 will create the triangles, arcs, and shapes shown in Figure 1-3.

Listing 1-5. Drawing Complex Shapes Inside the Canvas

.. code:: Python

   // DRAWING COMPLEX SHAPES
   // Draw a filled triangle
   context.beginPath();
   context.moveTo(10, 120); // Start drawing at 10, 120
   context.lineTo(10, 180);
   context.lineTo(110, 150);
   context.fill(); // Close the shape and fill it out
   // Draw a stroked triangle
   context.beginPath();
   context.moveTo(140, 160); // Start drawing at 140, 160
   context.lineTo(140, 220);
   context.lineTo(40, 190);
   context.closePath();
   context.stroke();
   // Draw a more complex set of lines
   context.beginPath();
   context.moveTo(160, 160); // Start drawing at 160, 160
   context.lineTo(170, 220);
   context.lineTo(240, 210);
   context.lineTo(260, 170);
   context.lineTo(190, 140);
   context.closePath();
   context.stroke();
   // DRAWING ARCS & CIRCLES
   // Draw a semicircle
   context.beginPath();
   // Draw an arc at (400, 50) with radius 40 from 0 to 180 degrees, anticlockwise
   // PI radians = 180 degrees
   context.arc(100, 300, 40, 0, Math.PI, true);
   context.stroke();
   // Draw a full circle
   context.beginPath();
   // Draw an arc at (500, 50) with radius 30 from 0 to 360 degrees, anticlockwise
   // 2*PI radians = 360 degrees
   context.arc(100, 300, 30, 0, 2 * Math.PI, true);
   context.fill();
   // Draw a three-quarter arc
   context.beginPath();
   // Draw an arc at (400, 100) with radius 25 from 0 to 270 degrees, clockwise
   // (3/2*PI radians = 270 degrees)
   context.arc(200, 300, 25, 0, 3 / 2 * Math.PI, false);
   context.stroke();

Drawing Text
------------

The context also provides us with two methods for drawing text on the canvas:

• strokeText(text, x, y): Draws an outline of the text at (x, y)
• fillText(text, x, y): Fills out the text at (x, y)

Unlike text inside other HTML elements, text inside canvas does not have CSS layout options such
as wrapping, padding, and margins. However, the text output can be modified by setting the context font,
stroke, and fill style properties, as shown in Listing 1-6.

Listing 1-6. Drawing Text Inside the Canvas

.. code:: Python

   // DRAWING TEXT
   context.fillText("This is some text...", 330, 40);
   // Modify the font
   context.font = "10pt Arial";
   context.fillText("This is in 10pt Arial...", 330, 60);
   // Draw stroked text
   context.font = "16pt Arial";
   context.strokeText("This is stroked in 16pt Arial...", 330, 80);

The code in Listing 1-6 will draw the text shown in Figure 1-4.

When setting the font property, you can use any valid CSS font property. As you can see from the
previous example, while you may not have the same degree of flexibility in formatting that HTML and CSS
provide, you can still do a lot with the canvas text methods. Of course, this would look a lot better if we could
add some color.

Customizing Drawing Styles (Colors and Textures)
------------------------------------------------

So far, everything we have drawn has been in black, but only because the canvas default drawing color is
black. We have other options. We can style and customize the lines, shapes, and text on a canvas. We can
draw using different colors, line styles, transparencies, and even fill textures inside the shapes.

If we want to apply colors to a shape, there are two important properties we can use:

• fillStyle: Sets the default color for all future fill operations
• strokeStyle: Sets the default color for all future stroke operations

Both properties can take valid CSS colors as values. This includes rgb() and rgba() values as well as
color constant values. For example, context.fillStyle = "red"; will define the fill color as red for all future
fill operations (fillRect, fillText, and fill).

In addition, the context object’s createTexture() method creates a texture from an image, which can
also be used as a fill style. Before we can use an image, we need to load the image into the browser. For now,
we will just add an <img> tag after the <canvas> tag in our HTML file:

.. code:: Python

   <img src="fire.png" id="fire">

The code in Listing 1-7 will draw colored and textured rectangles, as shown in Figure 1-5.

Listing 1-7. Drawing with Colors and Textures

.. code:: Python

   // FILL STYLES AND COLORS
   // Set fill color to red
   context.fillStyle = "red";
   // Draw a red filled rectangle
   context.fillRect(310, 160, 100, 50);
   // Set stroke color to green
   context.strokeStyle = "green";
   // Draw a green stroked rectangle
   context.strokeRect(310, 240, 100, 50);

   // Set fill color to yellow using rgb()
   context.fillStyle = "rgb(255, 255, 0)";
   // Draw a yellow filled rectangle
   context.fillRect(420, 160, 100, 50);
   // Set fill color to green with an alpha of 0.6
   context.fillStyle = "rgba(0, 255, 0, 0.6)";
   // Draw a semi-transparent green filled rectangle
   context.fillRect(450, 180, 100, 50);
   // TEXTURES
   // Get a handle to the Image object
   var fireImage = document.getElementById("fire");
   var pattern = context.createPattern(fireImage, "repeat");
   // Set fill style to newly created pattern
   context.fillStyle = pattern;
   // Draw a pattern filled rectangle
   context.fillRect(420, 240, 130, 50);

In addition to these methods, the canvas also provides several methods to use color gradients, shadows,
and patterns while drawing. I encourage you to take the time to explore the canvas and context API more
thoroughly when you get the chance.

Drawing Images
--------------

Although we can achieve quite a lot using just the drawing methods we have covered so far, we still need
to explore how to use images. Learning how to draw images will enable you to draw game backgrounds,
character sprites, and effects like explosions that can make your games come alive.

We can draw images and sprites on the canvas using the drawImage() method. The context provides us
with three different versions of this method:

• drawImage(image, x, y): Draws the image on the canvas at (x, y)
• drawImage(image, x, y, width, height): Scales the image to the specified width
and height and then draws it at (x, y)
• drawImage(image, sourceX, sourceY, sourceWidth, sourceHeight, x, y,
width, height): Clips a rectangle from the image at (sourceX, sourceY) with
dimensions (sourceWidth, sourceHeight), scales it to the specified width and height,
and draws it on the canvas at (x, y)

Before we start drawing images, we need to load another image into the browser. We will add one more
<img> tag after the <canvas> tag in our HTML file:

.. code:: Python

   <img src="spaceship.png" id="spaceship">

Once the image has been loaded, we can draw it using the code shown in Listing 1-8.

Listing 1-8. Drawing Images

.. code:: Python

   // DRAWING IMAGES
   // Get a handle to the Image object
   var image = document.getElementById("spaceship");
   // Draw the image at (0, 350)
   context.drawImage(image, 0, 350);
   // Scale the image to half the original size
   context.drawImage(image, 0, 400, 100, 25);
   // Draw part of the image
   context.drawImage(image, 0, 0, 60, 50, 0, 420, 60, 50);

The code in Listing 1-8 will draw the images shown in Figure 1-6. The last example in Listing 1-8, where
we draw only a part of the image, will become especially useful when we start using sprite sheets to combine
our game assets and store multiple sprites in a single large image

Transforming and Rotating
-------------------------

The context object has several methods for transforming the coordinate system used for drawing elements.
These methods are

• translate(x, y): Moves the canvas and its origin to a different point (x, y)
• rotate(angle): Rotates the canvas clockwise around the current origin by angle
(radians)
• scale(x, y): Scales the objects drawn by a multiple of x and y along the respective
axes

A common use of these methods is to rotate objects or sprites when drawing them. We can do this by

• Translating the canvas origin to the location of the object
• Rotating the canvas by the desired angle
• Drawing the object
• Restoring the canvas back to its original state

Let’s look at rotating objects before drawing them, as shown in Listing 1-9.

Listing 1-9. Rotating Objects Before Drawing Them

.. code:: Python
 
   // ROTATION AND TRANSLATION
   //Translate origin to location of object
   context.translate(250, 370);
   //Rotate about the new origin by 60 degrees
   context.rotate(Math.PI / 3);
   context.drawImage(image, 0, 0, 60, 50, -30, -25, 60, 50);
   //Restore to original state by rotating and translating back
   context.rotate(-Math.PI / 3);
   context.translate(-240, -370);

   //Translate origin to location of object
   context.translate(300, 370);
   //Rotate about the new origin
   context.rotate(3 * Math.PI / 4);
   context.drawImage(image, 0, 0, 60, 50, -30, -25, 60, 50);
   //Restore to original state by rotating and translating back
   context.rotate(-3 * Math.PI / 4);
   context.translate(-300, -370);

The code in Listing 1-9 will draw the two rotated ship images shown in Figure 1-7.

■ Note apart from rotating and translating back, you can also restore the canvas state by first using the
save() method before starting the transformations and then calling the restore() method at the end of the
transformations.

With this last example, we have covered all the essentials of the canvas that we will need to build our
games. There is still a lot of the API that we have not covered here. You can read more about the canvas API
at https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API.

The audio Element
-----------------

Using the HTML5 audio element is the new standard way to embed an audio file into a web page. Until this
element came along, most pages played audio files using embedded plug-ins (such as Flash).

The audio element can be created in HTML using the <audio> tag or in JavaScript using the Audio
object. An example is shown in Listing 1-10.

Listing 1-10. The HTML5 <audio> Tag

.. code:: Python

   <audio src="music.mp3" controls="controls">
      Your browser does not support HTML5 Audio. Please shift to a newer browser.
   </audio>

 Note Browsers that do not support audio will ignore the <audio> tag and render anything inside the
<audio> tag. You can use this feature to show users on older browsers alternative fallback content or a
message directing them to a more modern browser.

The controls attribute included in Listing 1-10 makes the browser display a simple browser-specific
interface for playing the audio file (such as a play/pause button and volume controls).

The audio element has several other attributes, such as the following:

• preload: Specifies whether or not the audio should be preloaded
• autoplay: Specifies whether or not to start playing the audio as soon as the object
has loaded
• loop: Specifies whether to keep replaying the audio once it has finished

There are currently three popular file formats supported by browsers: MP3 (MPEG Audio Layer 3),
WAV (Waveform Audio), and OGG (Ogg Vorbis). One thing to watch out for is that not all browsers support
all audio formats. Firefox, for example, does not play MP3 files directly because of patent and licensing
issues (and has to rely on operating system support), though it does play OGG and WAV files directly. Safari,
on the other hand, supports MP3 but does not support OGG. Table 1-1 shows the formats supported by the
latest version of popular browsers.

The way to work around this limitation is to provide the browser with alternative formats to play. The
audio element allows multiple source elements within the <audio> tag, and the browser automatically uses
the first recognized format (see Listing 1-11).

Listing 1-11. The <audio> Tag with Multiple Sources

.. code:: Python

   <audio controls="controls">
      <source src="music.ogg" type="audio/ogg" />
      <source src="music.mp3" type="audio/mpeg" />
         Your browser does not support HTML5 Audio. Please shift to a newer browser.
   </audio>

Audio can also be loaded dynamically by using the Audio object in JavaScript. The Audio object allows
us to load, play, and pause sound files as needed, which is what will be used for games (see Listing 1-12).

Listing 1-12. Dynamically Loading an Audio File

.. code:: Python

   <script>
      //Create a new Audio object
      var sound = new Audio();
      // Select the source of the sound
      sound.src = "music.ogg";
      // This will only work on browsers that support OGG
      // Play the sound
      // sound.play();
   </script>

Unlike with the <audio> HTML tag, where we could easily specify multiple formats, when using
JavaScript we need a way to detect the formats supported by the browser so we can load the appropriate
format. The Audio object provides us with a method called canPlayType() that returns values of "", "maybe",
or "probably" to indicate support for a specific codec. We can use this to create a simple check and load the
appropriate audio format, as shown in Listing 1-13.

Listing 1-13. Testing for Audio Support

.. code:: Python

   <script>
   var audio = document.createElement("audio");
   var mp3Support, oggSupport;
   if (audio.canPlayType) {
   // Currently canPlayType() returns: "", "maybe", or "probably"
   mp3Support = "" !== audio.canPlayType("audio/mpeg");
   oggSupport = "" !== audio.canPlayType("audio/ogg; codecs=\"vorbis\"");
   } else {
   // The audio tag is not supported
   mp3Support = false;
   oggSupport = false;
   }

   // Check for ogg, then mp3, and finally set soundFileExtn to undefined

   var soundFileExtn = oggSupport ? ".ogg" : mp3Support ? ".mp3" : undefined;
   if (soundFileExtn) {
   var sound = new Audio();
   // Load sound file with the detected extension
   sound.src = "music" + soundFileExtn;
   sound.play();
   }
   </script>


Listing 1-13 uses canPlayType() to set a soundFileExtn property, which we can then use to load future
audio files. We will use this idea when we build audio into our games in later chapters.

The Audio object triggers several different events to help us know when the sound has been loaded and
is ready for playing. The loadedmetadata event is fired when the initial audio file metadata has been loaded
by the browser. The canplay event is fired once enough of the audio file has been downloaded
to start playing, and the canplaythrough event is fired when the browser can play the entire audio file
without needing to pause and buffer the file. We can use the canplaythrough event to keep track of when
the sound file has been loaded sufficiently for our purposes. Listing 1-14 shows an example of how the
canplaythrough event can be used to play a sound once it has been loaded.

Listing 1-14. Waiting for an Audio File to Load

.. code:: Python

   <script>
   // Play the sound after waiting for it to load
   if (soundFileExtn) {
   var sound = new Audio();
   sound.addEventListener("canplaythrough", function() {
   sound.play();
   });
   // Load sound file with the detected extension
   sound.src = "music" + soundFileExtn;
   }
   </script>

Now that we have looked at how to check for supported audio formats, dynamically load audio, and
detect when an audio file has loaded, we can combine these concepts to design an audio preloader that will
dynamically load all the game audio resources before starting the game. We will look at this idea in more
detail in the next few chapters when we build an asset loader for our games.

The image Element
-----------------

The image element allows us to display images inside an HTML file. The simplest way to do this is by using
the <image> tag and specifying an src attribute, as shown earlier and again here in Listing 1-15.
Listing 1-15. The <image> Tag

.. code:: Python

   <img src="spaceship.png" id="spaceship">

You can also load an image dynamically using JavaScript by instantiating a new Image object and setting
its src property, as shown in Listing 1-16.

Listing 1-16. Dynamically Loading an Image

.. code:: Python

   var image = new Image();
   image.src = "spaceship.png";

You can use either of these methods to get an image for drawing on a canvas

Image Loading
-------------

Games are usually designed to wait for all the images to load completely before they start so as to avoid
errors due to partly loaded images. While the images are being loaded, programmers commonly display a
progress bar or status indicator that shows the percentage of images loaded.

The Image object provides us with an onload event that gets fired as soon as the browser finishes
loading the image file. Using this event, we can keep track of when the image has loaded, as shown in the
example in Listing 1-17.

Listing 1-17. Waiting for an Image to Load

.. code:: Python

   image.onload = function() {
      alert("Image finished loading");
   };

Using the onload event, we can create a simple image loader that tracks images loaded so far
(see Listing 1-18).

Listing 1-18. Simple Image Loader

.. code:: Python

   var imageLoader = {
   loaded: true,
   loadedImages: 0,
   totalImages: 0,
   load: function(url) {
   this.totalImages++;
   this.loaded = false;
   var image = new Image();
   image.src = url;
   image.onload = function() {
   imageLoader.loadedImages++;
   if (imageLoader.loadedImages === imageLoader.totalImages) {
   imageLoader.loaded = true;
   }
   image.onload = undefined;
   }
   return image;
   }
   }

In this code, we create an imageLoader object with a load() method. This load() method takes an
image URL, and increases the totalImages counter each time it is called. It then dynamically creates
an Image object and sets the object’s src property. Finally, it uses the object’s onload event handler to
increment the loadedImages counter, and once the counter reaches totalImages, it sets the loaded variable
back to true.

This image loader can be invoked to load a large number of images (say in a loop). We can check to see
if all the images are loaded by using imageLoader.loaded, and we can draw a percentage/progress bar by
using loadedImages/totalImages.

Don’t worry about actually using this loader yet. This is just a partial code snippet to help illustrate the
basic idea for an image loader. We will be building a more complete version of an asset loader for our games
in the coming chapters.

Sprite Sheets
-------------

Another concern when your game has a lot of images is how to optimize the way the server loads these
images. Games can require anything from tens to hundreds of images. Even a simple real-time strategy (RTS)
game will need images for different units, buildings, maps, backgrounds, and effects. In the case of units and
buildings, you might need multiple versions of images to represent different directions and states, and in the
case of animations, you might need an image for each frame of the animation.

In one of my earlier RTS game projects, I used individual images for each animation frame and state
for every unit and building, ending up with over 1,000 images. Since most browsers make only a few
simultaneous requests at a time, downloading all these images took a lot of time, with an overload of HTTP
requests on the server. While this wasn’t a problem when I was testing the code locally, it was a bit of a pain
when the code went onto the server. Players ended up waiting 5 to 10 minutes (sometimes longer) for the
game to load before they could actually start playing. All the concurrent requests also caused considerable
load on my web server.

Luckily for us, there is a simple way to fix this problem of too many images and HTTP requests, and this
is where sprite sheets come in. Sprite sheets store all the sprites (images) for a game entity in a single large
image file. When displaying the images, we calculate the offset of the sprite we want to show and use the
ability of the drawImage() method to draw only a part of an image. The spaceship.png image we have been
using in this chapter is an example of a sprite sheet since it contains multiple spaceship sprites within the
same file.

Looking at the code fragments in Listings 1-19 and 1-20, you can see examples of drawing an image
loaded individually versus drawing an image loaded in a sprite sheet.

Listing 1-19. Drawing an Image Loaded Individually

.. code:: Python

   // First: (Load individual images and store in a big array)
   // Three arguments: the element, and destination (x, y) coordinates
   var image = imageArray[imageNumber];
   context.drawImage(image, x, y);

Listing 1-20. Drawing an Image Loaded in a Sprite Sheet

.. code:: Python

   // First: (Load single sprite sheet image)
   // Nine arguments: the element, source (x, y) coordinates,
   // source width and height (for cropping),
   // destination (x, y) coordinates, and
   // destination width and height (resize)
   context.drawImage (this.spriteImage, this.imageWidth*(imageNumber), 0, this.imageWidth,
   this.imageHeight, x, y, this.imageWidth, this.imageHeight);

In the first example, we store each individual sprite as a separate Image object in an array, and then
draw a specific sprite by accessing the Image object. This method would require as many Image objects as
sprites, and just as many HTTP requests to the server to fetch each image.

In the second example, we load a single large sprite sheet where all the sprites are placed side by side.
Drawing the sprite involves calculating the x and y offset of the sprite within the image and then drawing
just the appropriate portion of the image. This method involves only a single HTTP request and only a single
Image object per sprite sheet, along with a little more complexity in computing the sprite location within the
image. In terms of utilization of network resources, this is significantly better.

The following are some of the advantages of using a sprite sheet, which make using sprite sheets for any
kind of complex game a no-brainer:

• Fewer HTTP requests: A unit that has 80 images (and so 80 requests) will now be
downloaded in a single HTTP request.
• Better compression: Storing the images in a single file means that the header
information doesn’t repeat for each file and the single combined file is significantly
smaller than all the individual files.
• Faster load times: With significantly lower HTTP requests and file sizes, the
bandwidth usage and load times for the game drop as well, which means users won’t
have to wait for as long a time for the game to load.

Animation: Timer and Game Loops
-------------------------------

The last thing you need to understand before you get started with actually building games is animation.
Animating is just a matter of drawing an object, erasing it, and drawing it again at a new position, fast
enough that the human eye only sees it as smooth movement.

The most common way to handle animation is by keeping a drawing function that gets called several
times a second. Within this function, we iterate through all the game entities and draw them one by one.

Simpler games typically handle both animating or moving the entities and drawing them within the
same drawing function. However, some games have a separate control/animation function that updates
movement of the entities within the game, while the drawing function handles only the actual drawing of the
entities on the screen. The animation function, since it is independent of the drawing function, can be called
less often than the drawing function. Listing 1-21 contains skeleton code illustrating a typical animation and
drawing routine.

Listing 1-21. Typical Animation and Drawing Loop

.. code:: Python

   function animationLoop(){
   // Iterate through all the items in the game
   //And move them
   }
   function drawingLoop(){
   //1. Clear the canvas
   //2. Iterate through all the items
   //3. And draw each item
   }

Assuming we built a working drawingLoop() method for our game, we need to figure out a way to call
drawingLoop() repeatedly at regular intervals. The simplest way of achieving this is to use the two timer
methods setInterval() and setTimeout(). setInterval(functionName, timeInterval) tells the browser
to keep calling a given function repeatedly at fixed time intervals until the clearInterval() function is
called. When we need to stop animating (when the game is paused, or has ended), we use clearInterval().
Listing 1-22 shows an example of how this would work

Listing 1-22. Calling Drawing Loop with setInterval()

.. code:: Python

   // Call drawingLoop() every 20 milliseconds
   var gameLoop = setInterval(drawingLoop, 20);
   // Stop calling drawingLoop() and clear the gameLoop variable
   clearInterval(gameLoop);
   setTimeout(functionName, timeInterval) tells the browser to call a given function one single time
   after a given time interval, as shown in the example in Listing 1-23.

Listing 1-23. Calling Drawing Loop with setTimeout()

.. code:: Python

   function drawingLoop(){
   // 1. Call the drawingLoop() method once after 20 milliseconds
   var gameLoop = setTimeout(drawingLoop,20);
   // 2. Clear the canvas
   // 3. Iterate through all the items
   // 4. And draw them
   }

Unlike with setInterval(), when using setTimeout() we need to make a new call each time since
setTimeout() only calls the drawingLoop() method once. When we need to stop animating (when the game
is paused, or has ended), we can use clearTimeout():

.. code:: Python

   // Stop calling drawingLoop() and clear the gameLoop variable
   clearTimeout(gameLoop);

Now, don’t get too worried if some of this seems a little confusing or abstract at this point. This chapter
is only meant to be a quick crash course, and I just want you to get a general overview of how this works. We
will be looking at detailed working examples of all of these functions when we start building our games in
later chapters, at which point everything should start making a lot more sense.

requestAnimationFrame
---------------------

While using setInterval() or setTimeout() as a way to animate frames does work, browser vendors have
come up with a new API specifically for handling animation. Some of the advantages of using this API
instead of setInterval() are that the browser can do the following:

• Optimize the animation code into a single reflow-and-repaint cycle, resulting in
smoother animation
• Pause the animation when the tab is not visible, leading to less CPU and GPU usage
• Automatically cap the frame rate on machines that do not support higher frame
rates, or increase the frame rate on machines that are capable of processing them

Around the time that I was writing the first edition of this book, browser vendors had their own
proprietary names for the methods in the API (such as Microsoft’s msrequestAnimationFrame() method and
Mozilla’s mozRequestAnimationFrame() method). Since then, however, all browsers have standardized this
API implementation and you can now use requestAnimationFrame() and cancelAnimationFrame() across
all browsers that support HTML5.

■ Note now that we have no guarantee of frame rate (the browser decides the speed at which it will call our
drawing loop), we need to ensure that animated objects move at the same speed on the screen independent of
the actual frame rate. We do this either by animating objects in a separate setTimeout() or setInterval()
loop, or by calculating the time since the previous drawing cycle and using it to interpolate the location of the
object being animated.

The requestAnimationFrame() method can be called from within the drawingLoop() method similar to
setTimeout(), as shown in Listing 1-24.

Listing 1-24. Calling Drawing Loop with requestAnimationFrame()

.. code:: Python

   function drawingLoop(nowTime){
   // 1. Call the drawingLoop() method whenever the browser is ready to draw again
   var gameLoop = requestAnimationFrame(drawingLoop);
   // 2. Clear the canvas
   // 3. Iterate through all the items
   // 4. Optionally use nowTime and the last nowTime to interpolate frames
   // 5. And draw the items
   }

When we need to stop animating (when the game is paused, or has ended), we can use
cancelAnimationFrame():

.. code:: Python

   // Stop calling drawingLoop() and clear the gameLoop variable
   cancelAnimationFrame(gameLoop);

This section has covered the primary ways to add animation to your games. We will be looking at actual
implementations of these animation loops in the coming chapters.

Summary
-------

In this chapter, we looked at the basic elements of HTML5 that are needed for building games. We covered
how to use the canvas element to draw shapes, write text, and manipulate images. We examined how to use
the audio element to load and play sounds across different browsers. We also briefly covered the basics of
animation, preloading objects and using sprite sheets.

The topics we covered here are just a starting point and not exhaustive by any means. This chapter was
meant to be a quick crash course or refresher on HTML5 and a handy reference for easily looking up syntax
or code examples whenever needed. As I mentioned earlier, we will be going into these topics in more detail,
along with complete implementations, as we build our games in the coming chapters.

If you had trouble keeping up and would like a more detailed explanation of the basics of JavaScript and
HTML5, I would recommend reading introductory books on JavaScript and HTML5, such as JavaScript for
Absolute Beginners by Terry McNavage and The Essential Guide to HTML5 by Jeanine Meyer.

Now that we have the basics out of the way, let’s get started building our first game.


