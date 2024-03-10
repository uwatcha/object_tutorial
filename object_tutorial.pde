//定数----------------------------------------
final int imageWidth = 300;
final int imageHeight = 150;
final color red     = color(255,   0,   0);
final color green   = color(  0, 255,   0);
final color blue    = color(  0,   0, 255);
final color bg      = color(219, 214, 149);
final color anko    = color(122,  82,  89);
final color custard = color(254, 210,  89);
final color matcha  = color(139, 192,  53);
final color okazu   = color( 51,  41,  17);
//-------------------------------------------
//画像変数-----------------------------------
PImage taiyaki;
PImage[] taiyaki_fillings;
//-------------------------------------------
//配列宣言-----------------------------------
Taiyaki[] taiyakis;
//-------------------------------------------
//インスタンス宣言---------------------------
GenerateButton genButton;
//-------------------------------------------

void setup() {
  //初期設定----------------------------------------------------------------
  size(1400, 800);
  textSize(25);
  frameRate(120);
  PFont font = createFont("Meiryo", 50);
  textFont(font);
  //------------------------------------------------------------------------
  //初期化---------------------------------------------------------------------------------------------
  taiyaki_fillings = new PImage[3];                 //配列の初期化
  taiyakis         = new Taiyaki[0];                //配列の初期化
  genButton        = new GenerateButton(1200, 100); //インスタンスの初期化　コンストラクタ(右辺)を用いている
  //---------------------------------------------------------------------------------------------------
  //画像読み込み------------------------------------------------------------
  taiyaki            = loadImage("taiyaki.png");
  taiyaki_fillings[0] = loadImage("taiyaki_filling_anko.png");
  taiyaki_fillings[1] = loadImage("taiyaki_filling_custard.png");
  taiyaki_fillings[2] = loadImage("taiyaki_filling_matcha.png");
  //------------------------------------------------------------------------
}

void draw() {
  //背景---------------------------------------
  fill(bg);
  rect(0, 0, width, height);
  //-------------------------------------------
  //メソッドの使用-----------------------------
  for (int i=0; i<taiyakis.length; i++) {
    taiyakis[i].display();
    if (taiyakis[i].getIsSelected()) {
      taiyakis[i].move();
    }
  }
  genButton.display();
  //-------------------------------------------
}

void mousePressed() {
  //メソッドの使用-----------------------------
  for (int i=0; i<taiyakis.length; i++) {
    if (taiyakis[i].isInImage()) {
      taiyakis[i].setOffset();
      taiyakis[i].select();
    }
  }
  //-------------------------------------------
}

void mouseReleased() {
  //メソッドの使用-----------------------------
  for (int i=0; i<taiyakis.length; i++) {
    if (taiyakis[i].getIsSelected()) {
      taiyakis[i].canselSelect();
    }
  }
  //-------------------------------------------
}

void mouseClicked() {
  //メソッドの使用-----------------------------
  if (genButton.isPushed()) {
    genButton.generate();
  }
  //-------------------------------------------
}
