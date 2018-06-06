--Quiltmaker
--Peter Eisenhauer
--https://www.openprocessing.org/sketch/549810
--Diokol Implementation by Fabián Francisco Campos González

local fillcolor = {};
function setup() 
	size(480,480);
  --background(200, math.random(255), 200);
  for i = 0,13, 1 do
    fillcolor[i] = {math.random(255), 120, math.random(255)};
  end
end

function draw() 
  background(255);
  noStroke();
  
  fill(fillcolor[1][1],fillcolor[1][2],fillcolor[1][3]);
  rect(width()*7/8,0, width()/8, height());
  
  fill(fillcolor[2][1],fillcolor[2][2],fillcolor[2][3]);
  rect(0,0, width()*7/8, height()/8);
  
  fill(fillcolor[3][1],fillcolor[3][2],fillcolor[3][3]);
  rect(0, height()/8, width()/8, height()*7/8);
  
  fill(fillcolor[4][1],fillcolor[4][2],fillcolor[4][3]);
  rect(width()/8, height()*7/8, width()*6/8, height()/8);
  
  fill(fillcolor[5][1],fillcolor[5][2],fillcolor[5][3]);
  rect(width()*6/8,height()/8, width()/8, height()*6/8);
  
  fill(fillcolor[6][1],fillcolor[6][2],fillcolor[6][3]);
  rect(width()/8, height()/8, width()*5/8, height()/8);
  
  fill(fillcolor[7][1],fillcolor[7][2],fillcolor[7][3]);
  rect(width()/8, height()/4, width()/8, height()*5/8);
  
  fill(fillcolor[8][1],fillcolor[8][2],fillcolor[8][3]);
  rect(width()/4, height()*6/8, width()*4/8, height()/8);
  
  fill(fillcolor[9][1],fillcolor[9][2],fillcolor[9][3]);
  rect(width()*5/8, height()/4, width()/8, height()/2);
  
  fill(fillcolor[10][1],fillcolor[10][2],fillcolor[10][3]);
  rect(width()/4, height()/4, width()*3/8, height()/8);
  
  fill(fillcolor[11][1],fillcolor[11][2],fillcolor[11][3]);
  rect(width()/4, height()*3/8, width()/8, height()*3/8);
  
  fill(fillcolor[12][1],fillcolor[12][2],fillcolor[12][3]);
  rect(width()*3/8, height()*5/8, width()*2/8, height()/8);
  
  fill(fillcolor[13][1],fillcolor[13][2],fillcolor[13][3]);
  rect(width()*3/8, height()*3/8, width()/4, height()/4);
  
end

function mouseClicked() 

  setup();
  
end