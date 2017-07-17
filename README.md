# Mapping Environmental Action

## A Welcome For the Uninitiated ##

If you're new to github and reproducible research, welcome! It's nice to have you here. Github is ordinarily a place where software developers working on open source software projects deposit their code as they write software collaboratively. However, in recent years a number of scholarly researchers, especially people working on research which involves a digital component (including me!) have begun to deposit their papers in these same software repositories. The idea here is that you can download all of the source-code and data used in this paper alongside the actual text, run it yourself and ["reproduce" the results](http://kbroman.org/steps2rr/). This can serve as a useful safeguard, a layer of research transparency, and a cool teaching tool for other persons interested in doing similar work.

Eschewing proprietary, expensive and unreliable software like Microsoft Word, I write in a combination of two languages: (1) [Markdown](https://en.wikipedia.org/wiki/Markdown) which is intended to be as close as possible to plain text while still allowing for things like boldfaced type, headings and footnotes; and (2) a programming language called [R](https://en.wikipedia.org/wiki/R_(programming_language)) to do all the data analysis. R is an object oriented language which was specifically designed for statistical analysis. It's also great fun to tinker with. As you look through this paper, you'll see that R code is integrated into the text of the document. This is indicated by a series of three backticks (```).

To read a bit more on these things and start on your own path towards plain text reproducible research, I highly recommend:
- Karl Broman's guide, "[Initial Steps Toward Reproducible Research](http://kbroman.org/steps2rr/)"
- Kieran Healy's guide, "[The Plain Person’s Guide to Plain Text Social Science](http://kieranhealy.org/files/papers/plain-person-text.pdf)"

The other advantage of putting this paper here is that readers and reviewers can suggest changes and point out errors in the document. To do this, I recommend that you create a github issue by clicking on the green "New issue" button [here](https://github.com/kidwellj/mapping_environmental_action/issues). If you must, you can also send me emails. More stuff about me [can be found here](http://jeremykidwell.info). Thanks for reading!

Now for...

## The quick technical version ##

This repository contains the code and writing towards a (working draft of a) scholarly paper which presents my analysis of the geospatial footprint of eco-groups in the UK. This is based on research I have been conducting since 2013 and which is ongoing. The paper is written in R Markdown and for the most part, I'm using the conventions outlined by Kieran Healy [here](https://kieranhealy.org/blog/archives/2014/01/23/plain-text/) and is best viewed (I think) in [R Studio](https://www.rstudio.com) though it will be reasonably comprehensible to anyone using a Markdown editor. If I'm not working in RStudio, I'm probably in Sublime text, FYI. Co-authors and collaborators take note, generally, I use [Hadley Wickham's venerable R Style Guide](http://adv-r.had.co.nz/Style.html). 

 I'd be extremely happy if someone found errors, or imagined a more efficient means of analysis and either reported them as an issue on this github repository or sent me an email.

The actual article is in `mapping_draft.Rmd`. 

Paths in this folder are used mostly for R processing. Towards this end folders have the following significance:

- `data` contains datasets used for analysis.
- `derived_data` contains files which represent modified forms of files in the above path.
- `figures` contains images and visualisations (graphic files) which are generated by R for the final form of the document.
- `cache` isn't included in github but is usually used for working files

Note: none of the contents of the above are included in the github repository unless they are unavailable from an external repository.