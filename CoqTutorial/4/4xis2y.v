Require Import Arith.

Goal forall (n :nat), (exists m:nat, n = m*4) -> exists k: nat, n = k*2.
intros.
case H.
intros.
rewrite H0.
exists (x*2).
rewrite mult_assoc_reverse.
simpl.
reflexivity.
Qed.



