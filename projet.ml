type lterme = Var of string
    | App of lterme * lterme
    | Abs of string * lterme
    | Nat of string

let rec print_lterme l = 
    match l with 
        | App (l1, l2) -> "App " ^ (print_lterme l1) ^ " " ^ (print_lterme l2)
        | Abs (s, l1)  -> "Abs " ^ s ^ " " ^ (print_lterme l1)
        | Var s        -> "Var " ^ s
        | Nat s        -> "Nat " ^ s

let cvar s = Var(s)
let cabs s l = Abs(s,l)
let capp f a = App(f, a)

