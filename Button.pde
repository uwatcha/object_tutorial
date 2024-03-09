abstract class Button {
  float x;
  float y;
  float buttonWidth;
  float buttonHeight;
  String text;
  
  Button(float _x, float _y) {
    this.x = _x;
    this.y = _y;
    this.buttonWidth = 162;
    this.buttonHeight = 100;
  }
  
  boolean isPushed() {
    if((this.x <= mouseX&&mouseX <= this.x+buttonWidth)&&(this.y <= mouseY&&mouseY <= this.y+buttonHeight)) {
      return true;
    }
    return false;
  }
}
