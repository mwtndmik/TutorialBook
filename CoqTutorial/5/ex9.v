Require Import Arith.
Require Import List.

Inductive InList (A : Type)(a : A) : list A -> Prop :=
  | headIL : forall xs, InList A a (a::xs)
  | consIL : forall x xs, InList A a xs -> InList A a (x::xs).


Goal forall(A:Type)(l1 l2:list A)(a:A), InList A a (l1 ++ l2) -> InList A a l1 \/ InList A a l2.
intros.
induction l1.
right.
simpl in H.
apply H.
induction l2.
left.
simpl in H.
rewrite app_nil_r in H.
apply H.
simpl in H.
simpl in IHl2.















