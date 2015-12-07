import processing.video.*;    // we're using video to get footage from the webcam
import gab.opencv.*;          // OpenCV is used for the face detection 
import java.awt.*;            // This library is a dependance of OpenCV (which means that 
                              // if we don't include it some aspects of OpenCV won't work 
                              // properly.

Capture video; 
OpenCV opencv;

void setup() {
  
  size(640, 480);
    
  // set up our Capture and OpenCV objects to expect images the same size as our canvas.
  // You might get some errors here if the size doesn't match one of the supported resolutions of your webcam:
  
  video = new Capture(this, width, height);
  opencv = new OpenCV(this, width, height);
  
  // For the face detection to work, you need to load in a 'cascade' file. This a file that contains 
  // information on what OpenCV should be looking for. In our case we are loading a cascade for face
  // recognition but you can look for all sorts of features in your video. 
  
  // You seem to need the full file path for this to work. A relative URL isn't good enough.
  // To use this program, navigate to your folder for this sketch and then get the file path to the file inside 
  // the cascade-files folder.
  
  opencv.loadCascade("C:/Users/Matthew/Desktop/App Development/processing - video processing/video/opencvcapture/cascade-files/haarcascade_frontalface_alt.xml", true);  

  video.start();
}

void draw() {
  
  background(255);
  
  opencv.loadImage(video);      // load a frame of data from video into the OpenCV object.

  image(video, 0, 0 );          // load the video on to the screen.
  
  // notice that the two steps above are totally seperate. You can still be running face recognition 
  // without needing to display the video on screen.
  
  noFill();
  stroke(0, 255, 0);
  strokeWeight(1);
  
  Rectangle[] faces = opencv.detect();      // Get an array of Rectangles from OpenCV, one for each face
                                            // The Rectangle class isn't part of Processing, it's a native Java
                                            // class - look here for a reference: 
                                            // http://docs.oracle.com/javase/7/docs/api/java/awt/Rectangle.html
  
  println("Found " + faces.length + " face(s) this frame at the coords:");

  for (int i = 0; i < faces.length; i++) {
    println("Face " + i + " at\t" + faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
}

void captureEvent(Capture c) {
  
  c.read();
  
  
}