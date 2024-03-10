abstract class Yakimono {
  float x;
  float y;
  float xOffset;
  float yOffset;
  PImage image;
  PImage filling;
  boolean isSelected;

  Yakimono(float _x, float _y) {
    this.x = _x;
    this.y = _y;
    isSelected = false;
  }

  void display() {
    image(this.image, this.x, this.y);
    image(this.filling, this.x, this.y);
  }

  void setOffset() {
    this.xOffset = mouseX-this.x;
    this.yOffset = mouseY-this.y;
  }

  boolean isInImage() {
    if ((this.x <= mouseX&&mouseX <= this.x+imageWidth) && (this.y <= mouseY&&mouseY <= this.y+imageHeight)) {
      return true;
    } else {
      return false;
    }
  }

  boolean getIsSelected() {
    return this.isSelected;
  }

  void select() {
    isSelected = true;
  }

  void canselSelect() {
    isSelected = false;
  }

  void move() {
    this.x = mouseX-xOffset;
    this.y = mouseY-yOffset;
  }
}

//クラス
class Taiyaki extends Yakimono {
  //コンストラクタ--------------------------------
  Taiyaki(float _x, float _y) {
    super(_x, _y);
    this.image = taiyaki;
    this.filling = taiyaki_fillings[int(random(3))];
  }
  //----------------------------------------------
}

class Oyaki extends Yakimono {
  //コンストラクタ--------------------------------
  Oyaki(float _x, float _y) {
    super(_x, _y);
    this.image = oyaki;
    this.filling = oyaki_fillings[int(random(3))];
  }
  //----------------------------------------------
}
