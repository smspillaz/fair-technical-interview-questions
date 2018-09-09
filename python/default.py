#!/usr/bin/env python
#
# This code *should* print [1], [2] but does something different. Can
# you explain why and how you would fix the problem?

def append(element, array=[]):
    """Return element as appended to array."""
    array.append(element)
    return array

print(append(1))
print(append(2))