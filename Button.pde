abstract class Button {
  float x;
  float y;
  float buttonWidth;
  float buttonHeight;
  String text;
  color buttonColor;
  
  Button(float _x, float _y, color _buttonColor) {
    this.x = _x;
    this.y = _y;
    this.buttonWidth = 162;
    this.buttonHeight = 100;
    this.buttonColor = _buttonColor;
  }
  
  boolean isPushed() {
    if((this.x <= mouseX&&mouseX <= this.x+buttonWidth)&&(this.y <= mouseY&&mouseY <= this.y+buttonHeight)) {
      return true;
    } else {
      return false;
    }
  }
  
  void display() {
    fill(this.buttonColor);
    rect(this.x, this.y, this.buttonWidth, this.buttonHeight);
    fill(black);
    text(text, this.x, this.y);
  }
}

abstract class TaiyakiButton extends Button {
  TaiyakiButton(float _x, float _y, color _buttonColor) {
    super(_x, _y, _buttonColor);
  }
}
