Require Import List.
Require Import Arith.
Require Import Sorting.Permutation.
Require Import Sorting.Sorted.


Fixpoint insert (a : nat)(l : list nat) : list nat :=
  match l with
  | nil => a :: nil
  | x :: xs => if leb a x then a :: l else x :: insert a xs
  end.

Fixpoint insertion_sort (l : list nat) : list nat :=
  match l with
  | nil => nil
  | x :: xs => insert x (insertion_sort xs)
  end.

Eval compute in  insertion_sort (2 :: 4 :: 1 :: 5 :: 3 :: nil).


Lemma insert_perm : forall (l : list nat)(x : nat), 
  Permutation (x :: l) (insert x l).
induction l.

simpl.
constructor.
constructor.

intros.
simpl.
destruct (leb x a).

apply Permutation_refl.
apply (perm_swap \u00a0).











