class Wake{
	private int myX, myY;
	private float mySize;
	public Wake(int x, int y){
		myX = x;
		myY = y;
		mySize = 16;
	}
	public float getSize(){return mySize;}
	public void update(){
		mySize = mySize*1.05;
	}
	public void show(){ 
		fill(20, 100, 140, 75 - mySize*2);
		//stroke(127, 200 - mySize*2);
		noStroke();
		ellipse(myX, myY, mySize, mySize);
	}
}