#!/usr/bin/env python
#
# This code *should* print [0, 1, 2, 3, 4] but it does not. Can
# you explain why and what you would do to fix the problem?

def main():
    """Create some lambdas from a loop, then run them."""
    array = []
    for i in range(0, 5):
        array.append(lambda: i)
    
    print([a() for a in array])

if __name__ == "__main__":
    main()