Inductive InList (A : Type)(a : A) : list A -> Prop :=
  | headIL : forall xs, InList A a (a::xs)
  | consIL : forall x xs, InList A a xs -> InList A a (x::xs).

Goal forall(A:Type)(l :list A)(a a' :A), InList A a (a'::l) -> a = a' \/ InList A a l.
intros.
inversion H.
left.
reflexivity.
right.
apply H1.
Qed.

