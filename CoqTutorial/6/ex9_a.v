Require Import Arith.
Require Import List.

Inductive InList (A : Type)(a : A) : list A -> Prop :=
  | headIL : forall xs, InList A a (a::xs)
  | consIL : forall x xs, InList A a xs -> InList A a (x::xs).

Theorem problem9 : forall (A : Type)(l m:list A) (a:A),
  InList A a (l ++ m) -> InList A a l \/ InList A a m.
intros.
induction l.
 right.
 apply H.

inversion H.
left.
constructor.

destruct IHl.
apply H1.

left.
constructor.
apply H3.
right.
apply H3.
Qed.



