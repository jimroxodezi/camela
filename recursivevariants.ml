

type int_list =
  | Nil
  | Cons of int * int_list  
  
  
type 'a my_list =
  | Nil
  | Cons of 'a * 'a my_list

let rec length = function
  | Nil -> 0
  | Cons (_, t) -> 1 + length t


(* standard library implementation of list *)
type 'a my_std_list = 
  | []
  | (::) of 'a * 'a my_std_list

let rec std_length = function
  | [] -> 0
  | _ :: t -> 1 + std_length t

