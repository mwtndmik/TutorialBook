Require Import List.
Theorem app_eq_nil:forall (A:Type)(l1 l2:list A), l1++l2 = nil -> l1 = nil /\ l2 = nil.
intros.
split.
destruct l1.
  reflexivity.
  discriminate.
  destruct l2.
    reflexivity.
    destruct l1.
    discriminate.
    discriminate.
Qed.



Goal forall (A:Type)(a :A), nil <> a::nil.
intros.
discriminate.
Qed.
