Goal forall (P Q:nat -> Prop)(a:nat), P (a * 2) \/ Q (a*2).
intros.
replace (Q (a * 2)) with (Q (2 * a)).
simpl.

