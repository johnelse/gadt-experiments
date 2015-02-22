type foo = Foo
type bar = Bar
type baz = Baz

type _ container =
  | Foo_ : string -> foo container
  | Bar_ : string -> bar container
  | Baz_ : string -> baz container

let to_string : type a . a container -> string = function
  | Foo_ str -> str
  | Bar_ str -> str
  | Baz_ str -> str

let get_type : type a . a container -> a = function
  | Foo_ str -> Foo
  | Bar_ str -> Bar
  | Baz_ str -> Baz

(*
let make_container : type a . a -> string -> a container =
  (fun typ str ->
    match typ with
    | Foo -> Foo_ str
    | Bar -> Bar_ str
    | Baz -> Baz_ str)
*)

let () =
  let container = Foo_ "ok" in
  print_endline (to_string container)
