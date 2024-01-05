
(* determine if a list is empty *)
(* let is_empty lst =
  match lst with
  | [] -> true
  | _ :: _ -> false *)
  (* same as above *)
let is_empty = function
  | [] -> true
  | _ :: _ -> false

  (* sum of the elements of a list *)
let rec list_sum = function
  | [] -> 0
  | h :: t -> h + list_sum t

(* length of a list *)
let rec list_length lst =
  match lst with
  | [] -> 0
  | _ :: t -> 1 + list_length t

let rec list_append lst1 lst2 =
  match lst1 with
  | [] -> lst2
  | h :: t -> h :: list_append t lst2

