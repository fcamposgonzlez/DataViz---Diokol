--bezier + lissajus
--https://www.openprocessing.org/sketch/445137
--Adaptación por Jean Carlo Paniagua

xA=0
yA=0
xB=0
yB=0 
x1=0
y1=0
x2=0
y2=0

sx=0 
sy=0

angle=0
speed=0
radi=0

c=0
s=0

function setup() 
  size(750,450);
  background(255);
  smooth();

  sx = math.random(5.0);
  sy = math.random(5.0);

  angle = 0.0;
  speed = 0.01;
  radi = 300.0;
  xA = 20;
  yA = 450/2;
  xB = 750-20;
  yB = 450/2;
end

function draw() 
  
  c = math.cos(angle);
  s = math.sin(angle/sy);


  x1 = 750/3+c*radi;
  y1 = 450/2+s*radi;

  x2 = 2*750/3 + math.cos(angle/sx)*radi;
  y2 = 450/2 + math.sin(angle)*radi;

  noFill();
  stroke(0,10);
  bezier(xA,yA,x1,y1,x2,y2,xB,yB);

  angle=angle+speed;
end

function neteja() 
  background(255);
end