Goal forall(n m :nat)(f:nat -> nat), f n = n -> S(f (f n)) = S m -> n = m.
intros.
congruence.
Qed.


Require Import List.

Goal forall (A:Type)(x y :A), x :: y :: nil <> x :: nil.
intros.
congruence.
Qed.
