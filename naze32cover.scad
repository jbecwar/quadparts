difference()
{
        translate([-3,155,0])
		{
            import("c:/naze32mount/Naze32_Rev5_Thin_LED.stl",3);
        }
        //tx hole
        translate([23.3,14,-10])
        {
            cube([5.5,6.5,100], center=true);
        }
        //bottom part
        translate([36,11,-10])
        {
            cube([10,10,100], center=true);
        }
        //take off half
        translate([-5,13.5,-10])
        {
            cube([100,100,100], center=false);
        }
        
}