Spaceship bob = new Spaceship();
ArrayList<Asteroids> asteroidsList = new ArrayList<Asteroids>();
int numberOfAsteroids = (int)(Math.random()*30)+20;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int HP = 50;
int lmao = 0;
boolean fail = false;
boolean victory = false;

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
  if (fail == true) {endGameFunc();}
  if(victory == true) {wonGameFunc();}

  for (int i = 0; i < 250; i++){
    Star E = new Star();
    E.show();
   }
  if (HP <= 0)
  {    
    fail = true;
  }
  if((asteroidsList.size() == 0) && (lmao == 0) ){
    victory = true;
  }
   bob.show();
   bob.move();
   bob.show2();
  for (Asteroids ast : asteroidsList){
    ast.turn(ast.getRotationSpeed());
    ast.move();
    ast.show();
    float distantAst = dist((float)ast.getX(), (float)ast.getY(), (float)bob.getX(), (float)bob.getY());
    if (distantAst <= 16)
    {
      HP--;
    }
  }
  
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).move();
    bullets.get(i).show();
    if (bullets.get(i).getX() >= width || bullets.get(i).getX() <= 0 || bullets.get(i).getY() >= height || bullets.get(i).getY() <= 0)
    {
      bullets.remove(i);
    }
  }
  for(int i = 0; i < asteroidsList.size(); i++)
  {
    for(int j = 0; j < bullets.size(); j++)
    {
      float col = dist((float)asteroidsList.get(i).getX(), (float)asteroidsList.get(i).getY(), (float)bullets.get(j).getX(), (float)bullets.get(j).getY());
      
      if (col < 16)
      {
        asteroidsList.remove(i);
        break;
      } 
    } 
  }
}
public void keyPressed(){ 
  if(key == 'h'){
    bob.hyperspace();
  }
  if(key == 'a'){ 
    bob.turn(-9);
  }
  if(key == 'd'){
  bob.turn(9);
  }
  if(key == 'w'){
     bob.accelerate(0.2);
  }
  if(key == 's'){
     bob.accelerate(-0.2);
  } 
  if(key == ' '){
  bullets.add(new Bullet(bob));
  bob.show();
  } 
}

public void wonGameFunc()
{
  textSize(30);
  fill(255);
  text("You won!!!", 400, 400);
  fill(255,0,0);
  for(int i = 0; i<bullets.size(); i++)
    bullets.remove(i);

  for(int i = 0; i<asteroidsList.size(); i++)
    asteroidsList.remove(i);

}

public void endGameFunc()
{
    lmao++;
    textSize(30);
    fill(0,0,255);
    fill(150);
    textSize(60);
    text("GAME OVER", 400, 400);
    for(int i = 0; i<bullets.size(); i++)
      bullets.remove(i);
    
    for(int i = 0; i<asteroidsList.size(); i++)
      asteroidsList.remove(i);
}
