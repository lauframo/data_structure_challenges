# Data Structures: Lists

Ruby arrays are pretty convenient. It's easy to find, add, and remove elements from an array in Ruby. There's a lot going on under the hood to make it that easy. At a low level, adding, removing, and finding things in arrays isn't so simple.

At a low level, arrays always have a fixed capacity. When you create an array, you need to also tell the program how much memory it should reserve for that array. If you set aside enough memory for an 8-item array, that array will never be able to be nine items long. The amount of memory allocated sets a maximum size constraint that can never be exceeded.

The reason we don't have to explicitly allocate memory for arrays in Ruby is Ruby handles this for us. But what if it didn't? What if we always had to specify an array's maximum capacity when we declared it?

**Thinking about questions like these is the kind of thing that comes up in job interviews a lot.**

## Release 0

For this release, you have been given an implementation of a fixed-size array in the file [fixed_array.rb](fixed_array.rb). To complete this challenge, you should implement your own adjustable-size array in the [array_list.rb](array_list.rb) file. You must build this ArrayList class using an instance or instances of FixedArray under the hood. You may not use standard Ruby arrays at all.

Your ArrayList class must pass all the specs in [array_list_spec.rb](spec/array_list_spec.rb).

## Release 1

![linked list image](images/linked_list.png)  
*Figure 1*. Visual representation of a linked list.

A [linked list][wikipedia linked list] is a data structure made from a sequence of nodes.  In a linked list, each node contains two pieces of data: (1) a value and (2) a reference to the next node in the sequence.  The list itself contains a reference to the first node, the head.  This is displayed visually in Figure 1.

We're going to build our own linked list data structure in Ruby. It must pass all the specs in [linked_list_spec.rb](spec/linked_list_spec.rb).

### About Linked Lists

Why use a linked list over another list structure like the array we just built?  The principal benefit of a linked list over a conventional array is that list elements can inserted and removed without reallocating or reorganizing the entire structure because the list items do not need to be stored contiguously in memory or on disk.

On the other hand, linked lists do have some limitations.  Simple linked lists do not allow efficient indexing or random access to any item in the list.  Searching through the list to find a particular node is always done as a linear search, beginning with the head node and proceeding through the list.  Thus, basic operations could require scanning most or all of the list elements—for example, obtaining the last node of the list, finding a node with a given value, or locating the place where a new node should be inserted.

## Release 2

Compare array list to linked list performance based on number of operations


Related challenges:
- https://github.com/chi-salamanders-2016/data-drill-stack-and-queue-challenge
- https://github.com/chi-salamanders-2016/data-drill-linked-list-challenge
- https://github.com/chi-salamanders-2016/review-abstract-data-structures-challenge