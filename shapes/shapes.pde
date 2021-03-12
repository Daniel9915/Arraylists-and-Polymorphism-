ArrayList<Shape> shapeList = new ArrayList<Shape>();

void setup(){
  size(800,800);
  noStroke();
  textAlign(CENTER);
  textSize(16);
}

void draw(){
  fill(0,0,0,20);
  rect(0,0,width,height);
  for(Shape c: shapeList){
    c.move();
    c.display();
  }
  makeButtons();
  
}


void makeButtons(){
  
  push();
    translate(100,600);
    fill(255);
    rect(0,0,100,100);
    fill(0);
    text("Lav Firkant",50,50);
  pop();
  
  push();
    translate(350,600);
    fill(255);
    rect(0,0,100,100);
    fill(0);
    text("Lav Cirkel",50,50);
  pop();
  
  push();
    translate(600,600);
    fill(255);
    rect(0,0,100,100);
    fill(0);
    text("Lav Trekant",50,50);
  pop();
 
}

void mousePressed(){
  if(mouseX > 100 && mouseX < 200){
    if(mouseY > 600 && mouseY < 700){
      shapeList.add(new Square(
        random(200,600),random(200,400),random(15,60),random(0,360), 3, 
        color(random(255),random(255),random(255)))
      );
    }
  }
  if(mouseX > 350 && mouseX < 450){
    if(mouseY > 600 && mouseY < 700){
      shapeList.add(new Circle(
        random(200,600),random(200,400),random(15,60),random(0,360), 3, 
        color(random(255),random(255),random(255)))
      );
    }
  }
  if(mouseX > 600 && mouseX < 700){
    if(mouseY > 600 && mouseY < 700){
      shapeList.add(new Triangle(
        random(200,600),random(200,400),random(15,60),random(0,360), 3, 
        color(random(255),random(255),random(255)))
      );
    }
  }
}
