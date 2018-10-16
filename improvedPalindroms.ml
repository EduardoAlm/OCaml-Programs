
let rec verify_base normal_num base reverse_num = 
  if (normal_num = 0) then reverse_num 
  else if (normal_num mod 10 >= base) then -1
  else verify_base (normal_num/10) base ((reverse_num*10)+(normal_num mod 10)) 
  
let ()=  
  let base =read_int() and normal_num = read_int() in
  print_endline 
    (if (verify_base normal_num base 0) = (-1) 
    then "ERROR" else (if (verify_base normal_num base 0)=normal_num then "YES" else "NO"))
     
