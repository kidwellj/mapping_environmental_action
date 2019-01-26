---
title:  "Mapping Environmental Action in Scotland"
abstract:    
# thanks: "Replication files are available on the author's Github account (https://github.com/kidwellj/mapping_environmental_action). **Current version**: January 26, 2019
style:  jeremy1
author: “[Jeremy H. Kidwell](http://jeremykidwell.info)”
affiliation: University of Birmingham
institute: University of Birmingham
e-mail: “[j.kidwell@bham.ac.uk](mailto:j.kidwell@bham.ac.uk)”
date: “2019-01-26”
bibliography: /Users/jeremy/Dropbox/bibtex/everything.bib
linkcolor: black
geometry: margin=1in
# fontfamily: mathpazo
fontsize: 11pt
output:
  html_document:
    keep_md: true
    toc: true
    toc_depth: 2
    number_sections: true
    fig_caption: true
  pdf_document:
    keep_tex: true
    number_sections: true
    fig_caption: true
    citation_package: natbib
    latex_engine: xelatex
---





# Introduction[^15541312]

Until recently, environmentalism has been treated by governments and environmental charities as a largely secular concern. In spite of the well-developed tradition of "eco-theology" which began in earnest in the UK in the mid-twentieth century (and which has many precursors in previous centuries), third-sector groups and governments, particularly in Britain and Europe, have largely ignored religious groups as they have gone about their business crafting agendas for behaviour change, developing funding programmes, and developing platforms to mitigate ecological harm, motivate consumers and create regulation regimes. That this has changed is evidenced by the fact that several prominent non-religious environmental groups have commissioned studies and crafted outreach programmes to persons with a particular faith tradition or to "spiritual communities" including RSPB (2013) and the Sierra Club USA (2008).[^158261118] Further, since 2008, the Scottish Government has provided a significant portion of funding for the ecumenical charity, Eco-Congregation Scotland, which works to promote literacy on environmental issues in religious communities in Scotland and helps to certify congregations under their award programme. What is not well known, however, even by these religious environmental groups themselves, is whether or how their membership might be different from other environmental groups. This study represents an attempt to illuminate this new interest with some more concrete data about religious groups in Scotland and how they may differ from non-religious counterparts.

# Eco-Congregation Scotland: The Basics



There are 344 eco-congregations in Scotland. By some measurements, particularly in terms of individual sites and possibly also with regards to volunteers, this makes Eco-Congregation Scotland one of the largest environmental third-sector groups in Scotland.[^159141043] 

In seeking to conduct GIS and statistical analysis of ECS, it is important to note that there some ways in which these sites are statistically opaque. Our research conducted through interviews at a sampling of sites and analysis of a variety of documents suggests that there is a high level of diversity both in terms of the number of those participating in environmental action and the types of action underway at specific sites. Work at a particular site can also ebb and flow over the course of time. Of course, as research into other forms of activism and secular environmental NGOs has shown, this is no different from any other third sector volunteer group. Variability is a regular feature of groups involved in activism and/or environmental concern. 

For the sake of this analysis, we took each Eco-Congregation Scotland site to represent a point of analysis as if each specific site represented a community group which had "opted-in" on environmental concern. On this basis, in this section, in the tradition of human geography, we "map" environmental action  among religious communities in Scotland a variety of ways. This is the first major geographical analysis of this kind conducted to date in Europe. We measure the frequency and location of ECS sites against a variety of standard geo-referenced statistical data sets, seeking to provide a statistical and geographically based assessment of the participation of religious groups in relation to the following:

- Location within Scotland
- Religious affiliation
- Relation to the Scottish Index of Multiple Deprivation (SIMD)
- Relation to the 8-Fold Scottish Government Urban-Rural Scale 
- Proximity to "wilderness" (based on several different designations)

For the sake of comparison, we also measured the geographical footprint of two other forms of community group in Scotland, (1) Transition Towns (taking into account their recent merge with Scotland Communities Climate Action Network) and (2) member groups of the Development Trust Association Scotland ("DTAS"). These two groups provide a helpful basis for comparison as they are not centralised and thus have a significant geographical dispersion across Scotland. They also provide a useful comparison as transition is a (mostly) non-religious environmental movement, and community development trusts are not explicitly linked to environmental conservation (though this is often part of their remit), so we have a non-religious point of comparison in Transition and a non-environmental point of comparison with DTAS

# Technical Background

Analysis was conducted using QGIS 2.8 and R 3.5.1, and data-sets were generated in CSV format.[^15541313] To begin with, I assembled a data set consisting of x and y coordinates for each congregation in Scotland and collated this against a variety of other specific data. Coordinates were checked by matching UK postcodes of individual congregations against geo-referencing data in the Office for National Statistics May 2014 postcode database. In certain instances a single "congregation" is actually a series of sites which have joined together under one administrative unit. In these cases, each site was treated as a separate data point if worship was held at that site at least once a month, but all joined sites shared a single unique identifier. As noted above, two other datasets were generated for the sake of comparative analysis.[^177171536] These included one similar Environmental Non-Governmental Organisation (ENGO) in Scotland (1) Transition Scotland (which includes Scotland Communities Climate Action Network);[^15541342] and another community-based NGO, Scottish Community Development Trusts.[^158261232] As this report will detail, these three overlap in certain instances both literally and in terms of their aims, but each also has a separate identity and footprint in Scotland. Finally, in order to normalise data, we utilised the PointX POI dataset which maintains a complete database of Places of Worship in Scotland.[^15541614]

# Background and History of Eco-Congregation Scotland

Eco-Congregation Scotland began a year before the official launch of Eco-Congregation England and Wales, in 1999, as part of an effort by Kippen Environment Centre (later renamed to Forth Environment Link, or "FEL") a charity devoted to environmental education in central Scotland[^158261210] to broaden the scope of its environmental outreach to churches in central Scotland.[^15826124] Initial funding was provided, through Kippen Environment Centre by way of a "sustainable action grant" (with funds drawn from a government landfill tax) through a government programme called Keep Scotland Beautiful (the Scottish cousin of Keep Britain Tidy). After this initial pilot project concluded, the Church of Scotland provided additional funding for the project in the form of staff time and office space. Additional funding a few years later from the Scottish Government helped subsidise the position of a business manager, and in 2011 the United Reformed Church contributed additional funding which subsidised the position of a full-time environmental chaplain for a 5-year term, bringing the total staff to five.



The programme launched officially in 2001 at Dunblane Cathedral in Stirling and by 2005 the project had 89 congregations registered to be a part of the programme and 25 which had completed the curriculum successfully and received an Eco-Congregation award. By 2011, the number of registrations had tripled to 269 and the number of awarded congregations had quadrupled to `sum(ecs$award1 < "01/01/2012", na.rm=TRUE)`. This process of taking registrations and using a tiered award or recognition scheme is common to many voluntary organisations. The ECS curriculum was developed in part by consulting the Eco-Congregation England and Wales materials which had been released just a year earlier in 1999, though it has been subsequently revised, particularly with a major redesign in 2010. In the USA, a number of similar groups take a similar approach including Earth Ministry (earthministry.org) and Green Faith (greenfaith.org). 

In the case of Eco-Congregation Scotland, congregations are invited to begin by "registering" their interest in the programme by completing a basic one-sided form. The next step requires the completion of an award application, which includes a facilitated curriculum called a "church check-up" and after an application is submitted, the site is visited and assessed by third-party volunteer assessors. Sites are invited to complete additional applications for further awards which are incremental (as is the application process). Transition communities, at least in the period reflected on their map, go through a similar process (though this does not involve the use of a supplied curriculum) by which they are marked first as "interested," become "active" and then gain "official" status.[^1554162]

# Representation by Regional Authorities (Council Areas)

```
## OGR data source with driver: ESRI Shapefile 
## Source: "/Users/jeremy/gits/mapping_environmental_action/data", layer: "scotland_ca_2010"
## with 32 features
## It has 4 fields
```

```
## Reading layer `scotland_ca_2010' from data source `/Users/jeremy/gits/mapping_environmental_action/data/scotland_ca_2010.shp' using driver `ESRI Shapefile'
## Simple feature collection with 32 features and 4 fields
## geometry type:  MULTIPOLYGON
## dimension:      XY
## bbox:           xmin: 5513 ymin: 530249 xmax: 470332 ymax: 1220302
## epsg (SRID):    NA
## proj4string:    +proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +datum=OSGB36 +units=m +no_defs
```

```
## OGR data source with driver: ESRI Shapefile 
## Source: "/Users/jeremy/gits/mapping_environmental_action/data", layer: "scotland_parlcon_2011"
## with 73 features
## It has 3 fields
```

Perhaps the first important question to ask of these groups is, where are they? I calculated the spread of eco-congregations and transition groups across each of the 32 council areas in Scotland. Every council area in Scotland has at least one eco-congregation or transition group). The most are located in , with 48, whereas the mean among all the 32 council areas is 10.75, with a median of 8, standard deviation of 9.4698162, and interquartile range of 11.5. The following choropleth maps show the relative concentration of eco-congregations (indicated by yellow to red). 

