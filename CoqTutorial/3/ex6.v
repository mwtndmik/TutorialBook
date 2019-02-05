Require Import List.

Theorem rev_involutive:forall (A:Type)(l:list A), rev (rev l) = l.
intros.
induction l.
simpl.
reflexivity.
simpl.
rewrite rev_app_distr.
rewrite IHl.
simpl.
reflexivity.
Qed.



