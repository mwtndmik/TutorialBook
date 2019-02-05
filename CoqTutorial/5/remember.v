Require Import List.

Lemma removelast_app:forall (A:Type)(l1 l2 :list A), l2 <>nil -> removelast (l1 ++ l2) = l1 ++ removelast l2.
intros.
induction l1.
simpl.
reflexivity.
simpl.
remember (l1 ++ l2).
destruct l.
apply False_ind.
simpl in IHl1.
apply H.
apply (app_eq_nil l1 l2).
rewrite Heql.
reflexivity.
f_equal.
apply IHl1.
Qed.












