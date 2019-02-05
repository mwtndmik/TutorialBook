Fixpoint ack_bad (n m : nat) : nat :=
  match n with
  | O => S m (*1*)
  | S n' => (*2*)
    match m with
    | O => ack_bad n' 1 (*2-1*)
    | S m' => ack_bad n' (ack_bad n m') (*2-2*)
    end
  end.


(*2\u3064\u76ee\u306e\u5f15\u6570\u3092\u53d6\u308b\u90e8\u5206*)
Fixpoint ack' (f : nat -> nat)(m : nat) : nat := 
  match m with
  | O => f 1 (*2-1*)
  | S m' => f (ack' f m') (*2-2*)(*"ack n' (ack' (ack n') m')"*)
  end.

(*1\u3064\u76ee\u306e\u5f15\u6570\u3092\u53d6\u308b\u90e8\u5206*)
Fixpoint ack (n m : nat) : nat :=
  match n with
  | O => S m (*1*)
  | S n' => ack' (ack n') m (*2*)
  end.

Fixpoint ack2 (n m : nat) : nat :=
  match n with
  | O => S m
  | S n' =>
    (fix ack2' (p : nat) : nat :=
      match p with
      | O => ack2 n' 1
      | S p' => ack n' (ack2' p')
      end
    ) m
  end.