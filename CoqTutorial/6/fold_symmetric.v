Require Import List.

(*use generalize*)
Theorem fold_symmetric :
  forall (A:Type) (f:A -> A -> A),
    (forall x y z:A, f x (f y z) = f (f x y) z) ->
    (forall x y:A, f x y = f y x) ->
    forall (a0:A) (l:list A), fold_left f l a0 = fold_right f a0 l.

intros.
destruct l.
simpl.
reflexivity.
simpl.
generalize a, a0.
induction l.
intros.
simpl.
apply (H0 a2 a1).
intros.
simpl.
rewrite H.
rewrite <- (IHl (f a2 a1) a3).
rewrite H.
reflexivity.
Qed.

(*not use generalize*)
Theorem fold_symmetric2 :
  forall (A:Type) (f:A -> A -> A),
    (forall x y z:A, f x (f y z) = f (f x y) z) ->
    (forall x y:A, f x y = f y x) ->
    forall (a0:A) (l:list A), fold_left f l a0 = fold_right f a0 l.

intros.
destruct l.
simpl.
reflexivity.
simpl.
induction l.
simpl.
apply H0.
simpl.
rewrite H.
replace (f (f a0 a) a1) with (f a0 (f a a1)). (*\u8a70\u307f*)








