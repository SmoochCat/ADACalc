package body Mathematics is
   function degree(Point_A : Integer; Point_B : Integer) return Integer is
   begin
      buffer := Point_A;
      for I in 1 .. Point_B -1 loop
         buffer := buffer * Point_A;
      end loop;
      return buffer;
   end degree;
end Mathematics;