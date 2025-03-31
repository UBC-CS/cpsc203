# Class Meeting 12B

Today we will finish off our discussion of depth first search to solve Sudoku puzzles.  Then we will talk about shortest path search using Dijkstra's algorithm and priority queues.

<div>
<iframe src="../../Lec18_Maps.pdf" width="100%" height="600px" frameBorder="0"> </iframe>
</div>

[Download the Slides from today](https://github.com/ubc-cs/cpsc203/raw/main/files/Lec18_Maps.pdf)

## Topics for today's lecture

- TBA

## Links for today

- [Dijkstra's Algorithm](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm).
  - [Graphical explanation of Dijkstra's algorithm](https://www.geeksforgeeks.org/dijkstras-shortest-path-algorithm-greedy-algo-7/).
  - [Another graphical explanation of Dijkstra's algorithm](https://www.freecodecamp.org/news/dijkstras-shortest-path-algorithm-visual-introduction/).
  - [Build your own grid and run Dijkstra's algorithm](https://algo-dijkstra.vercel.app/index.html)
- Python's [`heapq` module](https://docs.python.org/3/library/heapq.html) provides an implementation of a priority queue.
  - There is also the `PriorityQueue` in the [`queue` module](https://docs.python.org/3/library/queue.html), but that is unnecessarily fancy for our simple Dijkstra's algorithm.  (It allows multiple threads to access the queue at once, which is necessary for parallel programming but not for our single threaded serial program.)
  - [Tutorial implementing Dijkstra's algorithm using `heapq`](https://www.datacamp.com/tutorial/dijkstra-algorithm-in-python).  Because there is no way to remove or update an entry in `heapq`, we may end up removing a node from the queue multiple times; however, that is okay since the first removal will represent the minimum distance / shortest path so subsequent removals can be ignored.

## Logistics

There is no repo to clone today!
