# Data Structures: Lists

Ruby arrays are pretty convenient. It's easy to find, add, and remove elements from an array in Ruby. There's a lot going on under the hood to make it that easy. At a low level, adding, removing, and finding things in arrays isn't so simple.

For starters, at a low level, arrays always have a fixed capacity. When you create an array, you need to also tell the program how much memory it should reserve for that array. If you set aside enough memory for an 8-item array, that array will never be able to be nine items long. It is fine for an array with memory space for 8 items to only have seven things in it, but it will never be able to have nine things in it.

The reason we don't have to allocate memory in Ruby is Ruby handles this for us. But what if it didn't? What if we always had to specify an array's maximum capacity when we declared it?

Thinking about questions like these is the kind of thing that comes up in job interviews a lot.