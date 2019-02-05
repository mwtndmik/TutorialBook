Goal forall (P Q R S:Prop), (S /\ P) /\ (Q /\ R) -> (P /\ S) /\ (R /\ Q).
intros.
destruct H.
assert (forall (X Y:Prop), X /\ Y -> Y /\ X).
  intros.
  split.
  apply H1.
  apply H1.
split.
apply H1 in H.
apply H.
apply H1 in H0.
apply H0.
Qed.




