//定数----------------------------------------
final int imageWidth = 300;
final int imageHeight = 150;
final color red     = color(255, 0, 0);
final color green   = color(  0, 255, 0);
final color blue    = color(  0, 0, 255);
final color bg      = color(219, 214, 149);
final color anko    = color(122, 82, 89);
final color custard = color(254, 210, 89);
final color matcha  = color(139, 192, 53);
final color okazu   = color( 51, 41, 17);
//-------------------------------------------
//画像変数-----------------------------------
PImage taiyaki;
PImage[] taiyaki_fillings;
PImage oyaki;
PImage[] oyaki_fillings;
//-------------------------------------------
//配列宣言-----------------------------------
Yakimono[] yakimonos;
//-------------------------------------------
//インスタンス宣言---------------------------
TaiyakiGenerateButton taiyakiGenButton;
OyakiGenerateButton oyakiGenButton;
YakimonoDeleteButton yakimonoDelButton;
//-------------------------------------------

void setup() {
  //初期設定----------------------------------------------------------------
  size(1400, 800);
  textSize(25);
  frameRate(120);
  PFont font = createFont("Meiryo", 25);
  textFont(font);
  //------------------------------------------------------------------------
  //初期化---------------------------------------------------------------------------------------------
  yakimonos         = new Taiyaki[0];                //配列の初期化
  taiyaki_fillings = new PImage[3];                 //配列の初期化
  oyaki_fillings = new PImage[3];
  taiyakiGenButton        = new TaiyakiGenerateButton(1200, 100);
  oyakiGenButton        = new OyakiGenerateButton(1200, 250);
  yakimonoDelButton        = new YakimonoDeleteButton(1200, 400);
  //---------------------------------------------------------------------------------------------------
  //画像読み込み------------------------------------------------------------
  taiyaki            = loadImage("taiyaki.png");
  taiyaki_fillings[0] = loadImage("taiyaki_filling_anko.png");
  taiyaki_fillings[1] = loadImage("taiyaki_filling_custard.png");
  taiyaki_fillings[2] = loadImage("taiyaki_filling_matcha.png");
  oyaki                   = loadImage("oyaki.png");
  oyaki_fillings[0]      = loadImage("oyaki_filling_anko.png");
  oyaki_fillings[1]   = loadImage("oyaki_filling_custard.png");
  oyaki_fillings[2]     = loadImage("oyaki_filling_okazu.png");
  //------------------------------------------------------------------------
}

void draw() {
  //背景---------------------------------------
  fill(bg);
  rect(0, 0, width, height);
  //-------------------------------------------
  //メソッドの使用-----------------------------
  for (int i=0; i<yakimonos.length; i++) {
    yakimonos[i].display();
    if (yakimonos[i].getIsSelected()) {
      yakimonos[i].move();
    }
  }
  taiyakiGenButton.display();
  oyakiGenButton.display();
  yakimonoDelButton.display();
  //-------------------------------------------
}

void mousePressed() {
  //メソッドの使用-----------------------------
  for (int i=0; i<yakimonos.length; i++) {
    if (yakimonos[i].isInImage()) {
      yakimonos[i].setOffset();
      yakimonos[i].select();
    }
  }
  //-------------------------------------------
}

void mouseReleased() {
  //メソッドの使用-----------------------------
  for (int i=0; i<yakimonos.length; i++) {
    if (yakimonos[i].getIsSelected()) {
      yakimonos[i].canselSelect();
    }
  }
  //-------------------------------------------
}

void mouseClicked() {
  //メソッドの使用-----------------------------
  if      (taiyakiGenButton.isPushed()) {
    taiyakiGenButton.buttonEffect();
  }
  else if (oyakiGenButton.isPushed()) {
    oyakiGenButton.buttonEffect();
  }
  else if (yakimonoDelButton.isPushed()) {
    yakimonoDelButton.buttonEffect();
  }
  //-------------------------------------------
}
