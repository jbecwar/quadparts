fn = 100;

module triangle(o_len, a_len, depth)
{
    linear_extrude(height=depth)
    {
        polygon(points=[[0,0],[a_len,0],[0,o_len]], paths=[[0,1,2]]);
    }
}

//the Board

difference()
{
    minkowski()
    {
        cube([58,16,3],true);
        cylinder(r=3,h=1,$fn=fn);
    }
   
    //screw hole
	translate([-(30.4-1.6),8,0])
	{
		cylinder(h=8,d=3.2,center=true,$fn=fn);
	}

    //screw hole
	translate([(30.4-1.6),8,0])
	{
		cylinder(h=8,d=3.2,center=true,$fn=fn);
	}
    
    //big arc cutout
    translate([0,24,0])
	{
        scale([1.7,1,1])
        {
		cylinder(h=8,d=40,center=true,$fn=fn);
        }
	}
    
    //front corner cut off
    translate([-33,-11.1,-3])
	{
		triangle(18,18,8);
	}
    
    //front corner cut off
    translate([33,-11.1,3])
	{
        rotate([0,180,0])
        {
            triangle(18,18,8);
        }
	}
}


//The camera mount
translate([0,-9.5,17])
{
    rotate([0,0,0])
    {
        difference()
        {
            cube([30,3,30], true);
            translate([-15.5,7,-10.6])
            {
                rotate([90,0,0])
                {
                triangle(20,9,15);
                }
            }
            translate([-11,0,-13])
            {
                cube([9,30,5],true);
            }
        }
        
    }
}


//second support triangle
translate([-3.5,-8,0])
{
	rotate([0,-90,0])
	{
		triangle(10,10,3);
	}
}

//second support triangle
translate([15,-8,0])
{
	rotate([0,-90,0])
	{
		triangle(10,10,3);
	}
}
