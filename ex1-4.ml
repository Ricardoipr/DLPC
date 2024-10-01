let rec fibonacci n =
  if (n < 0) 
    then failwith "Valor inválido"
  else if (n < 2)
    then 1
  else 
    fibonacci (n - 1) + fibonacci (n - 2) 

let read_file filename =
  let in_channel = open_in filename in
  let line = input_line in_channel in
  close_in in_channel;           
  int_of_string line 

let () =
  let filename = "dados.txt" in
  let n = read_file filename in
  let result = fibonacci n in
  print_int result;
  print_newline ()