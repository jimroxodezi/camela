

let rec evens = function
  | [] -> []
  | h :: t -> if (h mod 2 = 0) then h :: evens t else evens t

let rec odds = function
  | [] -> []
  | h :: t -> if (h mod 2 = 1) then h :: odds t else odds t


let rec filter pred = function
  | [] -> []
  | h :: t -> if pred h then h :: filter pred t else filter pred t

let is_even x = x mod 2 = 0
let is_odd x = x mod 2 = 1

let evens' lst = filter (fun x -> x mod 2 = 0) lst
let odds' lst = filter (fun x -> x mod 2 = 0) lst

let evens'' lst = filter is_even lst
let odds'' lst = filter is_odd lste