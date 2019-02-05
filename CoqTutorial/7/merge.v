Require Import List.
Require Import Arith.

Fixpoint merge (l1 l2 : list nat) :=
  match l1 with
  | nil => l2
  | x::xs =>
    (fix merge' l' :=
      match l' with
      | nil => l1
      | y::ys => if leb x y then x :: merge xs l' else y :: merge' ys
      end
    ) l2
  end.


Fixpoint merge (l1 l2 : list nat) :=
  (fix merge' l' :=
    match l1, l' with
    | nil, _ => l'
    | _, nil => l1
    | x::xs, y::ys => if leb x y then x :: merge xs l' else y :: merge' ys
    end
  ) l2.