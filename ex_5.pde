import processing.sound.*;
SoundFile pikachu;

color bgColor = color(0, 96, 255);
PImage Pikachu_png;

void setup() {
  size(1000,600);
  background(bgColor); 
  pikachu = new SoundFile(this, "pikachu.wav");//load sound file 

rectMode(CENTER); 
textMode(CENTER);

Pikachu_png = loadImage("Pikachu_png.png");
Pikachu_png.resize (350,350);

}

void draw() {
if (keyPressed) { 
   background(13, 91, 255);
  pikachu.loop();
  fill(0,0,0);
       
    text("Release any key to hear music", 250, 300); 
    text("hold any key to stop music", 250, 450); 
    textSize(50);
    image(Pikachu_png, 5, 10);
} 
  else 
  {
    background(237, 28, 36);
      textSize(50);
      text("SFSampleRate= " + pikachu.sampleRate() + " Hz", 10, 300);
      text("SFSamples= " + pikachu.frames() + " samples", 10, 350);
      text("SFDuration= " + pikachu.duration() + " seconds", 10, 400);
      //dispalys Hz, frames and duration of the sound file

  }
}
