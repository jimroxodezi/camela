
module MyStack = struct
  type 'a stack =
    | Empty
    | Entry of 'a * 'a stack

  let empty = Empty

  let push x s = Entry (x, s)

  let peek = function
    | Empty -> failwith "stack is empty"
    | Entry(s,_) -> s 

  let pop = function
    | Empty -> failwith "stack is empty"
    | Entry (_, t) -> t

end


(* list implementation of stack. Quite an irony *)
module ListStack = struct
  type 'a stack = 'a list

  let empty = []

  let push x s = x :: s

  let peek = function
    | [] -> failwith "stack is empty"
    | h :: _ -> h

  let pop = function
    | [] -> failwith "stack is empty"
    | _ :: s -> s

end


let x = ListStack.peek (ListStack.push 42 ListStack.empty)
let x' = ListStack.(peek (push 42 empty))
let y = ListStack.(empty |> push 42 |> peek)

let z =
  let open ListStack in
  empty |> push 42 |> peek


open ListStack
let z' = empty |> push 42 |> peek