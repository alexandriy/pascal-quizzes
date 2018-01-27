program treasury;

var
  // your balance in gold coins
  balance : integer = 0;

// get some gold from treasury
// amount > balance set balance to zero  
procedure withdraw(amount: integer);
begin
  //code here
 var temp:integer:= balance-amount; 
 if (temp<0) then
 begin
 balance:=0;
 exit;
  end;
 balance:=temp;
end;

// put some gold into treasury
procedure deposit(amount:integer);  
begin
  //code here
  var money:integer:=balance+amount;
  balance:=money;
end;

// return current amount of balance
function checkout():integer ;
begin
  //code here
result:= balance;
end;



// Main
begin 
  
  deposit(100); // put 100 gold

  Assert(checkout() = 100, 'Wrong balance'); //check balance
  
  deposit(500);
  
  Assert(checkout() = 600, 'Wrong balance');
  
  withdraw(1000);
  
  Assert(checkout() = 0, 'Wrong balance');
  
end.  