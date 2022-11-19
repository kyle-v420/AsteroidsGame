Spaceship bob = new Spaceship();

void setup()
{
  size(800, 800);
  textAlign(CENTER);
}

void draw()
{
  background(0);
  for (int i = 0; i < 250; i++){
    Star E = new Star();
    E.show();
   }
   bob.show();
   bob.move();

}
public void keyPressed()
{ 
  System.out.print(key);
    if(key == 'h'){
    bob.hyperspace();
  }
  if(key == 'a')
  { 
    bob.turn(-7);
    
  }
  if(key == 'd')
  {
  bob.turn(7);
     
  }
  if(key == 'w')
  {
     bob.accelerate(0.2);
  }
  if(key == 's')
  {
     bob.accelerate(-0.2);
  }
 }

