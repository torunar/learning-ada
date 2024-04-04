with Ada.Text_IO;

procedure basic_types_ranges is
begin
  Ada.Text_IO.Put_Line(
    "integer:  ["
    & Integer'Image(Integer'First)
    & "; "
    & Integer'Image(Integer'Last)
    & "]"
  );
  Ada.Text_IO.Put_Line(
    "positive: ["
    & Positive'Image(Positive'First)
    & "; "
    & Positive'Image(Positive'Last)
    & "]"
  );
  Ada.Text_IO.Put_Line(
    "natural:  ["
    & Natural'Image(Natural'First)
    & "; "
    & Natural'Image(Natural'Last)
    & "]"
  );
  Ada.Text_IO.Put_Line(
    "longcat:  [" 
    & Long_Integer'Image(Long_Integer'First)
    & "; "
    & Long_Integer'Image(Long_Integer'Last)
    & "]"
  );
  Ada.Text_IO.Put_Line(
    "loongcat: [" 
    & Long_Long_Integer'Image(Long_Long_Integer'First)
    & "; "
    & Long_Long_Integer'Image(Long_Long_Integer'Last)
    & "]"
  );
  Ada.Text_IO.Put_Line(
    "float:    [" 
    & Float'Image(Float'First)
    & "; "
    & Float'Image(Float'Last)
    & "]"
  );
end basic_types_ranges;
