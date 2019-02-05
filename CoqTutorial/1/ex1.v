Definition ex1: forall(A B C: Prop), (A -> B -> C) -> B -> A -> C:=
  fun A B C f y x => (f x) y.