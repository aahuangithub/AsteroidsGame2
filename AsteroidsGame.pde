import java.util.*;
SpaceShip ship;
ArrayList<Wake> wakeCircles = new ArrayList<Wake>();
Star[] allStars = new Star[200];
Rock[] allRocks = new Rock[10];

public void setup() 
{
  size(800, 800);
  ship = new SpaceShip(400, 400);
  for (int i = 0; i<allStars.length; i++){
    allStars[i] = new Star();
  }
  for (int i = 0; i<allRocks.length; i++){
    allRocks[i] = new Rock();
  }
}

public void draw() 
{
  background(140, 185, 215);
  for (int i = 0; i<allStars.length; i++){allStars[i].show();}
 
  if (abs((float)ship.getDirectionX())>2|| abs((float)ship.getDirectionY())>2){wakeCircles.add(new Wake (ship.getX(), ship.getY()));}
  for (int i = 0; i<wakeCircles.size(); i++){
    wakeCircles.get(i).update();
    wakeCircles.get(i).show();
    if (wakeCircles.get(i).getSize()>150){wakeCircles.remove(i);}
  }

 ship.move();
  ship.show();
  for (int i = 0; i<allRocks.length; i++){
    allRocks[i].move();
    allRocks[i].show();
  }


}


public void keyPressed(){
  if (key == 'w') {
    ship.accelerate(0.3);
  }
  if (key == 's'){
    if(abs((float)(ship.getDirectionY()-ship.getDirectionX()))>0){
      ship.setDirectionX(ship.getDirectionX()*0.9);
      ship.setDirectionY(ship.getDirectionY()*0.9);
    }
  }
  if (key == 'f'){
    wakeCircles.add(new Wake (ship.getX(), ship.getY()));
    ship.hyperspace();
  }
  if (key == 'a') ship.rotate(10);
  if (key == 'd') ship.rotate(-10);
  if (key == '1') ship.setColor(#FF0000);
  if (key == '2') ship.setColor(#00FF00);
  if (key == '3') ship.setColor(#0044FF);
}

