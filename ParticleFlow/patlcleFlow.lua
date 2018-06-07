--particleFLow
--yasai
--https://www.openprocessing.org/sketch/422446
--Adaptación por Jean Carlo Paniagua

circle = 200;
rot = 0
col = 0
freq = 0.000005; 
cont = 0;
r = 0

function setup() 
  size(600,600)
end

function draw() 
  background(242);
  translate(300, 300);
  rotate(radians(rot));

 ellipseMode(RADIUS);

  for i=1, 500 do
    circle = 200 + 50*math.sin((os.time()*99999999999999999999999999999999)*freq*i);
    col=map(circle,150,250,255,60);
    r=map(circle,150,250,5,2);
    fill(col,0,74);
    noStroke();
    ellipse(circle*math.cos(i), circle*math.sin(i),r,r);    
    rot=rot+0.00005;
  end
end