--Snowman
--Abdullah
--https://www.openprocessing.org/sketch/397429
--Implementation made by André Arroyo Piedra

function setup()
	-- Snowman_luke
	size(600,600);--hai
	background(0,0,50);
end

function draw()
	background(0,0,50);
	rect(0,500,600,100);--ground
	ellipse(300,470,270,270);--top
	ellipse(300,300,220,220);--mid
	ellipse(300,155,150,150);--low

	fill(9,17,100);--navy blue
	ellipse(260,140,15,25);--left eye
	ellipse(320,140,15,25);--right eye

	fill(0,0,25);--dark blue
	arc(75, 75, 100, 100, 0-PI/2, PI/2);

	fill(250,250,250);--white
	ellipse(257,140,5,15);--left eye shine
	ellipse(317,140,5,15);--right eye shine

	fill(59,34,14);--brown
	triangle(380,240,385,245,495,130);--right arm
	triangle(220,240,215,245,105,130);--left arm

	fill(250,138,18);--orange
	triangle(300,160,300,180,110,170);--nose

	fill(8,7,0);--black
	ellipse(290,270,30,30);--button
	ellipse(290,350,30,30);--button
	ellipse(290,440,30,30);--button
	ellipse(290,520,30,30);--button
	ellipse(295,205,10,10);--lips
	ellipse(310,203,10,10);--lips
	ellipse(280,203,10,10);--lips
	ellipse(325,197,10,10);--lips
	ellipse(265,197,10,10);--lips

	fill(10,10,10);--dark gray
	rect(200, 100, 200, 10);--rim
	rect(250,-50, 100, 150);--hat

	fill(255,0,0);--red
	rect(250, 50, 100, 25);--ribbon

	fill(238, 234,225);--marshmallow
	arc(75, 75, 100, 100, PI/2, TWO_PI-PI/2);--moon
end