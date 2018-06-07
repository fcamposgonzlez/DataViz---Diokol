--kirby
--Rachael Farquharson
--https://www.openprocessing.org/sketch/112192
--Implementation made by André Arroyo Piedra

function setup()
  noStroke();
  smooth(); 
  size(600,600);
  background(78,195, 245);
end
 
function draw()
  background(78,195, 245)
  --Call the functions required to draw Kirby
  drawClouds(); 
  drawFeet();
  drawArms();
  drawBody();
  drawFace();
  drawGrass();
  
  noLoop(); --Stop execution to reduce resource usage and prevent overlapping Kirbys
end
 
function drawClouds() --Creates 5 clouds with a random shape in a random location
  fill(255, 255, 255, 180);
  for i = 0 ,5 do
    ellipse(math.random(500), math.random(600), 200 - math.random(50), 100 - math.random(50));
  end
end
 
function drawFeet()
  fill(217, 15, 82); 
  --Left foot
  rotate(radians(60));
  ellipse(460, 80, 120, 180);
  rotate(radians(300));
  --Right foot
  rotate(radians(130));
  ellipse(50, -600, 120, 180);
  rotate(radians(230));
end

function drawArms()
  --Left Arm
  fill(235, 157, 200);
  rotate(radians(140));
  ellipse(0, -265, 120, 180);
  rotate(radians(220));
  --Right arm
  rotate(radians(60));
  ellipse(430,  -270, 120, 180);
  rotate(radians(300));
end

function drawBody()
  --Code for Kirby's body
  strokeWeight(0);
  ellipse(300,300,300,300);
end

function drawFace()
  --Returns pen to black
  fill(0);
  ellipse(265, 250, 35, 100); --Left eye
  ellipse(330, 250, 35, 100); --Right eye
  fill(255); --Turns pen to white
  --White of the eyes
  ellipse(265, 220, 20, 32);
  ellipse(330, 220, 20, 32);
  --Cheeks
  fill(219, 77, 155, 150);
  strokeWeight(0); --Removes outline
  ellipse(210, 320, 50, 25); --Left Cheek
  ellipse(385, 320, 50, 25); --Right Cheek
  --Mouth
  fill(117, 1, 36); 
  arc(300, 335, 60, 60, -0.75, PI+QUARTER_PI, CHORD); 
  --Tongue
  fill(217, 15, 82); 
  arc(300, 340, 45, 45, -0.75, PI+QUARTER_PI, CHORD);
end
function drawGrass()
  --Grass
  fill(35, 232, 61);
  ellipse(300, 1000, 1000, 1000);
end