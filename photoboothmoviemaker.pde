// Run this program only in the Java mode inside the IDE,
// not on Processing.js (web mode)!!

// To convert images to a movie you can use:
// ffmpeg -i seq-%04d.tga -r 25 -threads 4 video.mp4

int c = 255;
PImage img;

void setup() {
  size(2048, 1365);
  background(0);
  frameRate(24);

  String basePath = "C:\\Users\\micro\\Dropbox\\Rails Girls London Winter 2017 Photobooth\\Openbooths_";
  String extension = ".jpg";
  
  int startCount = 3;
  int endCount = 179;
  int imageCount = endCount - startCount;
  
  img = loadImage("C:\\Users\\micro\\Dropbox\\Rails Girls London Winter 2017 Photobooth\\Openbooths_0003-X4.jpg");
  
  for () {
    
  }
}
void draw() {
  image(img, 0, 0);
  saveFrame("frame-####.tif");

  if(frameCount > 500) { // 20 seconds * 25 fps = 500
    noLoop();
  }
}