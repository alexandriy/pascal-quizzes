// Find descriminant of matrix
program matrix_solve_det;
uses MatrixHelper;  

function find_determinant(matrix: matrix10x10): real;
begin
  //code here
  
  
  result:= 0.0;
end;

//MAIN
begin 
  var mat :matrix10x10; //type matrix10x10 means array[0..9] of array[0..9] of integer; 
   mat := get_matrix10x10();
   PrintLn('Given a matrix A =');
   print_matrix(mat); // prints matrix
   var det:real = find_determinant(mat);   
   Print('Determinant of matrix A = ' + det);
end.