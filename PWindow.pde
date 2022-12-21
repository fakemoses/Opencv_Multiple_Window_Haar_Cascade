import java.awt.Frame;
import processing.awt.PSurfaceAWT;
import processing.awt.PSurfaceAWT.SmoothCanvas;
import ipcapture.*;
import gab.opencv.*;
import java.awt.*;
import processing.video.*;

class PWindow extends PApplet {

  OpenCV opencv;

  int x, y, w, h;
  boolean setLocation, setTitle, makeResizable;
  String title;
  PImage img;

  PWindow(int x_, int y_, int ww, int hh, String s) {
    super();
    x = x_;
    y = y_;
    w = ww;
    h = hh;
    setLocation = true;
    title = s;
    setTitle = true;
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);
  };



  void settings() {
    if (w>0&&h>0)size(w, h);
    else size(320, 240);
  };

  void setup() {
    if (setTitle)surface.setTitle(title);
    img = loadImage("./data/redBall.jpg");
    opencv = new OpenCV(this, img);
    opencv.loadCascade("ball_detection.xml");
  };

  void draw() {
    opencv.loadImage(img);
    Rectangle[] balls = opencv.detect(1.3, 5, 0, 30, 300);
    image(opencv.getInput(), 0, 0);
    noFill();
    stroke(0, 255, 0);
    strokeWeight(3);
    for (int i = 0; i < balls.length; i++) {
      rect(balls[i].x, balls[i].y, balls[i].width, balls[i].height);
    }
  };
};
