--Simple Bar Charts design
--David Brush
--https:--www.openprocessing.org/user/194#sketches
--Diokol Implementation by Fabián Francisco Campos González

function setup() 
   size(800, 600);
   smooth();
   --Use system font 'Arial' as the header font with 12 point type
   h1 = loadFont("data/Vera.ttf", 12);
   --Use system font 'Arial' as the label font with 9 point type
   l1 = loadFont("data/Vera.ttf", 9);
end

function draw() 
   --Set Background to white.
   background(255);
   --Call barchart function. Variables are: Filename(1 Row CSV Format), Y Position of chart, X Position of chart, Chart Height, Chart Width, Column Red Amount, Column Green Amount, Column Blue Amount, Column Alpha Amount, Label Placement (1 for below columns, 0 for above columns) 
   barchart({33,22,55,66,88,99}, 150, 50, 125, 300, 10, 110, 75, 255, 0);
   barchart({23,54,6,89,76,73,90}, 150, 400, 125, 300, 145, 32, 175, 255, 0);
   barchart({33,65,64,68,98,76}, 500, 50, 300, 700, 45, 76, 220, 255, 1);
end

function barchart(filename,yf1,xf1,yscale,xscale, r1, g1,b1,a1,labelplacement)
   --Declare a local variabe for the max y axis value.
   --local ymax;
   
   --Declare a local variable for the minimum y axis value.
   local ymin = 0;
   
   --Set the stroke color to a medium gray for the axis lines.
   stroke(175);
   
   --draw the axis lines.
   line(xf1-3,yf1+2,xf1+xscale,yf1+2);
   line(xf1-3,yf1+2,xf1-3,yf1-yscale);
   
   --turn off strokes for the bar charts.
   noStroke();
   
   --loop the chart drawing once.
   for c1 = 0, 1,1 do
   
   --Set the start x point value.
   
   xfstart = xf1;  
   
   --Load the file.
   --String[] lines = loadStrings(filename);
	local lines1 = filename;
   
   --Count the number of rows in the file.
  --for i = 1, #lines1, 1 do
     
     --For each line split values separated by columns into pieces.
     local pieces = lines1;
     
     --Set the max Y axis value to be 10 greater than the max value in the pieces array.
     local ymax = math.max(unpack(pieces)) + 10;
     
     --Count the number of pieces in the array.
     local xcount = #pieces; 
     
     --Draw the minimum and maximum Y Axis labels. 
     textFont(h1);
     fill (100);
     textAlign(RIGHT, CENTER);
     text((ymax), xf1-8, yf1-yscale);
     text((ymin), xf1-8, yf1);
     
     --Draw each column in the data series.
     for i2 = 1, xcount, 1 do
       
       --Get the column value and set it has the height.
       local yheight = tonumber(pieces[i2]); 
       
       --Declare the variables to hold column height as scaled to the y axis.     
       --local ypct;
       --local ysclhght;
       
       --calculate the scale of given the height of the chart.
       local ypct = yheight / ymax;
       
       --Calculate the scale height of the column given the height of the chart.
       local ysclhght = yscale * ypct;
       
       --If the column height exceeds the chart height than truncate it to the max value possible.
       if ysclhght > yscale then
         ysclhght = yscale;
       end
       
       --Determine the width of the column placeholders on the X axis.
       local xcolumns = xscale / xcount; 
       
       --Set the width of the columns to 5 pixels less than the column placeholders.
       local xwidth = xcolumns - 5; 
       
       --Set the fill color of the columns.
       fill (r1,g1,b1,a1);
       
       --Draw the columns to scale.
       quad(xf1, yf1, xf1, yf1-ysclhght, xf1 + xwidth, yf1-ysclhght, xf1 + xwidth, yf1);
       
       --Draw the labels.
       textFont(l1);
       textAlign(CENTER, CENTER);
       fill (100);
       
       --Decide where the labels will be placed.
       if labelplacement < 1 then
       --Above the columns.
       text(pieces[i2], xf1 + (xwidth / 2), yf1 - (ysclhght + 8));
       else 
         --Below the columns.
         text(pieces[i2], xf1 + (xwidth / 2), yf1 + 8);
       end
       --increment the x point at which to draw a column.
       xf1 = xf1 + xcolumns;
       end
    --end
  --Reset the draw point the original X value to prevent infinite redrawing to the right of the chart.  
  xf1 = xfstart;
  end
end