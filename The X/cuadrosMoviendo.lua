--The X
--By Mapo
--https://www.openprocessing.org/sketch/460326
--Implementation made by André Arroyo Piedra

function setup() 
  --createCanvas(windowWidth, windowHeight);
  size(1280,970)
  background(100);
  frameRate(80);
end

local gr = 0; 
local lb= 1200;
local b = 0;
local b1 = 0;
local ori = 0;
local ora= 1200;

function draw() 
   background(100);
  fill (105,210,31)
  noStroke(); 
  rect(gr,200,100,100);
  gr = gr +1;
  gr = constrain(gr,0,500);
  
  fill(167,219,219);
  rect(lb, 200,100,100);
  lb = lb -1;
  lb = constrain(lb,700,1200);
  
  fill(255,78,80);
  rect(b,300,100,100);
  b = b+1;
  b = constrain(b,0,600);
  b1 = constrain(b1,0,100)
  
  fill(249,212,35);
  rect(ori,400,100,100);
  ori = ori +1;
  ori = constrain(ori,0,500);
  
  fill(250,105,0);
  rect(ora,400,100,100);
  ora = ora -1;
  ora = constrain(ora,700,1200);

end