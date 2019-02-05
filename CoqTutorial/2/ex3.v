Definition ex3: forall (P:Prop), ~(P /\ ~P).
Proof.
intros.
unfold not.
intros.
case H.
intros.
apply H1.
apply H0.
Qed.
