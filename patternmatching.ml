

let x = 
  match not true with
  | true -> "nope"
  | false -> "yep"

let y =
  match 42 with
  | foo -> foo

let z =
  match "foo" with
  | "bar" -> 0
  | _ -> 1

let b =
  match ["Jimrox"; "Odezi"; "Ogume"] with
  | [] -> ["folklore"]
  | h :: t -> t

let first_three t =
  match t with
  | (a,b,c) -> a

  