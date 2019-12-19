type Shape is (Circle, Triangle, Rectangle); -- Construct enumeration for types of shapes possible
type Colors is (Red, Green, Blue); -- Construct enumeration for colors
type Figure (Form : Shape) is record -- Figure has variant Form records of type Shape (from enumeration)
Filled : Boolean;
Color : Colors;
    case Form is
	   when Circle =>
	  Diameter : Float;
	   when Triangle =>
	  Left_Side : Integer;
	  Right_Side : Integer;
	  Angle : Float;
	   when Rectangle =>
	  Side_1 : Integer;
	  Side_2 : Integer;
    end case
end record;
	-- More code here --
Figure_1 : Figure; -- Unconstrained variant record of the record type Figure, and has no initial values
Figure_2 : Figure(Form => Triangle); -- Constrain the variant record to a Triangle
									 -- Figure_1's type can be changed by the assignment of a whole record
	Figure_1 := (Filled => True,
				 Color => Blue,
				 Form => Rectangle,
				 Side_1 => 12,
				 Side_2 => 3);
