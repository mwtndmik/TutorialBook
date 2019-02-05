Goal forall (P:nat -> nat -> Prop)(a b c d:nat), P a d -> a = b -> c = d -> P b c.
intros.
subst.
apply H.
Qed.
