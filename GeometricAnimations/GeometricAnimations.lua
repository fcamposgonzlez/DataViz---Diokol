--Geometric Animations
--https://www.openprocessing.org/sketch/405926
--Adaptación por Jean Carlo Paniagua Bastos


t=0
theta=0
maxFrameCount = 200; --frameCount, change for faster or slower animation

function setup() 

  size(540, 540);
 
  noStroke();

  end

function draw()
  background(36,41,73);
  translate(540/2, 540/2); -- translate 0,0 to center

  t = frameCount()/maxFrameCount;
  theta = math.pi*2*t;

  for x= -175, 175,25 do
  
    for y= -100, 155, 50 do
	
      local offSet = 50*x+y+y;   -- play with offSet to change map below

      local x2 = map(math.cos(-theta+offSet), 0, 1, 0, 25); -- map x position
      local y2 = map(math.cos(-theta+offSet), 0, 1, 25, 0); -- map y position
      local sz2 = map(math.sin(-theta+offSet), 0, 1, 15, 45); -- map size off the ellipse
      fill(250-(x/2), 150+(x/6), 250-(y/2)); -- color with gradient created

      ellipse(x+x2, y-y2, sz2, sz2);
    end
  end
end