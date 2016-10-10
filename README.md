# Data Structures: Lists

Ruby arrays are pretty convenient. It's easy to find, add, and remove elements from an array in Ruby. There's a lot going on under the hood to make it that easy. At a low level, adding, removing, and finding things in arrays isn't so simple.

At a low level, arrays always have a fixed capacity. When you create an array, you need to also tell the program how much memory it should reserve for that array. If you set aside enough memory for an 8-item array, that array will never be able to be nine items long. The amount of memory allocated sets a maximum size constraint that can never be exceeded.

The reason we don't have to explicitly allocate memory for arrays in Ruby is Ruby handles this for us. But what if it didn't? What if we always had to specify an array's maximum capacity when we declared it?

**Thinking about questions like these is the kind of thing that comes up in job interviews a lot.**

## Release 0

For this challenge, you have been given an implementation of a fixed-size array in the file [fixed_array.rb](fixed_array.rb). To complete this challenge, you should implement your own adjustable-size array in the [array_list.rb](array_list.rb) file. You must build this ArrayList class using an instance or instances of FixedArray under the hood. You may not use standard Ruby arrays at all.

## Release 1

Linked list implementation

## Release 2

Compare array list to linked list performance based on number of operations


Related challenges:
- https://github.com/chi-salamanders-2016/data-drill-stack-and-queue-challenge
- https://github.com/chi-salamanders-2016/data-drill-linked-list-challenge
- https://github.com/chi-salamanders-2016/review-abstract-data-structures-challenge