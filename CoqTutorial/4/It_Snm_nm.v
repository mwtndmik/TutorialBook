Require Import Arith.

Theorem It_Snm_nm:forall(n m :nat), S n < m -> n < m.
intros.
apply (lt_trans n (S n) m).
apply (lt_n_Sn n).
apply H.
Qed.
