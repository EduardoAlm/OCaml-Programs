let rec check cond sentados i j= 
    if j >= List.length cond then sentados 
    else
    let tam = List.length (List.nth cond j) in
    let aux = List.nth cond j in if List.nth aux 0 = 0 then check cond (sentados@[List.nth aux (tam-1)]) 1 (j+1) 
    else if not(List.mem (List.nth aux i) sentados) then check cond sentados 1 (j+1) 
    else if List.nth aux 0 >1 && i != List.nth aux 0 then check cond sentados (i+1) j 
    else check cond (sentados@[List.nth aux (tam-1)]) 1 (j+1)

let rec runFinal sentados cond i =
    if i=List.length cond then sentados 
    else runFinal (check cond sentados 1 0) cond (i+1)
    
let rec conditions cond m i=
    if i = m then List.rev cond 
    else conditions ((List.map int_of_string (Str.split (Str.regexp " ") (read_line())))::cond) m (i+1)
    
let () =
let (n, m) = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b)) in
let key = read_int() in
let cond = conditions [] m 0 in 
print_endline (let sentados = (check cond [] 1 0) in
let sentadosFinal = runFinal sentados cond 0 in
 if List.mem key sentadosFinal then "YES" else "NO")