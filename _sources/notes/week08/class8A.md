# Class Meeting 8A

<div>
<iframe src="../../Lec12_DataStructures.pdf" width="100%" height="600px" frameBorder="0"> </iframe>
</div>

[Download the Slides from today](https://github.com/ubc-cs/cpsc203/raw/main/files/Lec12_DataStructures.pdf)

## Links for today

- [Guide to python data structures](https://www.geeksforgeeks.org/python-data-structures/)
- [Deque](https://www.geeksforgeeks.org/deque-in-python/)

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
