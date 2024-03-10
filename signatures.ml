
module type Fact = sig
  (* [fact n] is [n] factorial *)
  val fact : int64 -> int64
end

module RecursiveFact : Fact = struct
  let rec fact = function
    | 0L | 1L -> 1L
    | n -> Int64.mul n  (fact(Int64.sub n 1L))
end

module TailRecursiveFact : Fact = struct
  let rec fact_aux n acc =
    match n with
    | 0L | 1L -> acc
    | n -> fact_aux (Int64.sub n 1L) (Int64.mul n acc)

  let fact n =
    fact_aux n 1L
end

let n = RecursiveFact.fact (25L)
let m = TailRecursiveFact.fact 25L