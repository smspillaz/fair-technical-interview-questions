#!/usr/bin/env python
#
# This code defines an object which is really only for a single use.
# Can you rewrite it so that it only uses a functions?

from threading import Thread
from queue import Queue

class Processor(object):
    """Prepare to process something on a callback of some sort."""

    def __init__(self, data):
        """Make some preparations."""
        super().__init__()
        self.data = data
    
    def process(self, input):
        """Make a nice little string."""
        return "Processing {} with {}".format(repr(self.data), repr(input))

def execute(processor, input, queue):
    """Do the processing."""
    queue.put(processor.process(input))

def main():
    """Perform the work of the program."""
    processor = Processor("Some Data")
    queue = Queue()
    thread = Thread(target=execute, args=(processor, "Some Input", queue))
    thread.start()
    thread.join()

    print(queue.get())

if __name__ == "__main__":
    main()