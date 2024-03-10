
(* binary tree; recursive variant *)
type 'a tree =
  | Leaf
  | Node of 'a * 'a tree * 'a tree

(* size of tree recursively counts the number of
   nodes of the tree. *)
let rec tree_size = function
  | Leaf -> 0
  | Node (_, left, right) -> 1 + tree_size left + tree_size right

(* sum computes the sum of a tree nodes by
   recursively adding their values *)
let rec tree_sum = function
  | Leaf -> 0
  | Node(value, left, right) -> value + tree_sum left + tree_sum right

let rec tree_map f = function
  | Leaf -> Leaf
  | Node(v, left, right) -> Node(f v, tree_map f left, tree_map f right)

let rec tree_fold f acc = function
  | Leaf -> acc
  | Node (v, left, right) -> f v (tree_fold f acc left) (tree_fold f acc right)

let t =
  Node (1, 
        Node(2, Leaf, Leaf),
        Node(3, Leaf, Leaf))

let t_size = t |> tree_size
let t_sum = t |> tree_sum

let add1 = t |> tree_map succ

let sum = t |> tree_fold (fun x y z -> x + y + z) 0

let add1_sum = t |> tree_map succ |> tree_fold (fun x y z -> x + y + z) 0