(*TODO: need to implement*) Though there are too few eco-congregations and transition groups for a numerically significant representation in any of the intermediate geographies, mapping the concentration of sites by agricultural parishes allows for a more granular visual and I include this for comparison sake. Note, for the sake of a more accurate visual communication, we have also marked out areas of Scotland that are uninhabited with hash marks on the map of agricultural parishes. (*TODO: this will be done in the final draft, once I get my image masking fixed!*).[^15571030]



![][Figure2]

Given the way population and places of worship are unevenly distributed across Scotland it is important to represent data in terms of relative distribution. For this study, we attempted to "normalise" our data in two different ways, (1) as shown by Figure 2 above, by taking population figures from the 2011 census (see data sheet in Appendix A) and (2) by adjusting relative to the number of places of worship in each council region.[^15914204] The latter of these two can yield particularly unexpected results. Thus, of the 4048 "places of worship" in Scotland, the highest concentration is actually the  region, with 435, second is 329 (). Rank of Council Areas by population and number of places of worship is also included in Appendix A.



We can use this data to normalise our figures regarding Eco-Congregation Scotland communities and this draws the presence in Edinburgh of ECS communities into even sharper relief, as Edinburgh, though ranked second in terms of population and fifth in terms of places of worship, ranks first for the presence of all ECS congregations and awarded ECS congregations. However, taking population as the basis for normalisation first, we find that Edinburgh is far from the most prominent outlier. In trying to communicate this difference for a lay-audience, we have chosen to list this difference as a multiplier (i.e. there are 2.x times as many congregations as their share of population and an average figure of congregations might allow for) as this conveys the difference in a straight-forward way. Outliers where the disparity between their relative share of the total ECS footprint and their relative share of population is different by a positive ratio of more than double include the Orkney Islands (3.7 times more eco-congregations than their expected average share based on population), Argyll and Bute (`admin_lev1[CODE=S12000023]$ecs_pop_factor` 4.2x), Stirling (2.76x), and Perthshire and Kinross (2.18x). Interestingly, there are no outliers whose relative share of the total footprint of ECS is double or more in the negative direction (see Appendix A chart for full numbers). 

