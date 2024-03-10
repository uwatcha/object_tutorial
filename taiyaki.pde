class Taiyaki {
  float x;
  float y;
  float xOffset;
  float yOffset;
  PImage image;
  PImage filling;

  Taiyaki(float _x, float _y, PImage _filling) {
    this.x = _x;
    this.y = _y;
    this.image = taiyaki;
    this.filling = _filling;
  }

  void display() {
    image(this.image, this.x, this.y);
    image(this.filling, this.x, this.y);
  }

  void setOffset() {
    this.xOffset = mouseX-this.x;
    this.yOffset = mouseY-this.y;
  }

  boolean isDraged() {
    if (mousePressed && (this.x <= mouseX&&mouseX <= this.x+imageWidth) && (this.y <= mouseY&&mouseY <= this.y+imageHeight)) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    if (this.isDraged()) {
      this.x = mouseX-xOffset;
      this.y = mouseY-yOffset;
    }
  }
}
