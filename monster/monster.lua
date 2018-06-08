--Monster
--Jackie
--https://www.openprocessing.org/sketch/404484
--Implementation made by André Arroyo Piedra

function setup() 
	size (1000,1000);
	--background(255, 204, 0);
	background(0);
end

function draw() 
	
	
	--fill(random(0,255), random(0,255), random(0,255));
	--stroke(0);
 	--ellipse(mouseX,mouseY,50,50);
	fill(255);
	rect(700,40,10,10);
	rect(30,430, 10, 10);

	stroke(0);
	--legs
	fill(200,0,200);
	rect(350,350,50,200);
	rect(600,350,50,200);
	rect(475,350,50,200);
	--shadow knees
	fill(150,0,150);
	ellipse(500,460,60,50);
	ellipse(375,460,60,50);
	ellipse(625,460,60,50);
	--knees
	fill(200,0,200);
	ellipse(500,450,60,50);
	ellipse(375,450,60,50);
	ellipse(625,450,60,50);
	--shadow body
	fill(150,0,150);
	ellipse(500,310,350,200);
	--body
	fill(200,0,200);
	ellipse(500,300,350,200);
	--shadow eyes
	fill(200,200,200);
	ellipse(430,260,50,50);
	ellipse(560,260,50,50);
	--eyes
	fill(255,255,255);
	ellipse(430,250,50,50);
	ellipse(560,250,50,50);
	fill(0,0,0);
	ellipse(430, 250, 10,10);
	ellipse(560,250,10,10);
	--shadow mouth
	fill(210,5,0);
	rect(450,310,100,50);
	--mouth
	fill(230,20,0);
	rect(450,300,100,50);
	fill(0,0,0);
	rect(450,300,100,30);
	--shadow teeth
	fill(220,220,220);
	ellipse(460,325,20,30);
	ellipse(480,325,20,30);
	ellipse(520,325,20,30);
	ellipse(540,325,20,30);
	--teeth
	fill(255,255,255);
	ellipse(460,315,20,30);
	ellipse(480,315,20,30);
	ellipse(520,315,20,30);
	ellipse(540,315,20,30);
	--shadow feet
	fill(0,180,00);
	ellipse(375,555,60,20);
	ellipse(500,555,60,20);
	ellipse(625,555,60,20);
	--feet
	fill(0,200,0);
	ellipse(375,550,60,20);
	ellipse(500,550,60,20);
	ellipse(625,550,60,20);
	--toe
	fill(0,150,200);
	ellipse(375,550,20,10);
	ellipse(500,550,20,10);
	ellipse(625,550,20,10);
	--shadow arms
	fill(150,0,150);
	rect(650,270,120,30,4);
	rect(220,270,120,30,4);
	--arms
	fill(200,0,200);
	rect(650,260,120,30,4);
	rect(220,260,120,30,4);

		--planet
		stroke(0,180,0);
	fill(0,255,0);
	ellipse(500,900,900,900);
	stroke(0,150,0);
	fill(0,200,0);
	ellipse(600,600,30,30);
	ellipse(300,600,100,100);
	ellipse(450,700,40,40);
	ellipse(360,800,15,15);
	ellipse(200,900,150,150);
	ellipse(400,900,30,30);
	ellipse(700,800,200,200);

	   
	   --stars
	   noStroke(0);
	   fill(255);
	   	--rotate(PI/3.0);
	rect(150, 20, 10, 10);
	rect(300, 50, 10, 10);
	rect(500, 100, 10, 10);
	rect(30,430, 10, 10);
	rect(60,150, 10, 10);
	rect(150,250, 10, 10);
	rect(150,500, 10, 10);
	rect(900,450, 10, 10);
	rect(800,80, 10, 10);
	rect(880,170, 10, 10);
	rect(650,200, 10, 10);
	rect(900,600, 10, 10);
	rect(750,350, 10, 10);

end