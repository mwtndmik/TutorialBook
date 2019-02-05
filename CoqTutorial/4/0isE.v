Goal forall (n:nat), n = n +0.
intros.
induction n.
reflexivity.
simpl.
rewrite <- IHn.
reflexivity.
Qed.

