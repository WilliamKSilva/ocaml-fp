# What is a curried function? 

A curried function is a type of function that receives its parameters like (t1 -> t2 -> t3)

```ocaml
  (*
    This is a curried function
    int -> int -> int 
  *)
  let curried_sum x y = x + y 

  (*
    This is also a curried function
    int -> (int -> int)
  *)
  let curried_sum = fun x -> fun y -> x + y
```

# What is a uncurried function?

A uncurried function is a type of function that receives its parameters as a tuple (t1 * t2 -> t3)

```ocaml
  (* 
    Uncurried function
    int * int -> int 
  *)
  let uncurried_sum (x, y) = x + y
```

# Why curried functions are usefull?

Curried functions can be partially applied. Check this example:
```ocaml
  let curried_sum x y = x + y

  (* Here sum1 and sum2 evaluates to int -> int, because we partially applied x to curried_sum *)
  let sum1 = curried_sum 1 
  let sum2 = curried_sum 10

  (* Here sum1_res evaluates to 6, because we get the partially applied sum1 and apply y*)
  let sum1_res = sum1 5

  (* Here sum2_res evaluates to 15, because we get the partially applied sum2 and apply y*)
  let sum2_res = sum2 5
```

# How to convert between curried and uncurried functions? 

It's usefull to know how to convert between them, sometimes you will have access to an uncurried function but you will want a curried one.
```ocaml
  (* 
    Here we have a curried implementation of add int -> int -> int 
  *)
  let add x y = x + y

  (* 
    Here we have a uncurried implementation of add int * int -> int
  *)
  let add1 (x, y) = x + y  

  (* Here we have two functions to convert a function to curry and uncurry *)
  let curry f x y = f (x, y)
  let uncurry f (x, y) = f x y

  (* Here we have a partially applied function that converted the curried add implementation to uncurried add*)
  let uncurried_add = uncurry add
  (* Here we call the partially applied uncurried_add with two values*)
  let uncurried_add_res = uncurried_add (1, 2)

  (* Here we have a partially applied function that converted the uncurried add implementation to curried add*)
  let curried_add = curry add1
  (* Here we call the partially applied curried_add with two values*)
  let curried_add_res = curried_add 1 2
```

### Note:

A big "thank you" to Haskell Curry!