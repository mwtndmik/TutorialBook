Definition ex2: forall (P Q R:Prop), (P -> Q) -> (Q -> R) -> P -> R.
Proof.
intros.
apply H0.
apply H.
apply H1.
Qed.

