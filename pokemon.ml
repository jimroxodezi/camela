

(* pokemon sum type--variant *)
type poke_type =
  | TNormal
  | TFire
  | TWater

type poke_eff =
  | ENormal
  | ENotVery
  | ESuper

let mult_of_eff = function
  | ENormal -> 1.0
  | ENotVery -> 0.5
  | ESuper -> 2.0

let eff = function
  (* short form *)
  | (TFire, TFire) | (TWater, TWater) | (TFire, TWater)-> ENotVery
  (* | (TWater, TWater) -> ENotVery
  | (TFire, TWater) -> ENotVery *)
  | (TWater, TFire) -> ESuper
  | _ -> ENormal

let effv2 t1 t2 =
  match t1, t2 with
  | TFire, TFire | TWater, TWater | TFire, TWater-> ENotVery
  | TWater, TFire -> ESuper
  | _ -> ENormal