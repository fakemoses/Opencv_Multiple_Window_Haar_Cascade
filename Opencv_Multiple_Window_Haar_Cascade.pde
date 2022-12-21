import java.awt.Frame;
import processing.awt.PSurfaceAWT;
import processing.awt.PSurfaceAWT.SmoothCanvas;
PWindow win;
import gab.opencv.*;
import java.awt.*;
import processing.video.*;


public void settings() {
  size(640, 480);
  
};

void setup() { 
  win = new PWindow(320,0,320,240,"Second Window");
  surface.setLocation(-5, 0);
};

void draw() {
  //something random that is also running 
  ellipse(random(width), random(height), random(50), random(50));
};

void mousePressed() {
  println("mousePressed in primary window");
};  
