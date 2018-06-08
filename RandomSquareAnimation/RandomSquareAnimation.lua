--Random Square Animation
--https://www.openprocessing.org/sketch/225008
--Adaptación por Jean Carlo Paniagua Bastos

w =250
N=13
r=5

t=0
k=0

function setup() 

  size(300, 300);
  w =250
  N=13
  r=5
  
  t=0
  k=0
end


function draw() 
  background(255);
  local dw = 250/N;
  translate(300/2, 300/2);
  noStroke();
  rectMode(CENTER);
  for i=1, N do
  
    rotate(radians(t*(N-i)));
    if (i%2==0) then
		fill(-1);
    else 
		fill(100,2,20)
	end
    rect(0, 0, w-i*dw, w-i*dw, r*(N-i), r*(N-i), r*(N-i), r*(N-i) );
  end
  t = math.sin(radians(k));
  k = k +1
end