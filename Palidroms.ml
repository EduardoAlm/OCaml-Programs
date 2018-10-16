let rec check_baseLim()= 
  let base = read_int() in 
  if(base<0||base>10) then check_baseLim() 
  else base;;

let rec verify_base normal_num base = 
  if (normal_num = 0) then true 
  else if (normal_num mod 10 >= base) then false 
  else verify_base (normal_num/10) base;;

let rec inv_num normal_num reverse_num rest = 
  if (normal_num=0) then reverse_num 
  else inv_num (normal_num/10) ((reverse_num*10)+(normal_num mod 10)) (normal_num mod 10);;

let rest =0 ;; let rev=0 ;; 
let base= check_baseLim();;  
let normal_num= read_int() in 
if (not(verify_base normal_num base)) then print_string "ERROR\n" else
let reverse_num=inv_num normal_num rev rest in if reverse_num= normal_num then print_string "YES\n" else print_string"NO\n";;   







