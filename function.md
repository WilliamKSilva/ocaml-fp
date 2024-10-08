# What is a function?

First of all, before we dive in deeper techniques we need to understand the core of Functional programming: what is the basic concept of a function?

It's a piece of code that can be defined and called more than one time to reproduce some pre-defined behavior without having to be rewriten every time. Our functions can also receive parameters that are dynamic values passed on the moment of the function call that we can use on the body of the function. A basic example of a function using OCaml:
``` ocaml
  let square i = i * i
  let res = square 2
  (* In this example square evaluates to 4 and 4 is binded to res *)
```

In this example using the square function we could get every squared value we want for a specific integer. Functions are incredible because of this, we don't need to rewrite code, we have a concise way of applying behaviors to different values.