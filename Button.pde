//抽象クラス
abstract class Button {
  float x;
  float y;
  float buttonWidth;
  float buttonHeight;
  String text;
  float textX;
  float textY;
  color buttonColor;

  Button(float _x, float _y) {
    this.x = _x;
    this.y = _y;
    this.textX = _x+7;
    this.textY = _y+60;
    this.buttonWidth = 162;
    this.buttonHeight = 100;
    this.buttonColor = green;
  }

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
  
  //抽象メソッド
  abstract void buttonEffect();
}
//具象クラス----------------------------------------------------------------------------------------------------------
class TaiyakiGenerateButton extends Button {
  TaiyakiGenerateButton(float _x, float _y) {
    super(_x, _y);
    this.text = "たい焼き生成";
  }
  
  //具象メソッド
  @Override
  void buttonEffect() {
    Taiyaki tmp = new Taiyaki(random(20, width-450), random(20, height-150));
    yakimonos = (Yakimono[])append(yakimonos, tmp);
  }
}
//----------------------------------------------------------------------------------------------------------
class OyakiGenerateButton extends Button {
  OyakiGenerateButton(float _x, float _y) {
    super(_x, _y);
    this.text = "おやき生成";
    this.textX = _x+20;
  }
  
  //具象メソッド
  @Override
  void buttonEffect() {
    Oyaki tmp = new Oyaki(random(20, width-450), random(20, height-150));
    yakimonos = (Yakimono[])append(yakimonos, tmp);
  }
}
//----------------------------------------------------------------------------------------------------------
class YakimonoDeleteButton extends Button {
  YakimonoDeleteButton(float _x, float _y) {
    super(_x, _y);
    this.text = "削除";
    this.textX = _x+57;
  }
  
  //具象メソッド
  @Override
  void buttonEffect() {
    yakimonos = (Yakimono[])shorten(yakimonos);
  }
}
