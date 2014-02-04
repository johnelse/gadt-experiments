(* See http://en.wikibooks.org/wiki/Haskell/GADT#Safe_Lists
 * for a Haskell equivalent. *)

type safe
type unsafe

type ('a, _) mylist =
	| Nil : (_, unsafe) mylist
	| Cons : 'a * ('a, _) mylist -> ('a, safe) mylist

let safe_hd : ('a, safe) mylist -> 'a = function
	| Cons (x, _) -> x

let _ =
	let unsafe_list = Nil in
	(* The next line would fail to compile:
	let hd = safe_hd unsafe_list in
	*)
	let safe_list = Cons (5, unsafe_list) in
	let hd = safe_hd safe_list in
	Printf.printf "head = %d\n" hd
