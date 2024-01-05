
(* record type *)
type student = {
  name : string;
  year : int;
}

(* record usage *)
let fav = {
  name = "Favour Kings";
  year = 2011
}

(* tuple declaration *)
type time = int * int * string

(* tuple usage *)
let t = (10, 10, "am")

type point = float * float
let p : point = (3., 5.)

let name_and_year s =
  match s with
  | {name; year} -> name ^ " '" ^ string_of_int (year mod 100)