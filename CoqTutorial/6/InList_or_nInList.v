Require Import Arith.
Require Import List.

Inductive InList (A : Type)(a : A) : list A -> Prop :=
  | headIL : forall xs, InList A a (a::xs)
  | consIL : forall x xs, InList A a xs -> InList A a (x::xs).


Goal forall (A : Type)(a : A)(l : list A),
  (forall (x y : A), x = y \/ x <> y) -> InList A a l \/ ~ InList A a l.
intros.
induction l.
right.
intro.
inversion H0.

destruct IHl.
left.
constructor.
apply H0.

destruct (H a a0).
left.
rewrite H1.
constructor.

right.
intro.
inversion H2.
apply H1.
apply H4.
apply  H0.
apply H4.
Qed.

















