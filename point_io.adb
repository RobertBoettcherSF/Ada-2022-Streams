pragma Ada_2022;

package body Point_IO is

   procedure Write
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Item   : Point)
   is
   begin
      Integer'Write (Stream, Item.X);
      Integer'Write (Stream, Item.Y);
   end Write;

   procedure Read
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Item   : out Point)
   is
   begin
      Integer'Read (Stream, Item.X);
      Integer'Read (Stream, Item.Y);
   end Read;

end Point_IO;
