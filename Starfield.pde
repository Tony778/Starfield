//your code here
Particle [] parts = new Particle [200];
void setup()
{
	//your code here
	size (700,700);
	frameRate(60);
	for (int i = 0; i < parts.length; i++){
		parts [i] = new Particle();
		parts [0] = new OddballParticle();
	}
}
void draw()
{
	//your code here
	background(150);
	for (int i = 0; i < parts.length; i++){
		parts[i].show();
		parts[i].move();
		parts[0].show();
		parts[0].move();
	}
}

void mousePressed(){
		redraw();
}

class Particle
{
	//your code here
	double myX, myY, mySpeed, myAngle;
	int myColor; 
	Particle(){
		myAngle = ((Math.random() * 2) + 1)* Math.PI;
		mySpeed = (Math.random() * 2) + 1;
		myColor = color(0, 250, 0);
		myX = myY = 350;
	} 
	void move(){
		myX += (Math.cos(myAngle) * mySpeed);
		myY += (Math.sin(myAngle) * mySpeed);

	}
	void show(){
		fill (myColor);
		stroke(0);
		ellipse((int)myX, (int)myY, 10, 10);

	}
}

class OddballParticle extends Particle//inherits from Particle
{
	//your code here
	OddballParticle(){
		myAngle = ((Math.random() * 2))* Math.PI;
		mySpeed = (double)(Math.random() * .05);
		myColor = color(250, 0, 0);
		myX = 500;
		myY = 350;

	}
	void move(){
		myX += (Math.sin(myAngle) * mySpeed);
		myY += (Math.cos(myAngle) * mySpeed);

	}
	void show(){
		fill (myColor);
		stroke(0);
		ellipse((int)myX, (int)myY, 200, 200);
	}
}


