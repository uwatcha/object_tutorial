//クラス
class GenerateButton {
  //メンバ変数--------
  float x;
  float y;
  float buttonWidth;
  float buttonHeight;
  String text;
  float textX;
  float textY;
  color buttonColor;
  //------------------
  //コンストラクタ--------------
  GenerateButton(float _x, float _y) {
    this.x = _x;
    this.y = _y;
    this.buttonWidth = 162;
    this.buttonHeight = 100;
    this.text = "生成";
    this.textX = _x+33;
    this.textY = _y+68;
    this.buttonColor = green;
  }
  //----------------------------
  //メソッド----------------------------------------------------------------------------------------------------
  boolean isPushed() {
    if ((this.x <= mouseX&&mouseX <= this.x+buttonWidth)&&(this.y <= mouseY&&mouseY <= this.y+buttonHeight)) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    fill(this.buttonColor);
    rect(this.x, this.y, this.buttonWidth, this.buttonHeight);
    fill(blue);
    text(text, this.textX, this.textY);
  }

  void generate() {
    Taiyaki tmp = new Taiyaki(random(20, width-200), random(20, height-150));
    taiyakis = (Taiyaki[])append(taiyakis, tmp);
  }
  //------------------------------------------------------------------------------------------------------------
}
