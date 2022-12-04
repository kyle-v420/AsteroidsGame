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
class Asteroids extends Floater
{
  protected int rotationSpeed;
  protected int e = (int)(Math.random()*4);
  Asteroids()
  {
  corners = 6;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = (int)(Math.random()*17)-17;
  yCorners[0] = (int)(Math.random()*11)-11;
  xCorners[1] = (int)(Math.random()*10);
  yCorners[1] = (int)(Math.random()*12)-14;
  xCorners[2] = (int)(Math.random()*17)-17;
  yCorners[2] = 0;
  xCorners[3] = (int)(Math.random()*10);
  yCorners[3] = (int)(Math.random()*17);
  xCorners[4] = (int)(Math.random()*17)-17;
  yCorners[4] = (int)(Math.random()*11);
  xCorners[5] = (int)(Math.random()*7)-5;
  yCorners[5] = 0;
  myColor = color(89,89,89);
  myCenterX = (Math.random()*width);
  myCenterY = (Math.random()*height);
  myDirectionX = Math.random()*7-2;
  myDirectionY = Math.random()*7-2;
  myPointDirection = 0;
  if (e < 0.5)
    {
      rotationSpeed = 1;
    }
  if (e < 1.5)
    {
      rotationSpeed = (int)(Math.random()*5);
    }
  if (e < 2.5)
    {
      rotationSpeed = (int)(Math.random()*7);
    }
    else{
       rotationSpeed = (int)(Math.random()*7.5);
    }
  }
  public void setX(int x) {myCenterX = x;}
  public double getX() {return myCenterX;} 
  public void setY(int y){myCenterY = y;}
  public double getY(){return myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX(){ return myDirectionX;} 
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees) { myPointDirection = degrees; }
  public double getPointDirection() { return myPointDirection;}
  public int getRotationSpeed() {return rotationSpeed;}
  public void setRotationSpeed(int speed) {rotationSpeed = speed;}
}
