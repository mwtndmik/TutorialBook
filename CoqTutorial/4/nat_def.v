Inductive nat:Set :=
  | O :nat
  | S :nat -> nat.

Fixpoint plus (n m :nat) :nat :=
  match n with
  |O => m
  |S p => S (plus p m)
  end.

Fixpoint mult (n m :nat) :nat :=
  match n with
  | O => O
  | S p => m + mult p m
  end.

