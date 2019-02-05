Inductive list (A:Type): Type :=
  | nil : list A
  | cons : A -> list A -> list A.

Inductive False: Prop := .

Definition not (A:Prop):= A -> False.

Goal forall P: Prop, P -> ~~P.
intros.
intro.
apply H0.
apply H.
Qed.
