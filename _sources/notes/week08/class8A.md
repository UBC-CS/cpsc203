# Class Meeting 8A

There were no slides for today's lecture.

<div>
<iframe src="../../LecNoSlides.pdf" width="100%" height="600px" frameBorder="0"> </iframe>
</div>

## Topics for today's lecture

- Review of basic Python data structures that we have seen.
  - Lists, dictionaries, sets, tuples, frozensets, strings, and the various additional data types in the `collections` module can all operate as the "arbitrary-sized" data type that you encountered in CPSC 103 or CPSC 110: You can pass through every element of the collection (using a `for` loop) and and use accumulator(s) to perform some operation (such as a filter, map, and/or reduction).  Furthermore, looping through a collection in this manner is essentially the same speed no matter which type of collection you use.
  - But each type of collection has its own useful features; for example, a list is ordered, the keys in a dictionary can be any (immutable) data, a set will never have duplicate elements...
  - Even though looping through its elements is the most common operation on a collection, we generally choose a particular type of collection based on the other operations we wish to perform.
  - We will build data structures for more complex information from these basic Python data structures.  In order to make wise choices, we will need to think about the types of operations we wish to perform on both the more complex data structure and the more basic ones from which it is built.
- Queues, which operate on data in a First In First Out (FIFO) manner.
  - We will see an application of queues on Thursday.
  - Queues can be built on top of Python lists, but it turns out to be inefficient.
  - A more efficient approach is to use the deque data structure from the `collections` module.
- Discussion and demonstration of execution speed of various operations on Python lists and deques.
  - Mostly in JupyterLab using `%%timeit`, but also example in regular Python file using `time` module.

## Links for today

- [Guide to python data structures](https://www.geeksforgeeks.org/python-data-structures/)
- [Deque](https://www.geeksforgeeks.org/deque-in-python/)

*Warning:* [Geeks for Geeks](https://www.geeksforgeeks.org/) has great content, but I find that -- at least on my platform (aging Dell laptop with Windows 11 + Firefox or MS Edge) -- opening any of their pages tends to send my CPU and memory usage skyrocketing to the point that it is hard to do anything on the laptop other than browse that page.  The good news is that closing the page appears to resolve the issue quickly, so my workaround is just to close their page(s) whenever I'm not actively reading, and reopen if need be.  Your mileage may vary...

## Logistics

### Jupyter Lab

For class today, you will need to install JupyterLab because we'll be using an `.ipynb` file to use the `%%timeit` cell-magic.
You can do this by running the following command in the Terminal:

```terminal
conda install -c conda-forge jupyterlab
```

You can then run `jupyter lab` in the Terminal to launch a JupyterLab instance.  

*Warnings:*

- While JupyterLab is running, you will not be able to use that terminal for anything else.  If you want to do something else in a terminal, start a new terminal.
- The terminal will fill with a bunch of log messages, many of which will not be useful.  One message which may be useful will look something link this:

```terminal
 To access the server, open this file in a browser:
        file:///C:/Users/.../something.html
    Or copy and paste one of these URLs:
        http://localhost:8888/lab?token=a-big-long-string-of-characters
        http://127.0.0.1:8888/lab?token=the-same-big-long-string-of-characters
```

You can use those URLs to open additional windows / tabs in your browser that are connected to your local JupyterLab server.

### Copy the Class Activity Repository

You first need to **copy** the [template repository for class activity 08A](https://github.com/ubc-cpsc203-2023W2/class-activity-08A) containing the code for today's activity.  This step will create a copy of the template repository in your own GitHub account, so that you can commit and push edits as much as you want.

**DO NOT** directly clone the template repository.  You have only read access to the template repository, so you will not be able to push any changes back to it.

To copy the template repository, follow the instructions at [Creating a repository from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).

<!-- If we ever manage to set up GitHub's CLI
Using the terminal command line (where you replace `<name-of-your-copy>` with a suitable name for your copy of the repository):

```terminal
gh repo create <name-of-your-copy> --private --template https://github.com/ubc-cpsc203-2023W2/class-activity-08A
```
-->

### Clone your copy of the Class Activity Repository

Once you have created your own copy of the template repository, you can then clone your copy down to your local machine:

```terminal
git clone <name-of-your-copy>
```

You can then commit and push changes as you would to any personal repository.
