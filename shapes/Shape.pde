class Shape{
  float x, y, size, degrees, speed, distance; 
  color c;
  
  Shape(float _x, float _y, float _size, float _degrees, float _speed, color _c){
    x = _x;
    y = _y;
    size = _size;
    degrees = _degrees;
    speed = _speed;
    c = _c;
  }
  
  void move(){
    distance = distance + speed;
  }
  
  void display(){
    fill(c);
    push();
    
    translate(x,y);
    rotate(radians(degrees));
    translate(distance,0);
    
    
  }
}
