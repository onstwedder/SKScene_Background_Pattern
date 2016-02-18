# SKScene_Background_Pattern
Since iOS' SKView.scene is currently not supporting UIColor (pattern: image) a workaround

#Credits#
Based on this tutorial:
http://xcodenoobies.blogspot.nl/2015/08/skspritekit-how-to-fill-skscene.html
by emir Bytes https://plus.google.com/102798309408233437491/posts

I've created a swift function #addBackgroundPattern()#

#Background pattern credit#
I used paisley.png image from http://subtlepatterns.com as a great example of a tileable image.

#What it does#
It takes a background image and tiles it on the background of a SKView. The FPS on a real device is still 60FPS.

in the viewDidLoad of the viewcontroller presenting the SKScene, just call the addBackgroundPattern() function and voila -
there it will add the tiles.

#Why not use UIColor( imagepattern)?#
In other views you can just create a UIColor with an imagepattern and setBackgroundColor to that UIColor
e.g. http://ddeville.me/2010/12/uicolor-with-pattern-image/ by Damien DeVille (https://github.com/ddeville) 
In SKView that just doesn't work.

#Tags#
SKView, tiles, background, pattern, image, black, uicolor, tiled, patterned background, skview.scene
