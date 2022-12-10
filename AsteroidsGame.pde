Spaceship bob = new Spaceship();
ArrayList<Asteroids> asteroidsList = new ArrayList<Asteroids>();
int numberOfAsteroids = (int)(Math.random()*20)+5;


void setup()
{
  size(800, 800);
  textAlign(CENTER);
  for (int i=0; i<numberOfAsteroids; i++)
  {
    asteroidsList.add(new Asteroids());
  }
  
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
  for (Asteroids ast : asteroidsList)
  {
    ast.turn(ast.getRotationSpeed());
    ast.move();
    ast.show();
    float distantAstShip = dist((float)ast.getX(), (float)ast.getY(), (float)bob.getX(), (float)bob.getY());
    
    if (distantAstShip < 36)
    {
    }
  }
}
public void keyPressed()
{ 
  if(key == 'h'){
    bob.hyperspace();
  }
  if(key == 'a')
  { 
    bob.turn(-9);
    
  }
  if(key == 'd')
  {
  bob.turn(9);
     
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

