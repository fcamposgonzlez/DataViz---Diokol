--Vintage Animation Modified
--https://www.openprocessing.org/sketch/426148
--Adaptación por Jean Carlo Paniagua Bastos

NUM_LINES = 110;

t = 0

function setup() 
  background(0);
  size(500, 500);
end


function draw()
  background(0);
  stroke(43, 153, 14);
  strokeWeight(3);
  
  translate(500/2, 500/2);
  
  for i = 1, NUM_LINES do
	line(x1(t + i), y1(t + i), x2(t + i), y2(t + i)); 
  end
  t = t + 0.3;
end

function x1(t) 
   return math.sin(t / 20) * 100 +math.sin(t / 5) * 20;
 end
  
function y1(t)
   return math.cos(-t / 10) * 100;
end

function x2(t) 
   return math.sin(t / 10) * 200 + math.sin(t) * 2;
end
  
function y2(t)
   return math.cos(t / 20) *  200 + math.cos(t / 12) * 20;
end