Turning to the total of 4048 "places of worship" in Scotland, we find a slightly different picture of the relative concentration of Eco-Congregations in Scotland. In this case, the outliers are 

Whereas our initial measurements indicated a prominent lead for Edinburgh, by normalising our data in this way we can highlight the stronger-than-expected presence of several others that might otherwise escape notice because they lie in a region with significantly lower population or numerically less places of worship. Taking the PointX data on "places of worship" in Scotland, we find a less dramatic picture, but also a slightly different one. The positive outliers include East Renfrewshire (3.4x) Edinburgh (2.9x), Stirling (2.2), West Lothian (1.9x) and Aberdeen (1.5x). Again, negative outliers are far less dramatic, with only Midlothian possessing a ratio of more than 100% negative difference from the number of "places of worship" at 1.5x *fewer*.



We can compare the representation in these various regions against our comparison groups to see how other community-based organisations cluster in Scottish administrative districts. Here there are some significant contrasts. Scottish Community Development trusts are most intensely concentrated in the Highlands and Argyll & Bute. But, this is consistent with all the other categories, Eco-Congregations, Places of Worship, and dtass are all over-represented in this area, varying only by the degree. Edinburgh is different, here we find that Eco-Congregations and Transition projects are over-represented, while dtass are under-represented. Finally, the highlands are another strong contrast, here we find a very strong over-representation by transition towns and dtass while the representation of Eco-Congregations is relatively close to the population share for that area. The two areas of greatest contrast for Eco-Congregations from the other groups are unsurprising, Edinburgh is the location of the ECS offices, while Stirling is the area in which ECS first began (see Appendix B for full data). 

