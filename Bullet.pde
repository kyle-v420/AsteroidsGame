class Bullet extends Floater
{
  Bullet(Spaceship c)
  {
    myCenterX = c.getX();
    myCenterY = c.getY();
    myPointDirection = c.getPointDir();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + c.getDirX();
    myDirectionY = 5 * Math.sin(dRadians) + c.getDirY();
  }
  public void setX(int x) { myCenterX = x;}
  public double getX() {return myCenterX;} 
  public void setY(int y){myCenterY = y;}
  public double getY(){return myCenterY;}
  public void setDirectionX(double x) { myDirectionX = x;}
  public double getDirectionX(){ return myDirectionX;} 
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees) { myPointDirection = degrees; }
  public double getPointDirection() { return myPointDirection;}
  public void show()
  {
    fill(255,16,71);
    stroke(255);
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }

  public void move()
  {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;        
  }
}
