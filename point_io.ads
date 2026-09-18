--  Stream attributes for a simple record type.
pragma Ada_2022;

with Ada.Streams;

package Point_IO is

   type Point is record
      X, Y : Integer;
   end record;

   procedure Write
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Item   : Point);

   procedure Read
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Item   : out Point);

   for Point'Write use Write;
   for Point'Read  use Read;

end Point_IO;
