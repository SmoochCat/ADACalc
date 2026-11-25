with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Mathematics;

procedure Adacalc is
Point_A : Integer;
Point_B : Integer;
Op : Character;
Result : Integer;

function plus(Value_A : Integer; Value_B : Integer) return Integer is
begin
   return Value_A + Value_B;
end plus;

function minus(Value_A : Integer; Value_B : Integer) return Integer is
begin
   return Value_A - Value_B;
end minus;

function mul(Value_A : Integer; Value_B : Integer) return Integer is
begin
   return Value_A * Value_B;
end mul;

function divide(Value_A : Integer; Value_B : Integer) return Integer is
begin
   return Value_A / Value_B;
end divide;

begin
   Put ("NUMBER A: ");
   Get (point_A);
   Skip_Line;

   Put ("NUMBER B: ");
   Get (point_B);
   Skip_Line;

   Put ("ELEMENT (+ | - | * | / | d): ");
   Get (Op);
   Skip_Line;

   if Op = '+' then
      Result := plus(Point_A,Point_B);
   elsif Op = '-' then
      Result := minus(Point_A,Point_B);
   elsif Op = '*' then
      Result := mul(Point_A,Point_B);
   elsif Op = '/' then
      Result := divide(Point_A,Point_B);
   elsif Op = 'd' then
      Result := Mathematics.degree(Point_A, Point_B);
   else
      Put_Line ("ERROR");
      return;
   end if;
   
   Put_Line ("RESULT: " & Integer'Image (Result));

end Adacalc;
