package body Calculator is
  function Add
    (Left: Integer;
     Right: Integer)
    return Integer is
  begin
    return Left + Right;
  end Add;
  
  function Add
    (Left: Float;
     Right: Float)
    return Float is
  begin
    return Left + Right;
  end Add;
end Calculator;
