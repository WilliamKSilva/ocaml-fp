# What is a programming paradigm?

Functional Programming is a programming paradigm. To understand what Functional Programming is and how to write it, first we need to understand what a programming paradigm is. A programming paradigm is basically the "way" we as Software Engineers write our code.

We conventionally use programming languages to write our programs and talk to our machines, since writing machine code directly for every program would be crazy. Some Programming Languages are designed and built with one or more paradigms in mind. For example, when we are talking about OOP (Object Oriented Programming) we tipically need our programming language to support some core principles, like: **Encapsulation**, **Abstraction**, **Inheritance** and **Polymorphism**.

If we take Java for example, the core of the language was built with OOP paradigm in mind, so you have a lot of tools and ways of dealing with the OOP principles listed above, like: Classes, some specific methods and even the way the memory is automatically dealt with. You as a programmer has probably messed around with OOP and Procedural programming, but what about Functional programming?

### Note:
It's also important to remember that some programming languages have support for both OOP and FP. Like Javascript for example, in Javascript you have support for First Class Functions and also Class data structures that allows you to implement all the OOP principles. While languages like that are not considered "Pure" functional languages, they gave you the hability to write FP code. 

# What is functional programming?
Functional programming is a programming paradigm broadly used on Software. With Functional programming we have Functions as the main building blocks of our applications along with some other techniques. Tipically a functional Programming language should have the following properties: 
- **First class functions**. A language that treats functions as first class citizens allows to pass functions as arguments to other functions, return functions as values and store functions as variables. [Reference](https://en.wikipedia.org/wiki/First-class_function)
- **Imutability**. Imutability garants that a created value will not change its state as long as the program is running. [Reference](https://en.wikipedia.org/wiki/Immutable_object)

During this docs I will write and give code examples about some essential techniques used in FP (Functional Programming), like: **High Order Functions**, **Currying**, **Recursion**, etc.