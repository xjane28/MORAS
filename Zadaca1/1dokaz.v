Require Import Bool.

Goal forall x y : bool,
  (x && negb y) || (negb x && negb y) || (negb x && y) = negb x || negb y.
Proof.
	intros.
	destruct x, y; reflexivity.
Qed.

Goal forall x y z : bool,
  negb (negb x && y && z) && negb (x && y && negb z) && (x && negb y && z) = (x && negb y && z).
Proof.
	intros.
	destruct x, y, z; reflexivity.
Qed.

(*
  za programiranje koristim: https://coq.vercel.app/node_modules/jscoq/examples/scratchpad.html
*)