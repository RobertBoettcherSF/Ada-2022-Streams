pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Memory_Stream;
with Point_IO;

procedure Tests is
   S : aliased Memory_Stream.Buffer_Stream (256);
   P : Point_IO.Point := (X => 11, Y => -4);
   Q : Point_IO.Point;
begin
   Point_IO.Point'Write (S'Access, P);
   Assert (Natural (Memory_Stream.Written (S)) > 0);
   Put_Line ("PASS Point'Write into memory stream");

   Point_IO.Point'Read (S'Access, Q);
   Assert (Q.X = 11 and then Q.Y = -4);
   Put_Line ("PASS Point'Read round-trip");

   Memory_Stream.Reset (S);
   Integer'Write (S'Access, 42);
   declare
      N : Integer;
   begin
      Integer'Read (S'Access, N);
      Assert (N = 42);
   end;
   Put_Line ("PASS Integer'Write/'Read");

   Put_Line ("All Streams topic tests passed.");
end Tests;
