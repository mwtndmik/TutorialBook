Definition ex4: forall (P Q:Prop), ~P \/ ~Q -> ~(P/\Q).
Proof.
intros.
unfold not.
intros.
case H.
case H0.
intros.
apply H3.
apply H1.
case H0.
intros.
apply H3.
apply H2.
Qed.



