Goal forall (P Q: Prop), P /\ Q -> Q /\ P.
intros.
case H.
intros.
apply conj.
apply H1.
apply H0.
Qed.





