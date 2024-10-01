let fibonacci n =
  let a = ref 0 in
  let b = ref 1 in
  let result = ref 0 in
  let n = ref n in

  if (!n < 0)
    then failwith "Valor inválido";
  while(!n > 0) do
    result := !a + !b;
    a := !b;
    b := !result;
    n := !n -1;
  done;

!result

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