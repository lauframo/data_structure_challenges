# Data Structures: Lists

## The Humble Array

Ruby arrays are pretty convenient. It's easy to find, add, and remove elements from a Ruby array. There's a lot going on under the hood to make it that easy, but behind the scenes, adding, removing, and finding things in Ruby arrays isn't so simple.

At a low level, whenever a program in any language wants to store something it has to ask the operating system for a piece of memory, and it has to tell the operating system how _much_ memory it wants. If the program wants to store a collection of 8 things, it might ask for 8 pieces of memory.

In lower level languages like C, arrays are fixed in size. You can say "I want an array of 8 things", but you can't add a 9th thing onto the array and expect it to grow. In truth, what Ruby calls an Array is sort of an array on steroids. Ruby arrays are actually using true, "fixed" arrays underneath, but you've never had to worry about it.

But how does it do that? If arrays are truly fixed in size, how is it possible that Ruby's Array class seems to grow indefinitely, with no concern for the idea of a fixed capacity?

It's up to you to find out. You've been provided with a class called [FixedArray](fixed_array.rb). FixedArray emulates in Ruby what a "true" array is like under the hood. In these challenges you are free to used FixedArray objects, but you cannot use Ruby's standard array (`[]`).

Why? Classic data structures and the algorithms that interact with them assume low-level, fixed arrays. The data structures don't assume you're in a user-friendly language like Ruby, so we're going to pretend we aren't.

Questions about data structures and algorithms come up in interviews _a lot_. This is your chance to get ahead of the curve and study up on some of the classics.

## Release 0: FixedArray

Before you begin, familiarize yourself with the FixedArray class and its specs. You might load it up in IRB or a runner file to play around with it.

## Release 1: The Dynamic Array

__Note: I think DynamicArray would be more intuitive than ArrayList. What do you think?__

__Note: This text should probably just be rolled into the challenge__

We're going to create a new class called a `DynamicArray`. `DynamicArray`s can grow in size to fit their contents, and don't have a fixed size. You can use an instance or instances of FixedArray to store things, but remember that you're not allowed to use Ruby's default array.

-- See challenge --
https://github.com/Devbootcamp/data-structures-array-list-challenge

## Release 1: Linked List

-- See challenge --
https://github.com/Devbootcamp/data-structures-linked-list-challenge

__Note: We should see about updating those challenges, as well as seeing if we can create a good common set of operations that work on them both so that we can compare later.__

### About Linked Lists

__Note: I wonder if the things you describe below will be better introduced after they've explored the operations in release 2. I'd like them to first discover the discrepancy and wonder why, including providing a hypothesis, before we lay it all out__


Why use a linked list over another list structure like the array we just built?  The principal benefit of a linked list over a conventional array is that list elements can inserted and removed without reallocating or reorganizing the entire structure because the list items do not need to be stored contiguously in memory or on disk.

On the other hand, linked lists do have some limitations.  Simple linked lists do not allow efficient indexing or random access to any item in the list.  Searching through the list to find a particular node is always done as a linear search, beginning with the head node and proceeding through the list.  Thus, basic operations could require scanning most or all of the list elements—for example, obtaining the last node of the list, finding a node with a given value, or locating the place where a new node should be inserted.

## Release 2

Compare array list to linked list performance based on number of operations


Related challenges:
- https://github.com/chi-salamanders-2016/data-drill-stack-and-queue-challenge
- https://github.com/chi-salamanders-2016/data-drill-linked-list-challenge
- https://github.com/chi-salamanders-2016/review-abstract-data-structures-challenge
