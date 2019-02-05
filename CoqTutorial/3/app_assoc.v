Require Import List.
Theorem app_assoc:forall(A:Type)(l1 l2 l3:list A), l1 ++ (l2 ++ l3) = (l1 ++ l2) ++ l3.
intros.
induction l1.
simpl.
reflexivity.
simpl.
apply (f_equal (cons a)).
apply IHl1.
Qed.

