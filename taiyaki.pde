class Taiyaki {
  float x;
  float y;
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
  
  void move() {
    if(mousePressed && (this.x <= mouseX&&mouseX <= this.x+imageSizeX) && (this.y <= mouseY&&mouseY <= this.y+imageSizeY)) {
      this.x = mouseX;
      this.y = mouseY;
    }
  }
  
  
}