![][Figure3b]

[Figure 3c, map normalised by population; choropeth map with 6 gradients. with white represented by =/- 0.5; side-by-side with agricultural parishes map; uninhabited areas greyed out]

[Figure 4, normalised by PointX data; also including agricultural parishes etc. as above]

# plot as chlorogram: https://www.r-graph-gallery.com/331-basic-cartogram/
# Appendix A





# Citations
[^15541312]:This research was jointly funded by the AHRC/ESRC under project numnbers AH/K005456/1 and AH/P005063/1.
[^158261118]: This is not to say that there have been no collaborations before 2000, noteworthy in this respect is the WWF who helped to found the Alliance of Religion and Conservation (ARC) in 1985.
[^159141043]: This suggestion should be qualified - RSPB would greatly exceed ECS both in terms of the number of individual subscribers and budget. The RSPB trustee's report for 2013-2014 suggests that their member base was 1,114,938 people across Britain with a net income of £127m - the latter of which exceeds the Church of Scotland. If we adjust this based on the Scottish share of the population of the United Kingdom as of the 2011 census (8.3%) this leaves us with an income of £9.93m. The British charity commission requires charities to self-report the number of volunteers and staff, and from their most recent statistics we learn that RSPB engaged with 17,600 volunteers and employed 2,110 members of staff. Again, adjusted for population, this leaves 1,460 volunteers in Scotland and 176 staff. However, if we measure environmental groups based on the number of sites they maintain, RSPB has only 40 reserves with varying levels of local community engagement. For comparison, as of Sep 14 2015, Friends of the Earth Scotland had only 10 local groups (concentrated mostly in large urban areas). Depending on how one measures "volunteerism," it may be possible that ECS has more engaged volunteers in Scotland as well - if each ECS group had only 4 "volunteers" then this would exceed RSPB.
[^15541313]: Kidwell, Jeremy. (2016). Eco-Congregation Scotland, 2014-2016 [dataset]. University of Edinburgh. http://dx.doi.org/10.7488/ds/1357.
[^15541342]:My dataset on transition towns will be made available later in 2016. Initial data was aquired from the Transition Scotland website http://www.transitionscotland.org/transition-in-scotland on December 10, 2014. We are currently in the process of collaboratively generating a more up-to-date dataset which will reflect their collaboration with SCCAN.
[^177171536]: For further detail on Dataset generation, see Kidwell, Forthcoming, 2018.
[^158261232]:Data was acquired from the Development Trusts Association website, http://www.dtascot.org.uk, accessed on 20 July 2015. As above, we are currently in the process of active collaboration with volunteers from the DTAS to co-generate a new dataset.
[^15541614]:PointX data for "Landscape Data" items is sourced from Ordnance Survey Land-Line and MasterMap(R) and the data points are augmented with additional information provided through research by PointX staff, and data aquired from unidentified "local data companie(s)" and the "118 Information" database (see: http://www.118information.co.uk). This data is under license and cannot be made available for use. It is important to note that I became aware of inaccuracies in this dataset over the course of use and subsequently generated my own dataset in collaboration with churches in Scotland. This will be made available later in 2016. I am in active conversation with OS about improving the quality of the data in PointX regarding places of worship.
[^15826124]:Interview with Margaret Warnock, 29 Aug 2014.
[^158261210]:From http://www.forthenvironmentlink.org, accessed 12 July 2015.
[^1554162]:From the Transition map key, "Green pins are 'official' groups
Blue pins are active communities who are connected to the Scottish Transition network Yellow pins show interest in this area"
[^15571030]:This was calculated by calculating a 10m wide footprint for every postcode in Scotland, areas which are not within 10m of a postcode (as of May 2014) are counted as uninhabited.
[^159142242]: Fiona Tweedia, *Ecumenical Audit: Questionnaire Findings* (2014). 
[^15914204]:See note above regarding the data used from the PointX POI database. Note, for our research,we filtered out religious groups not represented within the Eco-Congregation footprint. We discuss representation by tradition and religion further below.
