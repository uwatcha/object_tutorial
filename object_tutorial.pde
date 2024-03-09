final int imageWidth = 300;
final int imageHeight = 150;
final color blue    = color(0, 0, 255);
final color anko    = color(122, 82, 89);
final color custard = color(254, 210, 89);
final color matcha  = color(139, 192, 53);
final color okazu   = color(51, 41, 17);
PImage taiyaki;
PImage taiyaki_filling_anko;
PImage taiyaki_filling_custard;
PImage taiyaki_filling_matcha;
PImage oyaki;
PImage oyaki_filling_anko;
PImage oyaki_filling_custard;
PImage oyaki_filling_okazu;
Taiyaki[] taiyakis = {};

void setup() {
  size(1400, 800);
  taiyaki                 = loadImage("taiyaki.png");
  taiyaki_filling_anko    = loadImage("taiyaki_filling_anko.png");
  taiyaki_filling_custard = loadImage("taiyaki_filling_custard.png");
  taiyaki_filling_matcha  = loadImage("taiyaki_filling_matcha.png");
  oyaki                   = loadImage("oyaki.png");
  oyaki_filling_anko      = loadImage("oyaki_filling_anko.png");
  oyaki_filling_custard   = loadImage("oyaki_filling_custard.png");
  oyaki_filling_okazu     = loadImage("oyaki_filling_okazu.png");
}

void draw() {
  for (int i=0; i<taiyakis.length; i++) {
    taiyakis[i].display();
  }
}
