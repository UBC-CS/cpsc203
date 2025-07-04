# CPSC 203

## Features

1.  Support for executing code in a browser using [thebe](https://thebe.readthedocs.io/en/latest/) and [mybinderorg](https://mybinder.org)!

2.  Structured book with markdown file stubs aligning with a course structure for a 13 week course.
    Fully versioned using GitHub, automatically deployed using GH Actions to either GH or your own server.
    Can also be extended with a testing framework for extra peace of mind.

3.  [Examples of how to use IFrames](https://firasm.github.io/jupyterbook_course_template/notes/topic1.html#) to embed web content, @phet_sims, @sli.do polls, videos, and other content.

4.  Powerful built-in annotation and commenting features with [hypothes.is](http://hypothes.is) and [utteranc.es](http://utteranc.es).
    Annotate your syllabus, course readings, and any other content.

5.  Add persistent checkboxes so students can track their progress through notebooks, exercises and readings.

6.  Allow students to download pages of the site in PDF, link to the source code on your repo, or open in a mybinder notebook.

7.  The JupyterBook can be embedded into Canvas using the Redirect tool so students never have to leave their LMS.

8.  (NEW!) Use of the new `substitution` feature of [myst-parser](https://myst-parser.readthedocs.io/en/latest/develop/_changelog.html#id1) to configure the course algorithmically from the `_config.yml` file!

## Edit the template for your course

There are a few things you need to do to adapt this template for your course.
I might miss a few things, so this list is a work in progress:

1.  In the `_config.yml` file:

    -   [ ] Set title of the book (Physics 111)
    -   [ ] Update author (Firas Moosvi)
    -   [ ] Update logo image (images/logo.png)
    -   [ ] Add Google Analytics ID (Optional)
    -   [ ] Enable/Disable Hypothes.is (remove the line to remove the hypothes.is integration)
    -   [ ] Configure Utteranc.es repository (Choose one of Hypothesis or Utteranc.es)
    -   [ ] Adjust `extra_footer` to control License of course materials
    -   [ ] Set the substitution parameters under the `myst_substitutions`

2.  In the `_toc.yml` file:

    -   [ ] Arrange the table of contents to add/remove files

3.  In the `about` and `class` folders:

    -   [ ] Edit the .md and .ipynb files with your course content

Source code for the CPSC 203 course website of the Department of Computer Science at the University of British Columbia.

## Website notes

The course schedule is dynamically generated form the files the directories `pre-readings`, `slides`, `worksheets`, and `labs` using R.
- Files belonging to one unit should be named after the following pattern: `<id>_<file-name>`.
- `id` is a unique identifier to join tables for all related resources to produce the schedule table in `index.qmd`.

## Setup

We recommend developing content locally on your computer in a container accessed by [Visual Studio Code](https://code.visualstudio.com/).
Follow the setup instructions outlined in [Developing inside a Container using Visual Studio Code Remote Development](https://code.visualstudio.com/docs/devcontainers/containers) including the installation of Docker and the VS Code extension [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).
After cloning this repo locally to your computer, open the directory using the command **Dev Containers: Open Folder in Container…** from the Command Palette in VS Code.

## Attribution

This website design is based on:

-   [STA 199 by Mine Çetinkaya-Rundel](https://sta199-s24.github.io/)
-   [ESPM 157 by Carl Boettinger](https://espm-157.carlboettiger.info/)
-   [STA 112 by Lucy D'Agostino McGowan](https://sta-112-s24.github.io/website/)
-   [PMAP 8521 by Andrew Heiss](https://evalsp25.classes.andrewheiss.com/)

Some material was adapted from:

-   [rstudio::conf-2022 Workshop on Quarto by Tom Mock et al.](https://github.com/rstudio-conf-2022/get-started-quarto)
