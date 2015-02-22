type foo = Foo
type bar = Bar
type baz = Baz

type _ mark =
  | FooM : foo mark
  | BarM : bar mark
  | BazM : baz mark

type _ container =
  | FooC : string -> foo container
  | BarC : string -> bar container
  | BazC : string -> baz container

let to_string : type a . a container -> string = function
  | FooC str -> str
  | BarC str -> str
  | BazC str -> str

let get_type : type a . a container -> a = function
  | FooC str -> Foo
  | BarC str -> Bar
  | BazC str -> Baz

let make_container : type a . a mark -> string -> a container =
  (fun mark str ->
    match mark with
    | FooM -> FooC str
    | BarM -> BarC str
    | BazM -> BazC str)

let () =
  let container1 = FooC "ok" in
  print_endline (to_string container1);
  let container2 = make_container BarM "bar" in
  print_endline (to_string container2)
