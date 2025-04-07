# Class Meeting 13A

Today we will be working on Python code for geographic maps.

<div>
<iframe src="../../LecNoSlides.pdf" width="100%" height="600px" frameBorder="0"> </iframe>
</div>

## Links for today

- Mapping
  - [Video Intro to Geographic Information Systems (GIS) and Python mapping modules](https://www.youtube.com/watch?v=wsSEKm-rU6U).
- [OpenStreetMap (OSM)](https://www.openstreetmap.org/) and [an explanation of OSM](https://en.wikipedia.org/wiki/OpenStreetMap).
  - Python package [OSMnx](https://osmnx.readthedocs.io/en/stable/) for accessing OSM data.
    - [Lots of OSMnx examples](https://github.com/gboeing/osmnx-examples/tree/master/notebooks).
    - An [OSMnx Tutorial](https://gist.github.com/psychemedia/b49c49da365666ba9199d2e27d002d07).
  - Python package [NetworkX](https://networkx.org/) for representing and manipulating graphs.
    - A [NetworkX Tutorial](https://networkx.org/documentation/stable/tutorial.html).
  - Python package [GeoPandas](https://geopandas.org/en/stable/) that extends ideas from [Pandas](http://pandas.pydata.org/) to geospatial data.
    - In particular, we will be working with the [`GeoDataFrame`](https://geopandas.org/en/stable/docs/reference/geodataframe.html#geodataframe) data structure (which extends Pandas' [`DataFrame`](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.html) to geospatial data) and [`GeoDataFrame.explore`](https://geopandas.org/en/stable/docs/reference/api/geopandas.GeoDataFrame.explore.html#geopandas.GeoDataFrame.explore) for creating interactive map visualizations.

## Logistics

### Installing packages

You will probably need to install some package(s) for today's class:

- `conda install osmnx` (which should also install `networkx`)

### Getting the class activity starter code

You have two choices for how to work with the class activity code:

If you want to keep a repository on GitHub of my personal changes to the code:

  1. Make a copy of the class activity repository.
  2. Clone your personal copy to your laptop.

If you are happy to keep your personal changes only on your laptop: You can directly clone the class activity repository.

Here is the [Template repository for class activity 13A](https://github.com/ubc-cpsc203-2023W2/class-activity-13A).  You have only read access to the template repository, so you will not be able to push any changes back to it.

### How to Copy the Class Activity Repository

If you make a copy of the template repository on GitHub, then you can push your changes to the code back up to your copy on GitHub any time you want.  To copy the template repository, follow the instructions at [Creating a repository from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).

### Clone the appropriate repository

Follow the standard Git procedure to clone the appropriate repository onto your laptop:

```terminal
git clone <URL-of-repository>
```

Note that you can work on your local repository on your laptop (commit, branch, switch, restore, etc.) whether you cloned the template repository or your own copy.  But you can only push changes back up to GitHub if you made your own copy on GitHub of the template repository.
