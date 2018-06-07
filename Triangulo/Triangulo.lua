-- :)
-- Think Twice
-- https://www.openprocessing.org/sketch/483179
-- Diokol Implementation by Fabián Francisco Campos González

local xbl = 560;
local ybl = 900;

local xm = 960;
local ym = 207;

local xbr = 1360;
local ybr = 900;


local m1 = 1.7325;
local m2 = -m1;

local xbar = 400;


local ang1 = 0;
local vangle = 0;

local mouseX=0
local mouseY=0
local pmouseX=0
local pmouseY=0

function mousePressed()

	return true
	
end

function dist ( x1, y1, x2, y2 )
  local dx = x1 - x2
  local dy = y1 - y2
  return math.sqrt ( dx * dx + dy * dy )
end

function mouseMoved(x,y)
  pmouseX = mouseX
  pmouseY = mouseY
  mouseX = x
  mouseY = y
end

function setup() 

	size(1920, 1080);
	f = loadFont("data/Vera.ttf", 16);
    textFont(f);

end

function draw() 
	background(241,230, 222);
	scale(0.8);
	local x = width()/2 + (150 * math.cos(ang1));
	local y = 600 + (180*math.sin(ang1));
	if(mousePressed()) then
		x = mouseX+190;
		y = mouseY+110;
	else 
		ang1 = angl + 0.02;
		local x1 = mouseX;
		local y1 = mouseY;
	end

  local x2 = ((-xm*m1 + ym - y - ((x)/m1 ))/((-1/m1)-m1));
  local y2 = m1*x2 - xm*m1+ym;

  local x3 = ((-xm*m2 + ym - y - ((x)/m2 ))/((-1/m2)-m2));

  local y3 = m2*x3 - xm*m2+ym; 
  
 

  strokeWeight(18);
  stroke(100);
  fill(100);
  triangle(xbl, ybl, xm, ym, xbr, ybr);
  

  stroke( 172, 202, 205);
  line(x, y, x, 900);
  stroke(176, 165, 171);
  line(x, y, x2, y2);
  stroke( 226, 167 ,151);
  line(x, y, x3, y3);
 
  --fill(0);
  --noStroke();
  --ellipse(x, y, 10, 10);

  local a = dist(x, y, x, 900);
  local b = dist(x, y, x2, y2);
  local c = dist(x, y, x3, y3);

 
  
  strokeWeight(45);
  stroke( 172, 202, 205);
  line(xbar, 900, xbar, y);
  stroke(176, 165, 171);
  line(xbar, y, xbar, y-b);
  stroke( 226, 167, 151);
  line(xbar, y-b, xbar, (y-b)-c);
  
	noStroke();
  
 -- textSize(50);
  
 fill( 172, 202, 205);
  text(math.floor(a),1500,400);
  
  fill(176, 165, 171);
  text(math.floor(b),1500,300);
  
  fill(226, 167, 151);
  text(math.floor(c),1500,500);
  
  fill(0);
  text(math.floor(a+b+c),1570,620);
  text("+",1450,400);
  
  stroke(0);
  strokeWeight(10);
  line(1510,550,1740,550);
--  ellipse(x1,y1,40,40);
 
 
end