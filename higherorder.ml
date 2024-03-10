
(* functions are higher order, that is, they are values. *)
let double x = 2 * x

let quad x = 4 * x

let quad' x = double (double x)

let quad'' x = x |> double |> double

let square x = x * x

let fourth x = x |> square |> square

(* twice takes a function f and applies it to x twice *)
let twice f x = x |> f |> f

let quad''' x = twice double x

let fourth' x = twice square x

(* using partial application *)
let quad'''' = twice double

(* using partial application *)
let fourth'' = twice square

