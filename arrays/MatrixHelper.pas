unit MatrixHelper;

interface
  type 
    matrix10x10 = array[0..9] of array[0..9] of integer;
  
  function get_matrix10x10():matrix10x10;
  procedure print_matrix(matrix:matrix10x10);
implementation
  //gets random matrix size of 10x10
  function get_matrix10x10():matrix10x10;
  begin
    var matrix:matrix10x10;
    
    for var i:= 0 to 9 do
      for var j:=0 to 9 do
        begin
          matrix[i][j]:= Random(-9,9);
        end;
    
    result := matrix;
  end;
  
  function prettify(val:integer):string;
  begin
    if(val >= 0) then
      result := ' ' + val
    else
      result := val.ToString();
  end;
  
  procedure print_matrix(matrix:matrix10x10);
  begin
    for var i:= 0 to 9 do
    begin
        Write('| ');
        for var j:=0 to 9 do
        begin
          if(j < 9) then                 
            Write(prettify(matrix[i][j]) + ' ')
          else
            Write(prettify(matrix[i][j]))
        end;
        Write(' |');
        Writeln();
        
    end;      
  end;
  

  
initialization

end.  