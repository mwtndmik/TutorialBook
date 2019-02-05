Require Import Recdef.
Require Import List.
Require Import Arith.

Fixpoint merge (l1 l2 : list nat) :=
  (fix merge' l' :=
    match l1, l' with
    | nil, _ => l'
    | _, nil => l1
    | x::xs, y::ys => if leb x y then x :: merge xs l' else y :: merge' ys
    end
  ) l2.

Fixpoint split (l : list nat) : list nat * list nat :=
  match l with
  | nil => (nil, nil)
  | x::nil => (x :: nil, nil)
  | x::y::zs => (fun l' => (x :: fst l', y :: snd l')) (split zs)
  end.

Function msort (l : list nat) {measure length l} : list nat :=
  match l with
  | nil => nil
  | x::nil => x::nil
  | x::y::zs => (fun l' => merge (msort (fst l')) (msort (snd l'))) (split l)
  end.

intros.
simpl.
subst.
Functional Scheme split_ind := Induction for split Sort Prop.
functional induction (split zs).

simpl.
auto with arith.

simpl.
auto with arith.

simpl.
auto with arith.


intros.
simpl.
subst.
functional induction (split zs).

simpl.
auto with arith.

simpl.
auto with arith.

simpl.
auto with arith.
Defined.










