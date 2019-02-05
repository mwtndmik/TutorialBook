Require Import Arith.

Goal forall (n:nat),(exists m, n=2*m) \/ (exists m, n=2*m +1).
intros.
induction n.
left.
exists 0.
simpl.
reflexivity.
destruct IHn.
right.
destruct H.
exists x.
rewrite H.
rewrite Nat.add_comm.
simpl.
reflexivity.
left.
case H.
intros.
rewrite H0.
exists (1+x).
rewrite Nat.add_comm.
simpl.
auto with arith.
Qed.







