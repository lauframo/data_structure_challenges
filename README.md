# Data Structures: Lists

## The Humble Array

Ruby arrays are pretty convenient. It's easy to find, add, and remove elements from a Ruby array. There's a lot going on under the hood to make it that easy, but behind the scenes, adding, removing, and finding things in Ruby arrays isn't so simple.

At a low level, when a program in any language wants to store something it has to ask the operating system for a piece of memory, and it has to tell the operating system how _much_ memory it wants. If the program wants to store a collection of 8 things, it has to ask for a piece of memory big enough to fit all 8 items up front.

In lower level languages like C, arrays are fixed in size because they really are just chunks of memory. You can say "I want an array of 8 things", but you can't add a 9th thing onto the array and expect it to grow. In truth, what Ruby _calls_ an Array is sort of an "array on steroids." Ruby arrays are actually using C-style "fixed" arrays underneath, but you've never had to worry about it.

You might be wondering, if Ruby has to use a fixed-size array underneath, how are Ruby arrays able to grow? If arrays are truly fixed in size, how is it possible that Ruby's Array class seems to grow indefinitely, with no concern for the idea of a fixed capacity? It's up to you to find out!

First, you've been provided with a class called [FixedArray](fixed_array.rb). FixedArray emulates in Ruby what a "true" array is like under the hood. In these challenges you are free to use FixedArray objects, but you cannot use Ruby's standard array (`[]`). You also aren't allowed to use Hash or Set.

We're going to be studying two interesting data structures in this small unit. Classic data structures and the algorithms that interact with them assume low-level, fixed arrays. The data structures don't assume you're in a user-friendly language like Ruby, so we're going to pretend we aren't.

Questions about data structures and algorithms come up in interviews _a lot_. This is your chance to get ahead of the curve and study up on some of the classics.

## Abstract Data Types

In computer science we have the idea of "abstract data types". An abstract data type has certain characteristics, but there are no details on how it should _actually be implemented_. We're going to be working with the abstract data type known as a "List".

There's one very important property of a List that interests us. A List data structure should be able to _grow indefinitely._ Unlike (true) arrays, which are fixed in size, a List is something that should be able to grow to fit the data we're inserting into it.

The definition of a List doesn't include _how_ we should build it, in fact there are many ways to implement the idea of a List. We'll be implementing a List in two different ways, the ArrayList and the LinkedList. Not only are these classic implementations of List, and thus good practice for you, they're also common interview questions. We'll also be able to compare and contrast how one implementation of List performs against another, which will allow us to talk a little bit about the idea of "Big-O" notation.

If this feels overwhelming don't worry, keep working through this challenge, but return to this README and read this introduction section periodically as you work. We're going to jump into coding soon.

## Release 0: FixedArray

Before you begin, familiarize yourself with the FixedArray class and its specs. You might load it up in IRB or a runner file to play around with it: `irb -r./lib/fixed_array.rb`. We won't be using Ruby's Array in this unit, instead we'll be using FixedArray, so get to know it!

## Release 1: Array List

First we're going to create a concrete implementation of the List data type known as an _ArrayList_. The details are in [array_list.md]("./array_list.md").

## Release 2: Linked List

Now we're going to take a very different approach to building a List by building a _LinkedList_. Since it is a concrete implementation of the List data type, LinkedLists must also grow dynamically, just like ArrayLists.

Unlike the `ArrayList`, our `LinkedList` will not use a `FixedArray` or normal Array at all! It achieves the same _goal_ as `ArrayList`, but in a very different way.

You'll find the details in [linked_list.md]("./linked_list.md").

## Release 3

Compare array list to linked list performance based on number of operations
