# equality

In Coq,

```
(x : A) = (y : A).
```

is propositionally equivalent to

```
forall {A : Type} (x y : A) (f : A -> Prop),
  f x <-> f y.
```
