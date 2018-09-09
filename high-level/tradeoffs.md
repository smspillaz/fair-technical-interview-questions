Imagine that you are designing a system where you need to match large volumes of
data from different sources on an extremely limited memory budget (for instance,
the data is in the tens of gigabytes and you only have a single gigabyte of
memory).

Loading entire data-streams into memory isn't going to work, because you'll
very quickly run out of memory.

What approaches would you use to try and cross-match the data anyway?

How would your answer change if over-using the disk incurred
a severe performance penalty?

How would your answer change if you could use more memory but
had a much slower CPU?

How would your answer change if your data was only available
over the network and thus random access to the data itself
would be very slow?