This script is a work in progress! In a spirit of open-ended collaboration and a continuous development cycle, I've collected aspirations towards improvement here in this file. There is a list of urgent tasks which need to be completed before the research is complete, and a batch of subsequent work which, while not necessary, can improve and extend the work here.

# Pre-pub changes todo:

Optimising for command-line use of knitr:
- [ ] fix issues preventing simultaneous output towards PDF/md, see [here](https://stackoverflow.com/questions/23621012/display-and-save-the-plot-simultaneously-in-r-rstudio) Related to problems with colliding knitr preferences for each document type

Complete transition away from sp() to sf()
- [ ] remove use of sp(), rgdal(), GISTools(), rgeos() and commands: readOGR, spTransform, poly.counts, prop.table
- [ ] remove use of ggplot2 (in favour of tmap)

Code changes:
- [ ] Shift intensive geospatial analysis using sf() within R to operations within PostGIS per https://www.r-bloggers.com/interact-with-postgis-from-r/ and https://rviews.rstudio.com/2019/03/21/how-to-avoid-publishing-credentials-in-your-code/
- [ ] Shift to "projects" as per (https://www.tidyverse.org/blog/2017/12/workflow-vs-script/)
- [ ] Set up conventions (per https://annakrystalli.me/talks/r-in-repro-research-dc.html#58) and 
- [ ] Shift appendices to compendium

Streamline code:
- [ ] Merge htpc and wilderness versions back into main draft streamline drafts
    note: htpc version created 25 Mar 2019, commit 9a8934935a57c4e9790b7c420eef7454d3fb7326; wilderness mods include pub data line 373 and lines 480ff
- [ ] remove "cuts" versions


Process oriented tasks:
- [ ] Install and use [ReDoc](https://github.com/noamross/redoc/blob/master/README.md) for reversible conversion to docx
- [ ] Consider implementing [knitcitations](https://github.com/cboettig/knitcitations)
- [ ] Install and use [here](https://here.r-lib.org/)
- [ ] Install and use [renv](https://rstudio.github.io/renv/)


Underlying data work:
- [ ] Convert shapefiles and csv to geopackages or geojson