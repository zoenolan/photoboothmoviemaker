
// ffmpeg -r 60 -i frame-%04d.tif -r 60 -threads 4 video.mp4

String basePath = "Openbooths_";
String extension = "-X4.jpg";

int startCount = 3;
int endCount = 179; 

PImage[] frames;

void setup() {
  int frameCount = calcFrameCount(startCount, endCount);
  int loopLimit = startCount + frameCount;
  
  frames = new PImage[frameCount];

  for (int i = startCount; i < loopLimit; i++) {
    String frameNumber = nf(i, 4); 
    String filename = basePath + frameNumber + extension;
    println(filename);
    frames[i - startCount] = loadImage(filename);    
  }

  size(2048, 1365);
  
  background(0);
  frameRate(60);
}

void draw() {
  int framePause = 5;
  
  int frameLimit = framePause * calcFrameCount(startCount, endCount);
  if (frameCount < frameLimit) {
    int frame = frameCount / framePause;
    int white = 0xFF;
    int alpha = int(float(frameCount - (frame * framePause))* 255/ framePause);
    
    tint (white, 255 - alpha);
    image(frames[frame], 0, 0);
    
    tint (white, alpha);
    int nextFrame = min (frame+1, frames.length -1);
    image(frames[nextFrame], 0, 0);
    
    saveFrame("frame-####.tif");
  }
  
  //if(frameCount > imageCount) {
    //noLoop();
  //}
}

int calcFrameCount(int startCount, int endCount) {
  return (endCount - startCount + 1);  
}