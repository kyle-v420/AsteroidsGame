public class Star
{
  private int s, myX, myY;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    s = (int)(Math.random()*1)+3;
  }
  private void show(){
    fill(255, 255, 255);
    stroke(255, 255, 255);
    if (s == 3){
      float rot = random(PI*2);
      translate(myX, myY);
      rotate(rot);
      for (float i = 0; i < PI * 2; i+= PI*2/s){
        ellipse(0, 0, 2, 2);
      }
      rotate(-rot);
      translate(-myX, -myY );
    }
  }
}
