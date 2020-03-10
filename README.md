# Mapping Environmental Action

This code is associated with a scholarly paper "Mapping Environmental Action" (currently unpublished). In the paper, I draw on original data gathered from my research with Eco-groups in Scotland (2013-2017) in order to do comparative geospatial analysis of the coincidence of these groups with a number of standard demographics. You can read (an unpublished version of) the paper at (http://mapenvcom.jeremykidwell.info/mapping_draft.html).

## Why Reproducible Research? ##

If you're new to github and reproducible research, welcome! It's nice to have you here. Github is ordinarily a place where software developers working on open source software projects deposit their code as they write software collaboratively. However, in recent years a number of scholarly researchers, especially people working on research that involves a digital component (including me!) have begun to deposit their papers in these same software repositories. The idea is that you can download all of the source-code and data used in this paper alongside the actual text, run it yourself and ["reproduce" the results](http://kbroman.org/steps2rr/). This can serve as a useful safeguard, a layer of research transparency, and a cool teaching tool for other persons interested in doing similar work. Particularly when, as is the case in subject areas that are only just starting to get involved in the digital humanities, like religious studies, there is a dearth of work of this nature, it can be helpful to have examples of practice which can be reused, or at least used as an example.

Eschewing proprietary, expensive and unreliable software like Microsoft Word, I write in a combination of two languages: (1) [Markdown](https://en.wikipedia.org/wiki/Markdown) which is intended to be as close as possible to plain text while still allowing for things like boldfaced type, headings and footnotes; and (2) a programming language called [R](https://en.wikipedia.org/wiki/R_(programming_language)) to do all the data analysis. R is an object oriented language that was specifically designed for statistical analysis. It's also great fun to tinker with. As you look through this paper, you'll see that R code is integrated into the text of the document. This is indicated by a series of three backticks (```). There is a formal specification now at a mature stage of development, which is RMarkdown. You can read semi-official specification [for this here](https://bookdown.org/yihui/rmarkdown/pdf-document.html).

To read a bit more on these things and start on your own path towards plain text reproducible research, I highly recommend:
- Karl Broman's guide, "[Initial Steps Toward Reproducible Research](http://kbroman.org/steps2rr/)"
- Kieran Healy's guide, "[The Plain Person’s Guide to Plain Text Social Science](http://kieranhealy.org/files/papers/plain-person-text.pdf)"

The other advantage of putting this paper here is that readers and reviewers can suggest changes and point out errors in the document. To do this, I recommend that you create a github issue by clicking on the green "New issue" button [here](https://github.com/kidwellj/mapping_environmental_action/issues). If you must, you can also send me emails. More stuff about me [can be found here](http://jeremykidwell.info). 

To skip ahead and start reading the actual paper in raw format, click on [`mapping_draft.rmd`](https://github.com/kidwellj/mapping_environmental_action/blob/master/mapping_draft.Rmd) above. If you were looking for the article (without code) you can also find a working draft here: (http://mapenvcom.jeremykidwell.info/mapping_draft.html).

Now for...

## The technical version ##

This repository contains the code and writing towards a (working draft of a) scholarly paper that presents my analysis of the geospatial footprint of eco-groups in the UK. This is based on research I have been conducting since 2013 and that is ongoing. The paper is written in R Markdown and for the most part, I'm using the conventions outlined by Kieran Healy [here](https://kieranhealy.org/blog/archives/2014/01/23/plain-text/) and is best viewed (I think) in [R Studio](https://www.rstudio.com) though it will be reasonably comprehensible to anyone using a Markdown editor. If I'm not working in RStudio, I'm probably in Sublime text, FYI. Co-authors and collaborators take note, generally, I use [Hadley Wickham's venerable R Style Guide](http://adv-r.had.co.nz/Style.html). 

I'd be extremely happy if someone found errors, or imagined a more efficient means of analysis and either reported them as an issue on this github repository or sent me an email.

The actual article is in `mapping_draft.Rmd` and can be compiled using knitr (assuming you have R installed as well as required packages) using the `Makefile` provided.

Note: actual execution may take over an hour, as calls to `st_buffer` and `st_within` under `wilderness_data_prep` are computationally intensive. To compile more briskly, I recommend you comment out this final section and knit the markdown/html files. I have been relying on the University of Birmingham supercomputing cluster for execution, which has resulted in a parallel version of this script `mapping_draft-hpc_optimised.Rmd`. The latter will only run on the BlueBEAR cluster at UOB, though other scholars may want to consult this script to get a sense of how geospatial operations can be parallelised for more efficient execution.

Paths in this folder are used mostly for R processing. I'm using a "project" oriented workflow, on which you can read more [in a blog by Jenny Bryan here](https://www.tidyverse.org/blog/2017/12/workflow-vs-script/). This uses the R package [here](https://cran.r-project.org/web/packages/here/index.html).
Towards this end folders have the following significance:

- `data` contains datasets used for analysis.
- `derived_data` contains files which represent modified forms of files in the above path.
- `figures` contains images and visualisations (graphic files) which are generated by R for the final form of the document.
- `cache` isn't included in github but is usually used for working files

Note: none of the contents of the above are included in the github repository unless they are unavailable from an external repository.

## And, a few notes for the data scientists

Over the course of this research project (since 2013, really), the state of geospatial tools for datascience in R (and python) has shifted and the increased attention and resources that have been brought to bear on geospatial has resulted in a dramatic improvement in the quality and precision of tools available, particularly the development of SimpleFeatures and the [sf](https://github.com/r-spatial/sf) and [tmap](https://github.com/mtennekes/tmap) packages for R. Ggplot2 is awesome, but starts to creak quickly when you push it in more creative geospatial directions. There are also inefficiencies with data handling in some of the older packages (such as sp) that aren't apparent until you start working with large datasets. Underlying data formats have been shifting quite a lot as well, from csvt and [very problematic and proprietary ESRI shapefiles](http://switchfromshapefile.org/) to geojson/topojson and [Geopackage](http://switchfromshapefile.org/#geopackage) formats. The result of this has a need to completely rewrite this script mid-way through the research process. I've left some of the messy bits in with as comprehensive comments as possible to give a sense of things, but there remain some bits which are accidentally messy.

There are a few aspects of this code which are novel or were difficult that I'm proud of, which I hope may be useful and on ehich I'd especially value 

- The use of sf() and tmap()
- The creation of vignettes for visualisations
- The level of reproducibility
- Optimisation of intensive geospatial operations for htpc and parallel computing

# Prerequisites for reproducing this codebase

I've tried to follow best practices in setting up this script for reproducibility, but given some of the choices I've had to make computationally (e.g. running some operations in PostGIS) some setup is required before execution will be successful.

These steps are:

1. Acquire a working installation of R (and RStudio). I have produced a Docker container that replicates the environment I have used to execute this script that is probably the easiest way to complete this task.
2. Set up a working Postgres database with PostGIS extensions installed. The script will download necessary data and load it into your database if it is not already in place.
3. Install platform appropriate prerequisites for the R odbc() package, see here: [https://github.com/r-dbi/odbc#installation]
4. Configure a local `config.yml` file with the following information (used to connect to your PostGIS database):
```
default:
  datawarehouse:
    driver: 'Postgres' 
    server: 'change.to.yourserver.com'
    uid: 'change-to-your-username'
    pwd: 'change-to-your-password'  
    port: 5432
    database: 'database-name'
```
5. Clone or download the code from this repository
6. Set up a proper R/RStudio working environment. I use the `renv` package to manage working environment, which takes snapshots and stores them to `renv.lock`. If you run `renv::restore()` in R after loading this code, it will install necessary libraries at proper versions.
7. Nearly all of the data used in this study is open, with one exception, that of the Ordnance Survey PointX data product. This is available to most UK academics via the EDINA service, so the user will need to manually download this data and place it in the `/data/` directory.

# Contributing

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project, you agree to abide by its terms.

# License

The content of this research paper are licensed under the [Creative Commons Attribution-ShareAlike 4.0 International Public License](https://creativecommons.org/licenses/by-sa/4.0/legalcode), and the underlying source code used to generate the paper is licensed under the [GNU AGPLv3](https://www.gnu.org/licenses/agpl-3.0.en.html) license. Underlying datasets designed as part of this research have their own licenses that are specified in their respective repositories.
