program treasury;

var
  // your balance in gold coins
  balance : integer = 0;
  // capacity of your treasury 
  capacity : integer = 1000;  
  withdraw_limit : integer = 100;
  deposit_limit : integer = 200;
  
// get some gold from treasury
// amount > balance set balance to zero  
// amount > withdraw_limit print notification "Withdraw limit"
procedure withdraw(amount: integer);
begin
  //code here
 
  
end;

// put some gold into treasury
// if amount > withdraw_limit print notification "Deposit limit" 
// if balance > capacity print notification "Cannot deposit _amount_"
procedure deposit(amount:integer);  
begin
  //code here
  
end;

// return current amount of balance
function checkout():integer ;
begin
  //code here

end;

// icreases capacity of your treasury
procedure increase_capacity(amount: integer);
begin
  // code here
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