

(* add 1 to every element of a list *)
let rec add1 = function
  | [] -> []
  | h :: t -> (h + 1) :: add1 t

let rec concatjim = function
  | [] -> []
  | h :: t -> (h ^ "jim") :: concatjim t


let rec map op = function
  | [] -> []
  | h :: t -> (op h) :: map op t


let add1' lst = map (fun x -> x + 1) lst
let concatjim' lst = map (fun x -> x ^ "jim") lst

let stringlist_of_intlist lst = map string_of_int lst


