Definition ex0: forall(A B:Prop), A -> (A -> B) -> B :=
  fun A B x f => f x.