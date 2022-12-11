public class Spaceship extends Floater  
{   
    public Spaceship() {
        myCenterX = myCenterY = 400;
        myDirectionX = myDirectionY = 0;
        myPointDirection = 0;
        corners = 4;
        myColor = 255;
        xCorners = new int[]{-10, -5, -10, 10};
        yCorners = new int[]{7, 0, -7, 0};
    }

    public double getX() {return myCenterX;}
    public double getY() {return myCenterY;}
    public double getPointDir() {return myPointDirection;}
    public double getDirX() {return myDirectionX;}
    public double getDirY() {return myDirectionY;}
    public void hyperspace() {
    myCenterY = Math.random()*450+100;
    myCenterX = Math.random()*450+100;
    myPointDirection = Math.random()*360;
    myDirectionX = 0;
    myDirectionY = 0;
    }
    public void setX(double n) {
        myCenterX = n;
    }
    public void setY(double n) {
        myCenterY = n;
    }
    public void show2(){
    fill(110);
    rect((float)myCenterX - 25, (float)myCenterY + 20, HP, 5);
    fill(0,255,0);
    rect((float)myCenterX - 25, (float)myCenterY + 20, HP, 5);
    }
    
}
