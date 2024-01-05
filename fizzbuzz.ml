

let fizzbuzz n = match n mod 3, n mod 5 with
  | 0,0 -> "fizzbuzz"
  | 0, _ -> "fizz"
  | _, 0 -> "buzz"
  | _,_ -> string_of_int n



let () = for i = 1 to 100 do
  (* print_endline (fizzbuzz i) *)
  Printf.printf "%d -> %s\n" i (fizzbuzz i)
done


