class Taiyaki {
  float x;
  float y;
  float xOffset;
  float yOffset;
  PImage image;
  PImage filling;
  boolean isSelected;

  Taiyaki(float _x, float _y, PImage _filling) {
    this.x = _x;
    this.y = _y;
    this.image = taiyaki;
    this.filling = _filling;
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
    if (isSelected) {
      this.x = mouseX-xOffset;
      this.y = mouseY-yOffset;
    }
  }
}
