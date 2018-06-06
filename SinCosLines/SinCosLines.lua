--SinCosLines
--Henrique Bergamo
--https://www.openprocessing.org/sketch/544500
--Diokol Implementation by Fabián Francisco Campos González

local t=0;
local angle =0;
local  NUM_LINES = 380;
local v1 =0.4;
local v2;
local increment = false;
local fator =0.00001;

function setup()
	background(20);
	size(500,500);
	v1 = math.random(0.4)+0.2;
	smooth(2);

end

function draw()
	background(0);
	angle = angle + 0.01;
	stroke(255,200);
	translate(width()/2, height()/2);
	rotate(math.sin(angle));
  
	for i=1,NUM_LINES, 1 do
		strokeWeight(4);
		point(x(t+i), y(t+i));
		point(x2(t+i), y2(t+i));
    
		strokeWeight(1.2);
    
		line(x(t+i),y(t+i),x2(t+i),y2(t+i));
	end
  
	t = t + 0.005;
 
	if(increment)then 
		v1 = v1 + fator;
	end  
end


function keyReleased()
	increment = false;
end


function keyPressed() 

	if(key == ' ') then
		v1 = random(0.4)+0.2;
	end
  
	if (keyCode == LEFT) then
		increment = true;
        fator = -0.00001; 
	else 
		if (keyCode == RIGHT) then
			increment = true;
			fator = 0.00001;
		end 
    
		if (keyCode == UP) then

			NUM_LINES = NUM_LINES + 1;
			println("nlines "+NUM_LINES);
		else 
			if (keyCode == DOWN) then

				NUM_LINES = NUM_LINES - 1;
			end  
		end
    end
end



function x(t)

	return math.sin(t/10)*100 + math.cos(t/v1)*100;
	
end


function y(t)

	return math.cos(t/10)*100 + math.sin(t/v1)*100;
	
end





function x2(t)

	return math.sin(t/10)*10 + math.cos(t/v1)*100;

end


function y2(t)

	return math.cos(t/10)*10 + math.sin(t/v1)*100;

end