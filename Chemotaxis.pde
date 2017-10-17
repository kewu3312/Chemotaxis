
ArrayList<Bacteria> colony;
int numBact = 8;
void setup()
{
  //initialize bacteria variables here
  size(500, 500);
  frameRate(40);
  colony = new ArrayList<Bacteria>();
  for (int i= 0; i < numBact; i++)
  {
    colony.add(new Bacteria());
  }
}
void draw()
{
  //move and show the bacteria
  background(255);
  text("PLACE MOUSE HERE AND CLICK", 300, 340);
  fill(255,0,0);
  ellipse(400,370,20,20);
  food();
  for (int i= 0; i < colony.size(); i++) 
  {
    Bacteria dots = colony.get(i);
    dots.show();
    dots.walk();
  }
}
void mouseClicked(){
 numBact = numBact * 2;
 for (int i= 0; i < numBact; i++)
  {
    colony.add(new Bacteria());
  }
}
void food(){
	
}
class Bacteria
{
  //lots of java!
  int theX, theY, pretty;
  boolean notDead;
  Bacteria() 
  {
    theX = (int)(Math.random() * 11) - 250;
    theY = (int)(Math.random() * 11) - 250;
    pretty = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    notDead = true;
  }
  void walk() 
  {
      if (theX < mouseX){
              theX+= (int)(Math.random() * 11) - 4;
       
      }else{
      
        theX+= (int)(Math.random() * 11) - 6;
      }
      if (theY < mouseY){
        theY+= (int)(Math.random() * 11) - 4;
      }else{
        theY+= (int)(Math.random() * 11) - 6;
      } 
  }
    void show() {
    if(get(theX, theY) == color(0)){
    	notDead = false;
    }
    if(notDead){
      fill(pretty);
      ellipse(theX % 500, theY % 500, 10, 10);
    }
    }
  }

