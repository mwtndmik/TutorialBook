Require Import List.

Theorem fold_right_app: forall(A B:Type)(f: B -> A -> A)(l1 l2:list B)(i:A),
  fold_right f i (l1 ++ l2) = fold_right f (fold_right f i l2) l1.
intros.
induction l1.
simpl.
reflexivity.
simpl.
rewrite IHl1.
reflexivity.
Qed.
