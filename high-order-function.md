# What is a High Order Function?
The definition for a High Order Function is simple: **a function that expects a function as a parameter**. But what is the use and how to use a High Order Function?

As we have talked earlier, functions are incredible building blocks for programs, we can easily define some block of code that applies some specific action to different data. But what if, for example, we want the action in our function to be dynamic too? Well, we can simply use another function. Check it out.

OCaml provide us with the **List** module, that provides a lot of predefined functions that act on Lists. Inside **List** module we have the **List.map** function for example, that is used to call a specific function to every element of a List and get a new List with the values modified.

```ocaml
  let res = List.map (fun x -> x * x) [1; 2; 3; 4; 5] 
  (* 
    In this example List.map calls the function we passed as the first argument to every element of the list we passed
    as the second argument, our values are computated and returned on a new List
    The expression evaluates to: [0; 1; 4; 9; 16; 25]
  *)
```

The function List.map is an example of a **High Order Function**, since we have to pass a function as an argument. List.map is incredibly useful, since we can apply a function to a List and get a new one with the new values easily. For example, what if insted of getting the **power of two** of the element of the List we want to check the sum of them with **5**? 

```ocaml
  let res = List.map (fun x -> x + 5) [1; 2; 3; 4; 5] 
  (* 
    The expression is called and evaluates to: [6; 7; 8; 9; 10]
  *)
```

See how easy it is? That is only possible because our language here (OCaml) provides us the hability to pass Functions as arguments to other functions.