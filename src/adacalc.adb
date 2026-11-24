with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Adacalc is
Point_A : Integer;
Point_B : Integer;
Op : Character;
Result : Integer;

begin
   Put ("NUMBER A: ");
   Get (point_A);
   Skip_Line;

   Put ("NUMBER B: ");
   Get (point_B);
   Skip_Line;

   Put ("ELEMENT (+ | -): ");
   Get (Op);
   Skip_Line;

   if Op = '+' then
      Result := Point_A + Point_B;
   elsif Op = '-' then
      Result := Point_A - Point_B;
   else
      Put_Line ("ERROR");
      return;
   end if;
   
   Put_Line ("RESULT: " & Integer'Image (Result));

end Adacalc;
