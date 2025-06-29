# Class Meeting 5A

Due to a weather disruption, today's class was presented remotely via zoom.  [Link to zoom recording](https://ubc.zoom.us/rec/share/xfO_r8AAmjtVhAdAuCTZJrJwpozieJMpxeFOeiKZ2XTqPAkWQexp3qypifZOxtYc.w0hkvsDLdlRNdkW7) and you will need passcode `n4vvf$WB` to access it.  *Note:* There is no Panopto recording for today's lecture.


Below are the slides from today's class embedded.

<div>
<iframe src="../../Lec09_WebAsData.pdf" width="100%" height="600px" frameBorder="0"> </iframe>
</div>

[Download the Slides from today](https://github.com/ubc-cs/cpsc203/raw/main/files/Lec09_WebAsData.pdf)

During the lecture we played around with the `ChartData` and `ChartEntry` classes from the `billboard` module.  I wrote and deleted a lot of code as we explored the VSCode environment and these classes, but here is the final version of the code.  It should print one line for each entry in the Hot-100 list showing the current position and the position for the previous week.

```python
import pandas as pd
import billboard

# We will write some code to get the billboard 100 for last week using the billboard.py package
chart = billboard.ChartData('hot-100','2025-01-04')

for i, s in enumerate(chart.entries):
    print("position " + str(i) + ", last week: "+ str(s.lastPos))
```

Your task to complete *before* Thursday's lecture is:
* Start with the data in `chart.entries: List[ChartEntry]`, which has one `ChartEntry` object for each song in the Hot-100 list.
* Create a variable `chart_songs: List[Dict]` with one dictionary for each song in the Hot-100 list.
* Each dictionary should have one key for each attribute of the corresponding `ChartEntry` object: `title`, `artist`, `peakPos`, `lastPos`, `weeks`, `rank`, `isNew`.  The value for each key should be the value for the corresponding attribute for that song.

In other words, you are coverting from `ChartEntry` objects to dictionary objects.  On Thursday we will load those dictionaries into a Pandas dataframe and then play around with the data.

## Links for today

- [beautifulsoup library](https://pypi.org/project/beautifulsoup4/) (and [Beautiful Soup documentation](https://www.crummy.com/software/BeautifulSoup/bs4/doc/)).
- [billboard library](https://github.com/guoguo12/billboard-charts) (and [The Python Package Index version](https://pypi.org/project/billboard.py/))

<!--
## Important links for today:

- [Canvas](https://canvas.ubc.ca/courses/130127)
- [PrairieLearn](https://canvas.ubc.ca/courses/130127/external_tools/48751)
- [Markdown Tutorial](https://commonmark.org/help/tutorial/)
-->
