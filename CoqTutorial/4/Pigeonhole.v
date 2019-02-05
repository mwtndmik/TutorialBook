Inductive InList (A : Type)(a : A) : list A -> Prop :=
  | headIL : forall xs, InList A a (a::xs)
  | consIL : forall x xs, InList A a xs -> InList A a (x::xs).

Require Import List.
Require Import Arith.
Require Import Omega.


Theorem lt_Snm_nm:forall(n m :nat), S n < m -> n < m.
intros.
apply (lt_trans n (S n) m).
apply (lt_n_Sn n).
apply H.
Qed.

Theorem pigehole: forall (xs: list nat), 
  length xs < fold_right plus 0 xs -> exists x:nat, InList nat (S (S x)) xs.
intros.
induction xs.
simpl in H.
apply False_ind.
apply (lt_n_O 0).
apply H.
simpl in H.
destruct a. (* a=0 *)
apply lt_Snm_nm in H.
apply IHxs in H.
destruct H.
exists x.
apply consIL.
apply H.
destruct a. (* a=1 *)
simpl in H.
apply lt_S_n in H.
apply IHxs in H.
destruct H.
exists x.
constructor.
apply H.
simpl in H. (* a=2 *)
exists a.
apply headIL.
Qed.
















