//version 2：継承の概念を追加した
//オブジェクト指向にかかわりがある部分は//--で囲んでいる
final int imageWidth = 300;
final int imageHeight = 150;
final color red     = color(255, 0, 0);
final color green   = color(0, 255, 0);
final color blue    = color(0, 0, 255);
final color bg      = color(219, 214, 149);
final color anko    = color(122, 82, 89);
final color custard = color(254, 210, 89);
final color matcha  = color(139, 192, 53);
final color okazu   = color(51, 41, 17);
PImage taiyaki;
PImage[] taiyaki_fillings;
PImage oyaki;
PImage[] oyaki_fillings;
//[--------------------------------------
Yakimono[] yakimonos;
TaiyakiGenerateButton taiyakiGenButton;
OyakiGenerateButton oyakiGenButton;
YakimonoDeleteButton yakimonoDelButton;
//---------------------------------------]

void setup() {
  size(1400, 800);
  textSize(25);
  frameRate(120);
  PFont font = createFont("Meiryo", 25);
  textFont(font);
  //[-------------------------------------
  yakimonos         = new Yakimono[0];
  //-------------------------------------]
  taiyaki_fillings = new PImage[3];
  oyaki_fillings = new PImage[3];
  //[--------------------------------------------------------------
  taiyakiGenButton        = new TaiyakiGenerateButton(1200, 100);
  oyakiGenButton        = new OyakiGenerateButton(1200, 250);
  yakimonoDelButton        = new YakimonoDeleteButton(1200, 400);
  //--------------------------------------------------------------]
  taiyaki            = loadImage("taiyaki.png");
  taiyaki_fillings[0] = loadImage("taiyaki_filling_anko.png");
  taiyaki_fillings[1] = loadImage("taiyaki_filling_custard.png");
  taiyaki_fillings[2] = loadImage("taiyaki_filling_matcha.png");
  oyaki                   = loadImage("oyaki.png");
  oyaki_fillings[0]      = loadImage("oyaki_filling_anko.png");
  oyaki_fillings[1]   = loadImage("oyaki_filling_custard.png");
  oyaki_fillings[2]     = loadImage("oyaki_filling_okazu.png");
}

void draw() {
  fill(bg);
  rect(0, 0, width, height);
  //[----------------------------------------
  for (int i=0; i<yakimonos.length; i++) {
    yakimonos[i].display();
    if (yakimonos[i].getIsSelected()) {
      yakimonos[i].move();
    }
  }
  taiyakiGenButton.display();
  oyakiGenButton.display();
  if (yakimonos.length>0) {
    yakimonoDelButton.display();
  }
  //-----------------------------------------]
}

void mousePressed() {
  //[----------------------------------------
  for (int i=0; i<yakimonos.length; i++) {
    if (yakimonos[i].isInImage()) {
      yakimonos[i].setOffset();
      yakimonos[i].select();
    }
  }
  //----------------------------------------]
}

void mouseReleased() {
  //[----------------------------------------
  for (int i=0; i<yakimonos.length; i++) {
    if (yakimonos[i].getIsSelected()) {
      yakimonos[i].canselSelect();
    }
  }
  //----------------------------------------]
}

void mouseClicked() {
  //[---------------------------------------------------------------
  if      (taiyakiGenButton.isPushed()) {
    taiyakiGenButton.buttonEffect();
  } else if (oyakiGenButton.isPushed()) {
    oyakiGenButton.buttonEffect();
  } else if (yakimonoDelButton.isPushed() && yakimonos.length>0) {
    yakimonoDelButton.buttonEffect();
  }
  //---------------------------------------------------------------]
}
