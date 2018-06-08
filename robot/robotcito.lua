--Robot 2 
--Izzy Dunn
--https://www.openprocessing.org/sketch/306464
--Implementation made by André Arroyo Piedra


function setup()
	size(720,500);
	background(255);
	ellipseMode(RADIUS);
end

function draw()
	background(255)
	--eyestalks
	stroke(0)
	strokeWeight(2);         --eyestalk color
	line(320,140,280,75);    --left eyestalk 1
	line(280,75,300,40);     --left eyestalk 2
	line(430,140,490,100);   --right eyestalk 1
	line(490,100,450,40);    --right eyestalk 2
	line(375,115,375,95);    --middle eyestalk 1
	line(375,95,395,80);     --middle eyestalk 2
	line(395,80,370,50);     --middle eyestalk 3
	  
	--eyes
	noStroke();
	fill('#C40A00');           --eye color left
	ellipse(300,40,15,15);   --left eye
	fill('#C40A00');           --eye color right
	ellipse(450,40,15,15);   --right eye
	fill('#C40A00');           --eye color middle
	ellipse(375,55,25,25);   --middle eye
	  
	--pupils
	noStroke();
	fill('#FFE603');           --left pupil color
	ellipse(300,40,6,6);     --left pupil
	fill('#FFE603');           --right pupil color
	ellipse(450,40,4.5,4.5); --right pupil
	fill('#FFE603');           --middle pupil color
	ellipse(375,55,15,15);   --middle pupil
	fill(0);                 --middle pupil 2
	ellipse(375,55,5,5);     --middle pupil 2
	stroke(0);               --middle eye line color
	line(360,55,390,55);     --middle eye line

	--main body
	noStroke();
	fill('#C40A00');           --body color
	ellipse(375,200,95,95);  --top of body
	rect(280,200,190,200);   --main body
	  
	--body accents
	noStroke();
	fill('#E56400');           --right accent 1 (top) color
	rect(290,200,80,120);    --left accent 1 (top)
	fill('#FF6F00');           --left accent 2 color
	rect(290,330,80,60);     --left accent 2
	fill('#FF6F00');           --right accent 1 (top) color
	rect(380,200,80,20);     --right accent 1 (top)
	fill('#FFC800');           --right accent 2 color
	rect(380,230,80,20);     --right accent 2
	fill('#FF6F00');           --right accent 3 color
	rect(380,260,80,20);     --right accent 3
	fill('#E56400');           --right accent 4 color
	rect(380,290,80,70);     --right accent 4
	fill('#FFC800');           --right accent 5 color
	rect(380,370,80,20);     --right accent 5
	fill('#E53D00');           --top accent 1 (top) color
	rect(355,180,40,10);     --top accent 1 (top)
	fill('#E53D00');           --top accent 2 color
	rect(355,160,40,10);     --top accent 2
	fill('#E53D00');           --top accent 3 color
	rect(355,140,40,10);     --top accent 3
	fill('#E53D00');           --top accent 4 color
	rect(355,120,40,10);     --top accent 4
	  
	--feet,legs
	stroke(0);                --leg line color
	strokeWeight(2);          
	line(415,420,415,445);    --right leg line
	line(335,420,335,445);    --left leg line
	noStroke();
	fill('#9D0902');            --leg color
	rect(410,400,10,25);      --right leg
	rect(330,400,10,25);      --left leg
	fill(0);                  --foot color
	arc(415,440,20,20,0,PI);  --right foot
	arc(335,440,20,20,0,PI);  --left foot
end