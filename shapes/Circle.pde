class Circle extends Shape{ 
  
  Circle(float _x, float _y, float _size, float _degrees, float _speed, color _c){
    super(_x,  _y, _size, _degrees, _speed, _c);
  }
  
  void display(){
    super.display();
    circle(0,0,size);
    pop();
  }
  
  void move(){
    super.move();
  }
  
  
}
