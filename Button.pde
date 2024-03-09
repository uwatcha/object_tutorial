abstract class Button {
  float x;
  float y;
  float buttonWidth;
  float buttonHeight;
  String text;
  color buttonColor;
  
  Button(float _x, float _y) {
    this.x = _x;
    this.y = _y;
    this.buttonWidth = 162;
    this.buttonHeight = 100;
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
    fill(blue);
    text(text, this.x, this.y);
  }
}

abstract class GenerateButton extends Button {
  GenerateButton(float _x, float _y) {
    super(_x, _y);
  }
  
  void generate() {
    Taiyaki tmp = new Taiyaki(random(width), random(height), taiyaki_filling_anko);
    append(taiyakis, tmp);
  }
}
