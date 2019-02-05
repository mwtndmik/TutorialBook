Definition ex5: forall (P:Prop), (forall (P:Prop), ~~P -> P) -> P \/ ~P.
Proof.
intros.
apply H.
unfold not.
intros.
apply H0.
left.
apply H.
unfold not.
intros.
apply H0.
right.
apply H1.
Qed.










