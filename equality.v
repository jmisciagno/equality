Definition eq' {A} (x y : A) : Prop :=
  forall (f : A -> Prop), f x <-> f y.

Definition eq'_is_eq {A} : forall (x y : A), eq x y <-> eq' x y.
  intros.
  split.
  intro H.
  rewrite <- H.
  firstorder.
  intro H.
  apply (H (eq x)).
  reflexivity.
Defined.
