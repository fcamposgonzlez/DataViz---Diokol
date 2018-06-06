--Tinkerbell Map
--Go Nishimura
--https://www.openprocessing.org/sketch/554640

a = 0.9;
b = -0.6013;
c = 2.0;
d = 0.5;
cx = 0.1; -- value of current x
cy = 0.1; -- value of current y
diameter = 1; -- diameter of an ellipse
s = 0.005; -- change scale of the map
t = 0; -- keep track of time

function setup() 
  size(1200, 650);
  background(20, 10, 10);
  noStroke();
  --frameRate(120);
end

function dist ( x1, y1, x2, y2 )
  local dx = x1 - x2
  local dy = y1 - y2
  return math.sqrt ( dx * dx + dy * dy )
end

function draw() 
  t= t+1;
  for i = 1, 20, 1 do
    -- update x and y
    local newX = cx*cx - cy*cy + a*cx + b*cy;
    local newY = 2*cx*cy + c*cx + d*cy;
  
    -- calculate the distance between the new point and the center
    local distance = dist(tonumber(width() / 2 + newX/s), tonumber(height() / 2 + newY/s), (width()/2), height()/2);
  
    -- color accoriding to the distance
    local n = math.random(tonumber(t)/30);
    
    -- draw ellipse
    if (distance >= 0 and distance < 100*n) then
		fill(202, 114, 65); --fill(255, 0, 0);
    else
		if (distance >= 100*n and distance < 200*n) then
			fill(182, 134, 85); --fill(255, 255, 0);  
		else
			if (distance >= 200*n and distance < 350*n) then
				fill(162, 164, 105); --fill(0, 255, 0); 
			else
				if (distance >= 350*n and distance < 500*n) then
					fill(142, 204, 125); --fill(0, 0, 255); 
				else 
					fill(122, 254, 205); --fill(255);
				end
			end
		end
	end
    ellipse(tonumber(width() / 2 + newX/s)+60, tonumber(height() / 2 + newY/s)+60, diameter, diameter);
    
    ----drawing in line is also interesting!
    --if (distance >= 0 && distance < 320*n) stroke(202, 114, 65, 5); --fill(255, 0, 0);
    --else if (distance >= 320*n && distance < 420*n) stroke(182, 134, 85, 5); --fill(255, 255, 0);  
    --else if (distance >= 420*n && distance < 520*n) stroke(162, 164, 105, 5); --fill(0, 255, 0); 
    --else if (distance >= 520*n && distance < 620*n) stroke(142, 204, 125, 5); --fill(0, 0, 255); 
    --else stroke(122, 254, 205, 5); --fill(255);
    --line(int(width / 2 + newX/s)+60, int(height / 2 + newY/s)+60, int(width / 2 + cx/s), int(height / 2 + cy/s));
  
    -- save the point to variables
    cx = newX;
    cy = newY;
  end
end