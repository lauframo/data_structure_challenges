# Array Lists

In this challenge we're going to create an `ArrayList` class. The `ArrayList` is a concrete implementation of the List abstract data type. Unlike a fixed size array, we _won't_ be telling the ArrayList how many elements it will contain up front, it will need to be able to grow as we add more and more elements to it.

You aren't allowed to use Ruby's own Array in your implementation of `ArrayList`, we'll use `FixedArray` in its place. That restriction is going to make things interesting! It will be up to you to figure out how to use `FixedArray` under the hood, but allow `ArrayList` to grow indefinitely.

_Note: Just to be crystal clear, `ArrayList` is a different data structure than a `FixedArray`, there is no inheritance relationship between them._

## Why is this important?

If we're writing code that needs to keep track of a list of things, we can't always know how big that collection of things will be before our code runs. Imagine a system that keeps track of a list of Todos. There's no way for us to know if our user is going to add 10 todos, or 100! By now we know that, at the operating system level, a real array forces us to choose a set size when we're writing our code, but we don't know how much space we're going to need up front! What are we to do?

Of course, we could try and allocate an array that's just _really big_, but we'd be using memory inefficiently, and we still might out grow it!

If the size of our collection can't be determined before we run our code, it's impossible for us to just use a standard fixed-size array. We need something that will grow as we add more and more data. That's why we're making an `ArrayList`. Later, we'll accomplish the same goal when we build a `LinkedList` which solves the same problem, but in a different way.

Again, your `ArrayList` will use `FixedArray` underneath, but it will be able to grow to any number of elements as you add things on.

## Restrictions

In the following releases do not use Ruby's built in data structures like Array, Hash or Set objects in your implementation. You'll be using FixedArray.

## Release 1: `ArrayList`

Write your code in `lib/array_list.rb`.

RSpec tests have been provided in `spec/array_list_spec.rb`. Let them guide you, but remember that just because they pass doesn't mean you understand what you're working with. Endeavor to understand the pieces you're working with, the choices you're making, and why you're having to make those choices.

### Interface
 - `ArrayList#new()`: Instantiate a new dynamic array.
 - `ArrayList#add(element)`: Add `element` to the end of the list. Return the element added.
 - `ArrayList#get(position)`: Retrieve an element at `position`. If no element exists at that position, throw a `NoSuchElementError`.
 - `ArrayList#set(position, element)`: Replace an _existing_ element at `position`. Return the element. If no element exists at that position, throw a `NoSuchElementError`.
 - `ArrayList#first()`: Return the first element in the list, throw `NoSuchElementError` if the list is empty.
 - `ArrayList#last()`: Return the last element in the list, throw `NoSuchElementError` if the list is empty.
 - `ArrayList#length()`: Return the number of items that have been added to the list so far.

## Release 2: Insert

Sometimes we want to be able to insert an element into the middle of a list. Implement and test `ArrayList#insert(position, element)`. `#insert` should insert the value `element` in the List at position `position`.  If the position you're trying to insert at is larger than the number of things in the list, throw an `OutofBoundsError`.

## Stretch: Growth strategies

There's more list-related things to explore, so you're encouraged to bookmark this stretch for later instead of diving in right now.

With that said, there are many strategies to grow your ArrayList, but they're not all created equal. Think about your own strategy, and whether it's optimal. You may interested to know that there is a growth strategy that will allow for [_amortized_ constant time](http://en.wikipedia.org/wiki/Amortized_analysis).

### Amortized?

In plain English, _amortized_ analysis of an algorithm's complexity considers the time taken in the context of many operations, not just one. If an operation is very costly sometimes, and not costly other times, we average out the cost in an amortized analysis.

If, say, the average cost of our list growth stays constant despite the size of the list we can say it has a constant-time amortized complexity (`O(1)`) even if the worse-case scenario might be worse than `O(1)`.

Note: if you improve your growth strategy, the existing tests should prove your `ArrayList` is still working the same as it did before the refactor.
