# Linked Lists

In this challenge we're going to implement a LinkedList. [Linked Lists](http://en.wikipedia.org/wiki/Linked_list) are one approach to producing a dynamically sized collection of elements (what we know as the _List_ abstract data type). As you now know, Array Lists accomplish this as well, but they do it differently.

In a Linked List, a collection of elements is represented as a chain of **Nodes**.

The most basic Node has two things:

 * A value (also known as an _element_)
 * A pointer to another Node

![Linked List](images/nodes.png)

In other words, Linked Lists are lists that are composed of many Nodes each referencing the next. In the image below we see we have a LinkedList object. It has a pointer to the first Node in the chain. Since each Node points to the next, a LinkedList only needs a reference to its first node (typically called the `head`). The LinkedList can find the others by following the chain.

![Linked List alt](images/linked_list.png)

Notice that no arrays are involved in any of this. Instead of storing items in the list in a contiguous block of memory, we're chaining objects together to form our list.

## Why is this important?

LinkedLists are useful for the same reason ArrayLists are — they can grow as needed. LinkedLists and ArrayLists have the _exact same operations_, things like "add" and "insert", but they implement these operations very differently.

We'll eventually see that for some operations ArrayLists are fast where LinkedLists are slow, and vice versa.  Being able to decide when and where to use one data structure over another is a good skill to have in your back pocket as you head into interviews.

## Restrictions

Again, in the following releases do not use Ruby's built in data structures like Array, Hash or Set objects in your implementation.

Also do not use FixedArray — believe it or not, it isn't necessary!

The _elements_ (aka values) you store in your list may be any kind of object. I might want a list of strings, or a list of numbers. The _kind_ of values you store in your list shouldn't affect the implementation.

## Release 0: Implement `Node`

If you notice in the image above, there are really two things we're working with. The first is the idea of a `Node`, the second is the idea of a `LinkedList`. A `LinkedList` holds a reference to a node (the `head`), and this is the LinkedList's entry point into the chain of nodes representing all the items in the list.

Write your code in `lib/node.rb`.

RSpec tests have been provided in `spec/node_spec.rb`. The node is a very simple little object, nothing fancy.

### Interface
- `Node#new(element)`: Instantiate a new node containing `element`
- `Node#element()`: Return the value, or "element" that this node is storing.
- `Node#next()`: Returns the node that this node points to (the next node in the chain). This will be `nil` if the node is the end of the chain and does not point to anything.

## Release 1: Implement `LinkedList`

Write your code in `lib/linked_list.rb`.

RSpec tests have been provided in `spec/linked_list_spec.rb`. Let them guide you, but remember that just because they pass doesn't mean you understand what you're working with. Endeavor to understand the pieces you're working with, the choices you're making, and why you're having to make those choices.

Notice that the methods you're building here are _identical_ to the methods you added to ArrayList? They'll work quite differently under the hood, but they accomplish the same goals and return the same things. Later, this is going to allow us to compare and contrast how ArrayLists and LinkedLists accomplish the same tasks in different ways.

### Interface
- `LinkedList#new()`: Instantiate a new linked list
- `LinkedList#add(element)`: Add `element` to the end of the list. Return the element added.
- `LinkedList#get(position)`: Retrieve an element at `position`. If no element exists at that position, throw a `NoSuchElementError`.
- `LinkedList#set(position, element)`: Replace an _existing_ element at `position`. Return the element. If no element exists at that position, throw a `NoSuchElementError`.
- `LinkedList#first()`: Return the first element in the list, throw `NoSuchElementError` if the list is empty.
- `LinkedList#last()`: Return the last element in the list, throw `NoSuchElementError` if the list is empty.
- `LinkedList#length()`: Return the number of items that have been added to the list so far.
- `LinkedList#insert(position, element)`. `#insert` should insert the value `element` in the List at position `position`.  If the position you're trying to insert at is larger than the number of things in the list, throw an `OutofBoundsError`.
