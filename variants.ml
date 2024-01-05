
type primary_colour = Red | Green | Blue

let r = Red

type point = float * float

type shape =
  | Circle of { centre: point; radius: float}
  | Rectangle of { lower_left: point; upper_right: point }
  | Point of point

let c1 = Circle{centre = (0., 0.); radius = 1.}
let r1 = Rectangle{ lower_left = (-1., -1.); upper_right = (1., 1.) }
let p1 = Point (12., 24.)

let avg x y =
  (x +. y) /. 2.

let centre s =
  match s with
  | Circle {centre; radius} -> centre
  (* | Rectangle { lower_left; upper_right} -> 
    let (x_lower_left, y_lower_left) = lower_left in
    let (x_upper_right, y_upper_right) = upper_right in
    (avg x_lower_left x_upper_right, avg y_lower_left y_upper_right) *)
  | Rectangle {lower_left = (x_lower_left, y_lower_left);
                upper_right = (x_upper_right, y_upper_right)} ->
              (avg x_lower_left x_upper_right, avg x_upper_right y_upper_right)
  | Point p -> p