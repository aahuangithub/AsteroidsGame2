class Rock extends Floater
{
  private int myRotSpeed;
  public Rock(){
    int posOrNeg = -1;
    int mySize = (int)(Math.random()*20+15);
    if (Math.random() < 0.5) posOrNeg = 1;
    
    myRotSpeed = (int)((Math.random()*2+1)*posOrNeg);
    xCorners = new int[] {
      -8, 
      (int)(-0.5*mySize-0.5*Math.random()*mySize), 
      (int)(-0.5*mySize-0.5*Math.random()*mySize),
      8,
      (int)(0.5*mySize+0.5*Math.random()*mySize), 
      (int)(0.5*mySize+0.5*Math.random()*mySize)
    };
    yCorners = new int[] {
      (int)(-0.7*mySize), 
      (int)(Math.random()*0.33*mySize), 
      (int)(Math.random()*0.33*mySize+mySize*0.33), 
      (int)(mySize*0.7),
      (int)(Math.random()*0.33*mySize+mySize*0.33), 
      (int)(Math.random()*0.33*mySize)
      
    };
    corners = xCorners.length;
    
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myDirectionX = (int)(Math.random()*6-3);
    myDirectionY = (int)(Math.random()*6-3);
    
    //myPointDirection = 90;
    setColor(#EDFAFA);
  }
  public void move(){
    rotate(myRotSpeed);
    super.move();
  }
  public void setColor(int c){ myColor = c; }
  public int getColor(){ return myColor; }
  public void setX(int x){ myCenterX = x; }
  public int getX(){ return (int)myCenterX; }
  public void setY(int y){ myCenterY = y; }
  public int getY(){ return (int)myCenterY; }
  public void setDirectionX(double x){ myDirectionX = x; }
  public double getDirectionX(){ return myDirectionX; }
  public void setDirectionY(double y){ myDirectionY = y; }
  public double getDirectionY(){ return myDirectionY; }
  public void setPointDirection(int degrees){ myPointDirection = degrees;}
  public double getPointDirection(){ return myPointDirection; }
}