Goal forall (P Q:Prop), P\/Q -> Q\/P.
intros.
case H.
apply or_intror.
apply or_introl.
Qed.

Goal forall (P Q:Prop), P\/Q -> Q\/P.
intros.
destruct H.
right.
apply H.
left.
apply H.
Qed.


