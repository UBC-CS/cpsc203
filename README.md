# CPSC 203

## Features

1. Support for executing code in a browser using [thebe](https://thebe.readthedocs.io/en/latest/) and [mybinderorg](https://mybinder.org)!

1. Structured book with markdown file stubs aligning with a course structure for a 13 week course. Fully versioned using GitHub, automatically deployed using GH Actions to either GH or your own server. Can also be extended with a testing framework for extra peace of mind.

1. [Examples of how to use IFrames](https://firasm.github.io/jupyterbook_course_template/notes/topic1.html#) to embed web content, @phet_sims, @sli.do polls, videos, and other content. 

1. Powerful built-in annotation and commenting features with [hypothes.is](http://hypothes.is) and [utteranc.es](http://utteranc.es). Annotate your syllabus, course readings, and any other content.

1. Add persistent checkboxes so students can track their progress through notebooks, exercises and readings. 

1. Allow students to download pages of the site in PDF, link to the source code on your repo, or open in a mybinder notebook.

1. The JupyterBook can be embedded into Canvas using the Redirect tool so students never have to leave their LMS.

1. (NEW!) Use of the new `substitution` feature of [myst-parser](https://myst-parser.readthedocs.io/en/latest/develop/_changelog.html#id1) to configure the course algorithmically from the `_config.yml` file!

## Edit the template for your course

There are a few things you need to do to adapt this template for your course.
I might miss a few things, so this list is a work in progress:

1. In the `_config.yml` file:

	- [ ] Set title of the book (Physics 111)
	- [ ] Update author (Firas Moosvi)
	- [ ] Update logo image (images/logo.png)
	- [ ] Add Google Analytics ID (Optional)
	- [ ] Enable/Disable Hypothes.is (remove the line to remove the hypothes.is integration)
	- [ ] Configure Utteranc.es repository (Choose one of Hypothesis or Utteranc.es)
	- [ ] Adjust `extra_footer` to control License of course materials
	- [ ] Set the substitution parameters under the `myst_substitutions`

1. In the `_toc.yml` file:
	- [ ] Arrange the table of contents to add/remove files
	
1. In the `about` and `class` folders:
	- [ ] Edit the .md and .ipynb files with your course content

## Attribution

- Thanks the entire [Jupyter Project](https://jupyter.org/about)
- Finally, a big thanks to the [JupyterBook community](https://github.com/executablebooks/jupyter-book/graphs/contributors) for my incessant issues, questions, and PR requests on documentation changes.
