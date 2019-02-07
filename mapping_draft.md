---
title:  "Mapping Environmental Action in Scotland"
abstract:    
# thanks: "Replication files are available on the author's Github account (https://github.com/kidwellj/mapping_environmental_action). **Current version**: February 07, 2019
style:  jeremy1
author: "[Jeremy H. Kidwell](http://jeremykidwell.info)"
affiliation: University of Birmingham
institute: University of Birmingham
e-mail: "[j.kidwell@bham.ac.uk](mailto:j.kidwell@bham.ac.uk)"
date: "2019-02-07"
bibliography: biblio.bib
linkcolor: black
geometry: margin=1in
# fontfamily: mathpazo
fontsize: 11pt
output:
  html_document:
    theme: readable
    keep_md: true
    code_folding: hide
    self_contained: false
    toc: true
    toc_depth: 2
    number_sections: true
    fig_caption: true
    fig_retina: 1
  pdf_document:
    toc: false
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

Analysis was conducted using QGIS 2.8 and R 3.5.1, and data-sets were generated in CSV format.[^15541313] To begin with, I assembled a data set consisting of x and y coordinates for each congregation in Scotland and collated this against a variety of other specific data. Coordinates were checked by matching UK postcodes of individual congregations against geo-referencing data in the Office for National Statistics postcode database. In certain instances a single "congregation" is actually a series of sites which have joined together under one administrative unit. In these cases, each site was treated as a separate data point if worship was held at that site at least once a month, but all joined sites shared a single unique identifier. As noted above, two other datasets were generated for the sake of comparative analysis.[^177171536] These included one similar Environmental Non-Governmental Organisation (ENGO) in Scotland (1) Transition Scotland (which includes Scotland Communities Climate Action Network);[^15541342] and another community-based NGO, Scottish Community Development Trusts.[^158261232] As this report will detail, these three overlap in certain instances both literally and in terms of their aims, but each also has a separate identity and footprint in Scotland. Finally, in order to normalise data, we utilised the PointX POI dataset which maintains a complete database of Places of Worship in Scotland.[^15541614]

# Background and History of Eco-Congregation Scotland

Eco-Congregation Scotland began a year before the official launch of Eco-Congregation England and Wales, in 1999, as part of an effort by Kippen Environment Centre (later renamed to Forth Environment Link, or "FEL") a charity devoted to environmental education in central Scotland[^158261210] to broaden the scope of its environmental outreach to churches in central Scotland.[^15826124] Initial funding was provided, through Kippen Environment Centre by way of a "sustainable action grant" (with funds drawn from a government landfill tax) through a government programme called Keep Scotland Beautiful (the Scottish cousin of Keep Britain Tidy). After this initial pilot project concluded, the Church of Scotland provided additional funding for the project in the form of staff time and office space. Additional funding a few years later from the Scottish Government helped subsidise the position of a business manager, and in 2011 the United Reformed Church contributed additional funding which subsidised the position of a full-time environmental chaplain for a 5-year term, bringing the total staff to five.



The programme launched officially in 2001 at Dunblane Cathedral in Stirling and by 2005 the project had 89 congregations registered to be a part of the programme and 25 which had completed the curriculum successfully and received an Eco-Congregation award. By 2011, the number of registrations had tripled to 269 and the number of awarded congregations had quadrupled to `sum(ecs$award1 < "01/01/2012", na.rm=TRUE)`. This process of taking registrations and using a tiered award or recognition scheme is common to many voluntary organisations. The ECS curriculum was developed in part by consulting the Eco-Congregation England and Wales materials which had been released just a year earlier in 1999, though it has been subsequently revised, particularly with a major redesign in 2010. In the USA, a number of similar groups take a similar approach including Earth Ministry (earthministry.org) and Green Faith (greenfaith.org). 

In the case of Eco-Congregation Scotland, congregations are invited to begin by "registering" their interest in the programme by completing a basic one-sided form. The next step requires the completion of an award application, which includes a facilitated curriculum called a "church check-up" and after an application is submitted, the site is visited and assessed by third-party volunteer assessors. Sites are invited to complete additional applications for further awards which are incremental (as is the application process). Transition communities, at least in the period reflected on their map, go through a similar process (though this does not involve the use of a supplied curriculum) by which they are marked first as "interested," become "active" and then gain "official" status.[^1554162]

# Representation by Regional Authorities (Council Areas) {.tabset}







Perhaps the first important question to ask of these groups is, where are they? I calculated the spread of eco-congregations and transition groups across each of the 32 council areas in Scotland. Every council area in Scotland has at least one eco-congregation or transition group). The most are located in , with 48, whereas the mean among all the 32 council areas is 10.75, with a median of 8, standard deviation of 9.4698162, and interquartile range of 11.5. The following choropleth maps show the relative concentration of eco-congregations (indicated by yellow to red). 

(*TODO: need to implement*) Though there are too few eco-congregations and transition groups for a numerically significant representation in any of the intermediate geographies, mapping the concentration of sites by agricultural parishes allows for a more granular visual and I include this for comparison sake. Note, for the sake of a more accurate visual communication, we have also marked out areas of Scotland that are uninhabited with hash marks on the map of agricultural parishes. (*TODO: this will be done in the final draft, once I get my image masking fixed!*).[^15571030]

## Eco-Congregation Scotland groups shown by concentration in administrative regions (NUTS3)

![Figure 1](figures/plot_admin_ecs_choropleth-1.png)

## Eco-Congregation Scotland groups shown by concentration in administrative regions (LAU)

![Figure 3](figures/plot_admin_ecs_admin2_choropleth-1.png)



![Figure 2](figures/plot_admin_ecs_normed_choropleth-1.png)![Figure 2](figures/plot_admin_ecs_normed_choropleth-2.png)

Given the way population and places of worship are unevenly distributed across Scotland it is important to represent data in terms of relative distribution. For this study, we attempted to "normalise" our data in two different ways, (1) as shown by Figure 2 above, by taking population figures from the 2011 census (see data sheet in Appendix A) and (2) by adjusting relative to the number of places of worship in each council region.[^15914204] The latter of these two can yield particularly unexpected results. Thus, of the 4048 "places of worship" in Scotland, the highest concentration is actually the  region, with 435, second is 329 (). Rank of Council Areas by population and number of places of worship is also included in Appendix A.



We can use this data to normalise our figures regarding Eco-Congregation Scotland communities and this draws the presence in Edinburgh of ECS communities into even sharper relief, as Edinburgh, though ranked second in terms of population and fifth in terms of places of worship, ranks first for the presence of all ECS congregations and awarded ECS congregations. However, taking population as the basis for normalisation first, we find that Edinburgh is far from the most prominent outlier. In trying to communicate this difference for a lay-audience, we have chosen to list this difference as a multiplier (i.e. there are 2.x times as many congregations as their share of population and an average figure of congregations might allow for) as this conveys the difference in a straight-forward way. Outliers where the disparity between their relative share of the total ECS footprint and their relative share of population is different by a positive ratio of more than double include the Orkney Islands (3.7 times more eco-congregations than their expected average share based on population), Argyll and Bute (`admin_lev1[CODE=S12000023]$ecs_pop_factor` 4.2x), Stirling (2.76x), and Perthshire and Kinross (2.18x). Interestingly, there are no outliers whose relative share of the total footprint of ECS is double or more in the negative direction (see Appendix A chart for full numbers). 

Turning to the total of 4048 "places of worship" in Scotland, we find a slightly different picture of the relative concentration of Eco-Congregations in Scotland. In this case, the outliers are 

Whereas our initial measurements indicated a prominent lead for Edinburgh, by normalising our data in this way we can highlight the stronger-than-expected presence of several others that might otherwise escape notice because they lie in a region with significantly lower population or numerically less places of worship. Taking the PointX data on "places of worship" in Scotland, we find a less dramatic picture, but also a slightly different one. The positive outliers include East Renfrewshire (3.4x) Edinburgh (2.9x), Stirling (2.2), West Lothian (1.9x) and Aberdeen (1.5x). Again, negative outliers are far less dramatic, with only Midlothian possessing a ratio of more than 100% negative difference from the number of "places of worship" at 1.5x *fewer*.

![](figures/create_admin_barplot-1.png)<!-- -->

## Other environmental groups shown by concentration in administrative regions (NUTS)

![Figure 4](figures/create_choropleth_others-1.png)![Figure 4](figures/create_choropleth_others-2.png)![Figure 4](figures/create_choropleth_others-3.png)

## Cartogram Comparisons



We can compare the representation in these various regions against our comparison groups to see how other community-based organisations cluster in Scottish administrative districts. Here there are some significant contrasts. Scottish Community Development trusts are most intensely concentrated in the Highlands and Argyll & Bute. But, this is consistent with all the other categories, Eco-Congregations, Places of Worship, and dtas are all over-represented in this area, varying only by the degree. Edinburgh is different, here we find that Eco-Congregations and Transition projects are over-represented, while dtass are under-represented. Finally, the highlands are another strong contrast, here we find a very strong over-representation by transition towns and dtass while the representation of Eco-Congregations is relatively close to the population share for that area. The two areas of greatest contrast for Eco-Congregations from the other groups are unsurprising, Edinburgh is the location of the ECS offices, while Stirling is the area in which ECS first began (see Appendix B for full data). 

# Christian Denominations #

Eco-Congregation Scotland describes itself as an "ecumenical movement helping local groups of Christians link environmental issues to their faith, reduce their environmental impact and engage with their local community." There are several ties to the Church of Scotland, as the denomination provides office space to Eco-Congregation Scotland in the Church of Scotland complex at 121 George Street in Edinburgh and provides funding for one full-time member of staff. In spite of this, ECS has, from the start, attempted to emphasise its ecumenical aspirations and this is reflected in a wide variety of ways. The name "eco-congregation" is meant to be tradition neutral (in interviews, staff noted how they have sought to avoid names such as "eco-kirk" which would be the more obvious Presbyterian title, or "eco-community" or "eco-church" which might indicate allegiance towards another). Further, the group has a environmental chaplain on their staff whose position is funded by the United Reformed Church, and other members of staff are funded by the Scottish government, and as such, carry no formal affiliation with a religious institution. This diversity and ecumenicism is reflected in a membership which is, though dominated by the Church of Scotland, nevertheless, made up of a range of Christian traditions. 

Though these are not numerically significant, it is important to note that some member congregations describe themselves as ecumenical communities, and others are hybrids reflecting the merging of two traditions. As this ecumenical/hybrid designation involves a small number of the overall total, for the sake of this research, these have been combined into a category called "ecumenical." Further, as research conducted by Church of Scotland statistician Fiona Tweedie has shown, in many Scottish communities with only one church, members of this church will specify their denominational affiliation in a variety of ways (Roman Catholic, Quaker, Methodist, etc.) even though the church and its minister are formally affiliated with the Church of Scotland.[^159142242] So, we should be careful not to assume that the various denominational affiliations of eco-congregations are indicative in an absolute way.

A wide variety of historians and sociologists of religion have noted the regional significance of different Christian denominations in Scotland so we sought to assess the relative distribution and concentration of eco-congregations by denomination. Finding comparative statistics is a complex task, made more complicated by several factors. First, most demographic data on religious belonging in Scotland comes in the form of the 2011 census and as such is far more atomised than this data-set which identifies groups at the level of "congregations" rather than individuals. Equating these two is also complex, as participation by members of congregations can be measured in a variety of ways, there are often a small number of active participants in each eco-congregation group, but may also be a large scale, but passive, support by the wider community. 

So why provide this kind of data (i.e. at the level of individual churches) when more granular data (i.e. at the level of individuals persons) is available in the form of the census and related parallel publications such as the 2008 Scottish Environmental Attitudes survey? We believe that mapping places of worship provides a useful intermediate level of analysis and may complement our more atomised understanding of EA which has been assessed at the level of individual persons to date. Because representation within some administrative areas of Scotland, can lead to a small number of data points, we have kept analysis to a National level and have not provided more specific administrative-area level calculations.

<table>
<caption>ECS by denomination</caption>
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:right;"> x </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Baptist </td>
   <td style="text-align:right;"> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C of S </td>
   <td style="text-align:right;"> 254 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> C of S / URC </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cong </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ecu </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FCS </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Independent </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Meth </td>
   <td style="text-align:right;"> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Non. </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Quaker </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RC </td>
   <td style="text-align:right;"> 15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SEC </td>
   <td style="text-align:right;"> 41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Unitarian </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> URC </td>
   <td style="text-align:right;"> 11 </td>
  </tr>
</tbody>
</table>


As one might expect, there is a strong representation of the Church of Scotland, almost 74% of eco-congregations, with this number remaining the same when we only count awarded sites. We can confirm, on the basis of this analysis that ECS has a disproportional representation by Church of Scotland churches. At the 2002 church census count, it only represented 40.20% of Scottish churches (1666 of 4144 total churches). Similarly, on the 2011 Scottish census, only 32.44% of persons claimed to be members of the Church of Scotland. We can adjust this representation to 60%, if one excludes the 2,445,204 persons (46% of the total on the census) who reported either "no religion" or adherence to a religious tradition not currently represented among the eco-congregation sites. There is a slight over-representation by the United Reformed church, though this seems considerably more dramatic when one takes into account the fact that this is a trebling or more of their overall share of Scottish churches. The URC makes up only sightly more than 1% of church buildings in Scotland and a tiny 0.04% of respondents to the 2011 census. The Scottish Episcopal church hovers right around a proportional representation within ECS. More concerning are the significant underrepresentation by Roman Catholic churches, Baptists, the Free Church of Scotland, and other independent churches. 

While Roman Catholic churches make up just over 10% of the church buildings in Scotland, less than 5% of churches registered as eco-congregations are RC. Even more dramatic is the quartering of baptist churches, and the non-existent representation among the significant group of independent churches and small denominations. These make up nearly 25% of all Scottish churches (over a thousand) and yet only 4 have registered as eco-congregations. We provide several tentative advisories in response to these under-representations in the final section of this paper.

# Eco-Congregations, Urban, Rural and Remote


```
## OGR data source with driver: ESRI Shapefile 
## Source: "/Users/kidwellj/OneDrive - bham.ac.uk/writing/201708_mapping_environmental_action/data", layer: "SG_UrbanRural_2016"
## with 8 features
## It has 6 fields
```

Rather than bifurcate congregations into an urban/rural dichotomy, for this study we used the Scottish Government's six-point remoteness scale to categorise eco-congregations along a spectrum of highly populated to remote areas. This 8-fold scale (calculated biennially) offers a more nuanced measurement that combines measurements of remoteness and population along the following lines:

1. Large Urban Areas - Settlements of over 125,000 people.
2. Other Urban Areas - Settlements of 10,000 to 125,000 people. 
3. Accessible Small Towns - Settlements of between 3,000 and 10,000 people, and within a 30 minute drive time of a Settlement of 10,000 or more. 
4. Remote Small Towns - Settlements of between 3,000 and 10,000 people, and with a drive time between 30 and 60 minutes to a Settlement of 10,000 or more.
5. Very Remote Small Towns - Settlements of between 3,000 and 10,000 people, and with a drive time of over 60 minutes to a Settlement of 10,000 or more.
6. Accessible Rural Areas - Areas with a population of less than 3,000 people, and within a drive time of 30 minutes to a Settlement of 10,000 or more.
7. Remote Rural Areas - Areas with a population of less than 3,000 people, and with a drive time of between 30 and 60 minutes to a Settlement of 10,000 or more.
8. Very Remote Rural Areas - Areas with a population of less than 3,000 people, and with a drive time of over 60 minutes to a Settlement of 10,000 or more.

The key question which this analysis seeks to answer is whether ECS, or the other groups surveyed, are more concentrated in Urban or Rural areas, so as is the case below with our analysis of deprivation, we are concerned with the outer conditions, i.e. the urban areas (items 1-2) and remote areas (items 7-8).

Of all the groups surveyed in this study, Eco-Congregation Scotland is the most heavily concentrated in large urban areas (33.53%), exceeding by almost 50% the rate for all places of worship (22.96% in large urban areas). Transition is a much more modest 20% and development trusts a bit lower at 15%. It is interesting to note that the rate of ECS concentration in these large urban areas matches the level of overall population distribution (34.5%). On the other end of the scale, Eco-Congregation Scotland is the least concentrated in remote rural areas (with 3.93% on level 7 and 5.44% on level 8 on the urban-rural scale), though again, they correlate roughly to the general population distribution (3.2% and 2.9% respectively). Places of worship outpace both the population of Scotland and the footprint of Eco-Congregation Scotland, with 14.98% in very remote rural areas, but this is exceeded by transition at 16.47% and both by Scottish community development trusts at 32.14%. So while Eco-Congregation Scotland correlates roughly with Scottish population distribution across the urban-rural scale, it has a considerably more urban profile than either of the other two groups surveyed.

![](figures/create_ur_barplot-1.png)<!-- -->

![Figure 9](figures/create_urbanrural_ecs_chart_choropleth-1.png)


# Wealth, Employment, and Literacy


```
## OGR data source with driver: ESRI Shapefile 
## Source: "/Users/kidwellj/OneDrive - bham.ac.uk/writing/201708_mapping_environmental_action/data", layer: "sc_dz_11"
## with 6976 features
## It has 9 fields
```

## SIMD representation across domains by group {.tabset}

### Jitterplot



### Barplot

![](figures/create_simd_barplot-1.png)<!-- -->

### Boxplot




## Discussing SIMD

Another crucial point of assessment relates to the relation of Eco-Congregation communities to the Scottish Index of Multiple Deprivation. This instrument aggregates a large variety of factors which can lead to deprivation including crime rates, employment levels, access to services (implicating remoteness), and literacy. By assessing ECS, Transition, and dtas against the deprivation scale, we can assess whether eco-congregations fall within particular demographics and also whether the fully aggregated SIMD measurement provides a useful point of comparison for our purposes. The SIMD essentially divides Scotland into 6407 geographic zones and then ranks them based on their relative deprivation. This data set can be split into any number of groups, but for our purposes we have settled on Quintiles, splitting the SIMD data set at every 1302 entries. We then measured where each transition group, ECS, and dtas fell within these zones and calculated how they fell into these five quintiles, from more to least deprived.

The first, and most compelling finding is that, in general Eco-Congregation Scotland and Transition Scotland are both roughly the same and match the level of population distribution in the lowest quintile of the general SIMD measurement. 8% of transition groups and eco-congregation groups which have received awards and 9% of the population are located within this quintile. However, taken in relation to the distribution of places of worship in the lowest quintile, we find that eco-congregations are located at half the rate that places of worship are (15%) and dtass match this much more closely at 14%. Turning towards the top quintile, this pattern also holds, here both transition groups (21%) and eco-congregations (21% and 29% of awarded congregations) depart from the population distribution in this upper quintile (which is 10%). Again, general places of worship (at 11%) and DTASs (at 5%) take the opposite direction. We can say decisively that in communities which have been identified as good candidates for intervention to reduce deprivation, ECS and Transition are less likely, and they are over-represented at the areas which fall into the least deprived quintile.

We can find divergence between transition communities and eco-congregation when we split out SIMD domains. In the lowest quartile, measuring exclusively for the income domain, ECS is more represented (11%) - roughly the same as DTAS (12%), and transition is less (6%) represented. In general (as shown on the chart in Appendix D), these trends hold when representation of our groups are measured within other non-remoteness domains of the SIMD. Our basic conclusion is that transition towns are least likely to operate within the lowest quartile of SIMD and DTASs are most likely, with ECS somewhere in the middle. Given the general disparity against the presence of places of worship, it seems fair to suggest that this might be an area for improvement, perhaps even worth developing a special programme which might target areas in SIMD quartile 1 for eco-congregation outreach. This might be considered particularly in light of the starkest underrepresentation of ECS and transition within the SIMD domain of education, skills, and training.


```
## Reading layer `SSSI_SCOTLAND' from data source `/Users/kidwellj/OneDrive - bham.ac.uk/writing/201708_mapping_environmental_action/data/SSSI_SCOTLAND.shp' using driver `ESRI Shapefile'
## Simple feature collection with 15872 features and 7 fields
## geometry type:  POLYGON
## dimension:      XY
## bbox:           xmin: -296506.9 ymin: 530237.9 xmax: 467721.5 ymax: 1220310
## epsg (SRID):    NA
## proj4string:    +proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +datum=OSGB36 +units=m +no_defs
```

```
## OGR data source with driver: ESRI Shapefile 
## Source: "/Users/kidwellj/OneDrive - bham.ac.uk/writing/201708_mapping_environmental_action/data", layer: "SSSI_SCOTLAND"
## with 15872 features
## It has 7 fields
## Integer64 fields read as strings:  PA_CODE
```

```
## Reading layer `WILDLAND_SCOTLAND' from data source `/Users/kidwellj/OneDrive - bham.ac.uk/writing/201708_mapping_environmental_action/data/WILDLAND_SCOTLAND.shp' using driver `ESRI Shapefile'
## Simple feature collection with 42 features and 3 fields
## geometry type:  MULTIPOLYGON
## dimension:      XY
## bbox:           xmin: 76877.24 ymin: 578454.1 xmax: 435367.1 ymax: 1190510
## epsg (SRID):    NA
## proj4string:    +proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +datum=OSGB36 +units=m +no_defs
```

```
## OGR data source with driver: ESRI Shapefile 
## Source: "/Users/kidwellj/OneDrive - bham.ac.uk/writing/201708_mapping_environmental_action/data", layer: "WILDLAND_SCOTLAND"
## with 42 features
## It has 3 fields
```

```
## Reading layer `National_Forest_Inventory_Woodland_Scotland_2017' from data source `/Users/kidwellj/OneDrive - bham.ac.uk/writing/201708_mapping_environmental_action/data/National_Forest_Inventory_Woodland_Scotland_2017.shp' using driver `ESRI Shapefile'
## Simple feature collection with 199698 features and 7 fields
## geometry type:  POLYGON
## dimension:      XY
## bbox:           xmin: 65210.1 ymin: 532547.9 xmax: 461253.7 ymax: 1209179
## epsg (SRID):    NA
## proj4string:    +proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +datum=OSGB36 +units=m +no_defs
```

```
## OGR data source with driver: ESRI Shapefile 
## Source: "/Users/kidwellj/OneDrive - bham.ac.uk/writing/201708_mapping_environmental_action/data", layer: "National_Forest_Inventory_Woodland_Scotland_2017"
## with 199698 features
## It has 7 fields
## Integer64 fields read as strings:  OBJECTID
```

# Proximity to "Wilderness"

Chasing down a curiosity, I decided to try and calculate whether proximity to "wilderness" or "scenic nature" or just trees might have some impact on generating more mobilised communities. I realised that there would be several problems with this kind of calculation up front, first being that "nature" is a deeply problematic construct, reviled by geographers and philosophers alike. With this in mind, I identified several different ways of reckoning wilderness, starting with the highly anachronistic "Scenic Land" designation from the 1970s. Then I pursued the more carefully calculated "core wild areas" generated by SNH just a few years ago. However, even the core wile areas concept has been criticised heavily, so I also expanded out my search to include all sites of special scientific interest and then went even wider to include the Scottish Forestry Service's "Native Woodland" and finally, the most generic possible measurement, any land identified as forested at the last Forest Inventory.

Proximity to these areas was the next concern, because many of these designations deliberately exclude human habitat, so it was necessary to measure the number of sites within proximity. There is a question which lies here regarding aesthetics, namely, what sort of proximity might generate an affective connection? From my own experience, I decided upon the distance represented by a short walk, i.e. a half-kilometre. However, with the more generic measurements, such as SSSI and forestation, this wouldn't do, as there are so many of these sites that a buffer of 500 meters encapsulates almost all of inhabited Scotland. So for these sites I also calculated a count within 50 metres.

So what did I discover? The results were inconclusive. First, it is important to note that on the whole, Eco-Congregations tend to be more urban than place of worship taken generally at a rate of nearly 3:1 (5.4% of Eco-Congregations lie in areas currently designated as "Very Remote Rural Areas" whereas nearly 15% of places of worship lie in these areas), so what I was testing for was whether this gap was smaller when specifying these various forms of "wild" remoteness. For our narrowest measurements, there were so few sites captured as to render measurement unreliable. There are, for obvious reasons, `st_within(ecs_sf, wildland)` sites located within any of SNG's core wild areas. Similarly, there are very few of our activist communities located within SSSI's (only `st_within(pow_pointX_sf, sssi)` places of worship out of 4048, `st_within(transition_sf, sssi)` transition towns, (or 2%) and `st_within(dtas_sf, sssi)` community development trusts (3%)). However, expanding this out makes things a bit more interesting, within 50 metres of SSSI's in Scotland lie `st_within(ecs_sf, st_buffer(sssi, dist = 50))` Eco-Congregations (or just under 1%), which compares favourably with the `st_within(pow_pointX_sf, st_buffer(sssi, dist = 50))` places of worship (or just 1.5%) far exceeding our ratio (1:1.5 vs. 1:3). This is the same with our more anachronistic measure of "scenic areas," there are 7 eco-congregations within these areas, and 175 places of worship, making for a ratio of nearly 1:2 (2.1% vs. 4.3%). Taking our final measure, of forested areas, this is hard to calculate, as only `st_within(ecs_sf, forest_inventory)` Eco-Congregation lies within either native or generally forested land.

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<tbody>
  <tr>
   <td style="text-align:left;"> titles </td>
   <td style="text-align:left;"> Within SSSIs </td>
   <td style="text-align:left;"> ...50m </td>
   <td style="text-align:left;"> ...500m </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ecs_sssi_row </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> 59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pow_sssi_row </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> 62 </td>
   <td style="text-align:left;"> 610 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> dtas_sssi_row </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> 49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> transition_sssi_row </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> permaculture_sssi_row </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 3 </td>
  </tr>
</tbody>
</table>

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<caption>Group counts within Wildland Areas</caption>
<tbody>
  <tr>
   <td style="text-align:left;"> titles </td>
   <td style="text-align:left;"> Within Wildland Areas </td>
   <td style="text-align:left;"> ...50m </td>
   <td style="text-align:left;"> ...500m </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ecs_wildland_row </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pow_wildland_row </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> dtas_wildland_row </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> transition_wildland_row </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> permaculture_wildland_row </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
  </tr>
</tbody>
</table>

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<caption>Group counts within woodlands</caption>
<tbody>
  <tr>
   <td style="text-align:left;"> titles </td>
   <td style="text-align:left;"> Within woodlands </td>
   <td style="text-align:left;"> ...50m </td>
   <td style="text-align:left;"> ...500m </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ecs_forest_inventory_row </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 51 </td>
   <td style="text-align:left;"> 287 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pow_forest_inventory_row </td>
   <td style="text-align:left;"> 52 </td>
   <td style="text-align:left;"> 752 </td>
   <td style="text-align:left;"> 3304 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> dtas_forest_inventory_row </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> 38 </td>
   <td style="text-align:left;"> 172 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> transition_forest_inventory_row </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> 77 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> permaculture_wildland_row </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
  </tr>
</tbody>
</table>





# Appendix A

<div style="border: 1px solid #ddd; padding: 5px; overflow-y: scroll; height:800px; overflow-x: scroll; width:100%; "><table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:left;"> name </th>
   <th style="text-align:right;"> ecs_count </th>
   <th style="text-align:right;"> pow_count </th>
   <th style="text-align:right;"> dtas_count </th>
   <th style="text-align:right;"> permaculture_count </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> Fife </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 243 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> South Ayrshire </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 68 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> Inverclyde </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 21 </td>
   <td style="text-align:left;"> Aberdeen City </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> Highland </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 435 </td>
   <td style="text-align:right;"> 34 </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 26 </td>
   <td style="text-align:left;"> West Dunbartonshire </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 52 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> Moray </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 103 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> Orkney Islands </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 22 </td>
   <td style="text-align:left;"> Aberdeenshire </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 244 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> East Renfrewshire </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Clackmannanshire </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> East Ayrshire </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 68 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 30 </td>
   <td style="text-align:left;"> North Lanarkshire </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> Dundee City </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 94 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 23 </td>
   <td style="text-align:left;"> Argyll and Bute </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 172 </td>
   <td style="text-align:right;"> 24 </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> Angus </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 32 </td>
   <td style="text-align:left;"> Glasgow City </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 329 </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 31 </td>
   <td style="text-align:left;"> East Dunbartonshire </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 17 </td>
   <td style="text-align:left;"> Shetland Islands </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 89 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 16 </td>
   <td style="text-align:left;"> Scottish Borders </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 153 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> Comhairle nan Eilean Siar </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 114 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;"> Renfrewshire </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> North Ayrshire </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> East Lothian </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 71 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> Falkirk </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 83 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> West Lothian </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 15 </td>
   <td style="text-align:left;"> Perth and Kinross </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 162 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> Dumfries and Galloway </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 20 </td>
   <td style="text-align:left;"> Stirling </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:right;"> 73 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 24 </td>
   <td style="text-align:left;"> City of Edinburgh </td>
   <td style="text-align:right;"> 48 </td>
   <td style="text-align:right;"> 233 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> Midlothian </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> South Lanarkshire </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 176 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
</tbody>
</table></div>

# Appendix B

<div style="border: 1px solid #ddd; padding: 5px; overflow-y: scroll; height:800px; overflow-x: scroll; width:100%; "><table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> label </th>
   <th style="text-align:right;"> ecs_count </th>
   <th style="text-align:right;"> ecs_percent </th>
   <th style="text-align:right;"> pow_count </th>
   <th style="text-align:right;"> pow_percent </th>
   <th style="text-align:right;"> transition_count </th>
   <th style="text-align:right;"> transition_percent </th>
   <th style="text-align:right;"> dtas_count </th>
   <th style="text-align:right;"> dtas_percent </th>
   <th style="text-align:right;"> permaculture_count </th>
   <th style="text-align:right;"> permaculture_percent </th>
   <th style="text-align:right;"> ecs_pop_factor </th>
   <th style="text-align:right;"> ecs_pow_factor </th>
   <th style="text-align:right;"> ecs_transition_factor </th>
   <th style="text-align:right;"> ecs_dtas_factor </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> Fife </td>
   <td style="text-align:left;"> S12000015 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 0.0523256 </td>
   <td style="text-align:right;"> 243 </td>
   <td style="text-align:right;"> 0.0600296 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 0.1170213 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 0.0474138 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0714286 </td>
   <td style="text-align:right;"> -0.4825490 </td>
   <td style="text-align:right;"> -0.2566753 </td>
   <td style="text-align:right;"> -1.1057082 </td>
   <td style="text-align:right;"> 0.2071882 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> South Ayrshire </td>
   <td style="text-align:left;"> S12000028 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0087209 </td>
   <td style="text-align:right;"> 68 </td>
   <td style="text-align:right;"> 0.0167984 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0043103 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -1.1811835 </td>
   <td style="text-align:right;"> -0.9616963 </td>
   <td style="text-align:right;"> Inf </td>
   <td style="text-align:right;"> 2.0465116 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> Inverclyde </td>
   <td style="text-align:left;"> S12000018 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0058140 </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:right;"> 0.0130929 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0106383 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0043103 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -1.2443462 </td>
   <td style="text-align:right;"> -1.1118912 </td>
   <td style="text-align:right;"> -0.9069767 </td>
   <td style="text-align:right;"> 0.6976744 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 21 </td>
   <td style="text-align:left;"> Aberdeen City </td>
   <td style="text-align:left;"> S12000033 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 0.0436047 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 0.0237154 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0106383 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0043103 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0728138 </td>
   <td style="text-align:right;"> 1.6773256 </td>
   <td style="text-align:right;"> 6.1976744 </td>
   <td style="text-align:right;"> 18.2325581 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> Highland </td>
   <td style="text-align:left;"> S12000017 </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 0.0610465 </td>
   <td style="text-align:right;"> 435 </td>
   <td style="text-align:right;"> 0.1074605 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 0.0638298 </td>
   <td style="text-align:right;"> 34 </td>
   <td style="text-align:right;"> 0.1465517 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0714286 </td>
   <td style="text-align:right;"> 0.7851902 </td>
   <td style="text-align:right;"> -0.8638332 </td>
   <td style="text-align:right;"> -0.0872093 </td>
   <td style="text-align:right;"> -1.1668947 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 26 </td>
   <td style="text-align:left;"> West Dunbartonshire </td>
   <td style="text-align:left;"> S12000039 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 0.0174419 </td>
   <td style="text-align:right;"> 52 </td>
   <td style="text-align:right;"> 0.0128458 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0129310 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0361922 </td>
   <td style="text-align:right;"> 0.7155635 </td>
   <td style="text-align:right;"> Inf </td>
   <td style="text-align:right;"> 0.6976744 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> Moray </td>
   <td style="text-align:left;"> S12000020 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 0.0319767 </td>
   <td style="text-align:right;"> 103 </td>
   <td style="text-align:right;"> 0.0254447 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0212766 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 0.0258621 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.6299855 </td>
   <td style="text-align:right;"> 0.5134342 </td>
   <td style="text-align:right;"> 1.0058140 </td>
   <td style="text-align:right;"> 0.4728682 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> Orkney Islands </td>
   <td style="text-align:left;"> S12000023 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0.0116279 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 0.0123518 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0212766 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0.0431034 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3.7683689 </td>
   <td style="text-align:right;"> -0.1172093 </td>
   <td style="text-align:right;"> -0.9069767 </td>
   <td style="text-align:right;"> -1.4604651 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 22 </td>
   <td style="text-align:left;"> Aberdeenshire </td>
   <td style="text-align:left;"> S12000034 </td>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 0.0552326 </td>
   <td style="text-align:right;"> 244 </td>
   <td style="text-align:right;"> 0.0602767 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0319149 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 0.0646552 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0714286 </td>
   <td style="text-align:right;"> 0.3123310 </td>
   <td style="text-align:right;"> -0.1673656 </td>
   <td style="text-align:right;"> 1.4612403 </td>
   <td style="text-align:right;"> -0.2914729 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> East Renfrewshire </td>
   <td style="text-align:left;"> S12000011 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 0.0232558 </td>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:right;"> 0.0091403 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0106383 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0086207 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.7192993 </td>
   <td style="text-align:right;"> 3.0886235 </td>
   <td style="text-align:right;"> 2.3720930 </td>
   <td style="text-align:right;"> 3.3953488 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Clackmannanshire </td>
   <td style="text-align:left;"> S12000005 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0087209 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 0.0074111 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0043103 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -0.2045473 </td>
   <td style="text-align:right;"> 0.3534884 </td>
   <td style="text-align:right;"> Inf </td>
   <td style="text-align:right;"> 2.0465116 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> East Ayrshire </td>
   <td style="text-align:left;"> S12000008 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0.0116279 </td>
   <td style="text-align:right;"> 68 </td>
   <td style="text-align:right;"> 0.0167984 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0106383 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 0.0258621 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -0.9968892 </td>
   <td style="text-align:right;"> -0.6155951 </td>
   <td style="text-align:right;"> 0.1860465 </td>
   <td style="text-align:right;"> -1.1007752 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 30 </td>
   <td style="text-align:left;"> North Lanarkshire </td>
   <td style="text-align:left;"> S12000044 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 0.0145349 </td>
   <td style="text-align:right;"> 187 </td>
   <td style="text-align:right;"> 0.0461957 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0212766 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0043103 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -1.5441995 </td>
   <td style="text-align:right;"> -1.3707250 </td>
   <td style="text-align:right;"> -0.6337209 </td>
   <td style="text-align:right;"> 4.7441860 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> Dundee City </td>
   <td style="text-align:left;"> S12000042 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0087209 </td>
   <td style="text-align:right;"> 94 </td>
   <td style="text-align:right;"> 0.0232213 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0106383 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0043103 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -1.3728327 </td>
   <td style="text-align:right;"> -1.2488867 </td>
   <td style="text-align:right;"> -0.3604651 </td>
   <td style="text-align:right;"> 2.0465116 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 23 </td>
   <td style="text-align:left;"> Argyll and Bute </td>
   <td style="text-align:left;"> S12000035 </td>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 0.0523256 </td>
   <td style="text-align:right;"> 172 </td>
   <td style="text-align:right;"> 0.0424901 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0.0425532 </td>
   <td style="text-align:right;"> 24 </td>
   <td style="text-align:right;"> 0.1034483 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.2142857 </td>
   <td style="text-align:right;"> 4.2855305 </td>
   <td style="text-align:right;"> 0.4629529 </td>
   <td style="text-align:right;"> 0.4593023 </td>
   <td style="text-align:right;"> -0.9883721 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> Angus </td>
   <td style="text-align:left;"> S12000041 </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 0.0348837 </td>
   <td style="text-align:right;"> 106 </td>
   <td style="text-align:right;"> 0.0261858 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.1854897 </td>
   <td style="text-align:right;"> 0.6643265 </td>
   <td style="text-align:right;"> Inf </td>
   <td style="text-align:right;"> Inf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 32 </td>
   <td style="text-align:left;"> Glasgow City </td>
   <td style="text-align:left;"> S12000046 </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 0.0726744 </td>
   <td style="text-align:right;"> 329 </td>
   <td style="text-align:right;"> 0.0812747 </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:right;"> 0.1382979 </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 0.0905172 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.1428571 </td>
   <td style="text-align:right;"> -0.7025922 </td>
   <td style="text-align:right;"> -0.2116350 </td>
   <td style="text-align:right;"> -0.9490161 </td>
   <td style="text-align:right;"> -0.3942414 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 31 </td>
   <td style="text-align:left;"> East Dunbartonshire </td>
   <td style="text-align:left;"> S12000045 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.0203488 </td>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:right;"> 0.0106225 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0212766 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0043103 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0519737 </td>
   <td style="text-align:right;"> 1.8312601 </td>
   <td style="text-align:right;"> -0.0872093 </td>
   <td style="text-align:right;"> 7.4418605 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 17 </td>
   <td style="text-align:left;"> Shetland Islands </td>
   <td style="text-align:left;"> S12000027 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0087209 </td>
   <td style="text-align:right;"> 89 </td>
   <td style="text-align:right;"> 0.0219862 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0106383 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0.0172414 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.9867778 </td>
   <td style="text-align:right;"> -1.2066893 </td>
   <td style="text-align:right;"> -0.3604651 </td>
   <td style="text-align:right;"> -0.9883721 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 16 </td>
   <td style="text-align:left;"> Scottish Borders </td>
   <td style="text-align:left;"> S12000026 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 0.0319767 </td>
   <td style="text-align:right;"> 153 </td>
   <td style="text-align:right;"> 0.0377964 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0.0425532 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 0.0387931 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.1428571 </td>
   <td style="text-align:right;"> 0.9740888 </td>
   <td style="text-align:right;"> -0.3079495 </td>
   <td style="text-align:right;"> -0.4970930 </td>
   <td style="text-align:right;"> -0.3514212 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> Comhairle nan Eilean Siar </td>
   <td style="text-align:left;"> S12000013 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 114 </td>
   <td style="text-align:right;"> 0.0281621 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0106383 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 0.0387931 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -2.0000000 </td>
   <td style="text-align:right;"> -2.0000000 </td>
   <td style="text-align:right;"> -2.0000000 </td>
   <td style="text-align:right;"> -2.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;"> Renfrewshire </td>
   <td style="text-align:left;"> S12000038 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 0.0174419 </td>
   <td style="text-align:right;"> 84 </td>
   <td style="text-align:right;"> 0.0207510 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0212766 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 0.0215517 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -0.9438827 </td>
   <td style="text-align:right;"> -0.3189369 </td>
   <td style="text-align:right;"> -0.3604651 </td>
   <td style="text-align:right;"> -0.3813953 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> North Ayrshire </td>
   <td style="text-align:left;"> S12000021 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.0203488 </td>
   <td style="text-align:right;"> 96 </td>
   <td style="text-align:right;"> 0.0237154 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0129310 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -0.4399795 </td>
   <td style="text-align:right;"> -0.2839147 </td>
   <td style="text-align:right;"> Inf </td>
   <td style="text-align:right;"> 1.1472868 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> East Lothian </td>
   <td style="text-align:left;"> S12000010 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 0.0232558 </td>
   <td style="text-align:right;"> 71 </td>
   <td style="text-align:right;"> 0.0175395 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0319149 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0086207 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.4699681 </td>
   <td style="text-align:right;"> 0.6518179 </td>
   <td style="text-align:right;"> -0.5426357 </td>
   <td style="text-align:right;"> 3.3953488 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> Falkirk </td>
   <td style="text-align:left;"> S12000014 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 0.0232558 </td>
   <td style="text-align:right;"> 83 </td>
   <td style="text-align:right;"> 0.0205040 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -0.4210666 </td>
   <td style="text-align:right;"> 0.2684225 </td>
   <td style="text-align:right;"> Inf </td>
   <td style="text-align:right;"> Inf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> West Lothian </td>
   <td style="text-align:left;"> S12000040 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 0.0319767 </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 0.0172925 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0106383 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.0301724 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -0.0661069 </td>
   <td style="text-align:right;"> 1.6983389 </td>
   <td style="text-align:right;"> 4.0116279 </td>
   <td style="text-align:right;"> 0.1196013 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 15 </td>
   <td style="text-align:left;"> Perth and Kinross </td>
   <td style="text-align:left;"> S12000024 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 0.0581395 </td>
   <td style="text-align:right;"> 162 </td>
   <td style="text-align:right;"> 0.0400198 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 0.0531915 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0.0431034 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0714286 </td>
   <td style="text-align:right;"> 2.1986781 </td>
   <td style="text-align:right;"> 0.9055412 </td>
   <td style="text-align:right;"> 0.1860465 </td>
   <td style="text-align:right;"> 0.6976744 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> Dumfries and Galloway </td>
   <td style="text-align:left;"> S12000006 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.0203488 </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:right;"> 0.0466897 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0319149 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 0.0646552 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.1428571 </td>
   <td style="text-align:right;"> -0.5758334 </td>
   <td style="text-align:right;"> -1.1283376 </td>
   <td style="text-align:right;"> -0.7248062 </td>
   <td style="text-align:right;"> -1.3705426 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 20 </td>
   <td style="text-align:left;"> Stirling </td>
   <td style="text-align:left;"> S12000030 </td>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:right;"> 0.0377907 </td>
   <td style="text-align:right;"> 73 </td>
   <td style="text-align:right;"> 0.0180336 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0.0425532 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0.0431034 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 2.4348726 </td>
   <td style="text-align:right;"> 2.1911437 </td>
   <td style="text-align:right;"> -0.2238372 </td>
   <td style="text-align:right;"> -0.2465116 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 24 </td>
   <td style="text-align:left;"> City of Edinburgh </td>
   <td style="text-align:left;"> S12000036 </td>
   <td style="text-align:right;"> 48 </td>
   <td style="text-align:right;"> 0.1395349 </td>
   <td style="text-align:right;"> 233 </td>
   <td style="text-align:right;"> 0.0575593 </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 0.1595745 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.0301724 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 1.1005167 </td>
   <td style="text-align:right;"> 2.8483881 </td>
   <td style="text-align:right;"> -0.2511628 </td>
   <td style="text-align:right;"> 7.2491694 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> Midlothian </td>
   <td style="text-align:left;"> S12000019 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0029070 </td>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 0.0111166 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0212766 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0.0172414 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0714286 </td>
   <td style="text-align:right;"> -1.6299034 </td>
   <td style="text-align:right;"> -1.4770026 </td>
   <td style="text-align:right;"> -1.7267442 </td>
   <td style="text-align:right;"> -1.6627907 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> South Lanarkshire </td>
   <td style="text-align:left;"> S12000029 </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 0.0494186 </td>
   <td style="text-align:right;"> 176 </td>
   <td style="text-align:right;"> 0.0434783 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.0319149 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 0.0344828 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> -0.3322727 </td>
   <td style="text-align:right;"> 0.2732558 </td>
   <td style="text-align:right;"> 1.0968992 </td>
   <td style="text-align:right;"> 0.8662791 </td>
  </tr>
</tbody>
</table></div>

# Appendix C - Data by Urban / Rural Classification

<div style="border: 1px solid #ddd; padding: 5px; overflow-y: scroll; height:800px; overflow-x: scroll; width:100%; "><table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:right;"> UR8FOLD </th>
   <th style="text-align:right;"> ecs_count </th>
   <th style="text-align:right;"> ecs_percent </th>
   <th style="text-align:right;"> pow_count </th>
   <th style="text-align:right;"> pow_percent </th>
   <th style="text-align:right;"> transition_count </th>
   <th style="text-align:right;"> transition_percent </th>
   <th style="text-align:right;"> dtas_count </th>
   <th style="text-align:right;"> dtas_percent </th>
   <th style="text-align:right;"> permaculture_count </th>
   <th style="text-align:right;"> permaculture_percent </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 111 </td>
   <td style="text-align:right;"> 0.3226744 </td>
   <td style="text-align:right;"> 907 </td>
   <td style="text-align:right;"> 0.2240613 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 0.3723404 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 0.1521739 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.1428571 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 98 </td>
   <td style="text-align:right;"> 0.2848837 </td>
   <td style="text-align:right;"> 1015 </td>
   <td style="text-align:right;"> 0.2507411 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 0.1702128 </td>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 0.1086957 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0714286 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 0.0872093 </td>
   <td style="text-align:right;"> 265 </td>
   <td style="text-align:right;"> 0.0654644 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.0744681 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 0.0869565 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0714286 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 0.0261628 </td>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0.0247036 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0212766 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.0304348 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 0.0174419 </td>
   <td style="text-align:right;"> 87 </td>
   <td style="text-align:right;"> 0.0214921 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.0212766 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0043478 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0714286 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 54 </td>
   <td style="text-align:right;"> 0.1569767 </td>
   <td style="text-align:right;"> 696 </td>
   <td style="text-align:right;"> 0.1719368 </td>
   <td style="text-align:right;"> 14 </td>
   <td style="text-align:right;"> 0.1489362 </td>
   <td style="text-align:right;"> 46 </td>
   <td style="text-align:right;"> 0.2000000 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0.1428571 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 0.0465116 </td>
   <td style="text-align:right;"> 372 </td>
   <td style="text-align:right;"> 0.0918972 </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.0744681 </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:right;"> 0.1173913 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.2142857 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 0.0581395 </td>
   <td style="text-align:right;"> 606 </td>
   <td style="text-align:right;"> 0.1497036 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 0.1170213 </td>
   <td style="text-align:right;"> 69 </td>
   <td style="text-align:right;"> 0.3000000 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0.2857143 </td>
  </tr>
</tbody>
</table></div>

# Citations

[^15541312]: This research was jointly funded by the AHRC/ESRC under project numnbers AH/K005456/1 and AH/P005063/1.
[^158261118]: This is not to say that there have been no collaborations before 2000, noteworthy in this respect is the WWF who helped to found the Alliance of Religion and Conservation (ARC) in 1985.
[^159141043]: This suggestion should be qualified - RSPB would greatly exceed ECS both in terms of the number of individual subscribers and budget. The RSPB trustee's report for 2013-2014 suggests that their member base was 1,114,938 people across Britain with a net income of £127m - the latter of which exceeds the Church of Scotland. If we adjust this based on the Scottish share of the population of the United Kingdom as of the 2011 census (8.3%) this leaves us with an income of £9.93m. The British charity commission requires charities to self-report the number of volunteers and staff, and from their most recent statistics we learn that RSPB engaged with 17,600 volunteers and employed 2,110 members of staff. Again, adjusted for population, this leaves 1,460 volunteers in Scotland and 176 staff. However, if we measure environmental groups based on the number of sites they maintain, RSPB has only 40 reserves with varying levels of local community engagement. For comparison, as of Sep 14 2015, Friends of the Earth Scotland had only 10 local groups (concentrated mostly in large urban areas). Depending on how one measures "volunteerism," it may be possible that ECS has more engaged volunteers in Scotland as well - if each ECS group had only 4 "volunteers" then this would exceed RSPB.
[^15541313]: Kidwell, Jeremy. (2016). Eco-Congregation Scotland, 2014-2016. University of Edinburgh. http://dx.doi.org/10.7488/ds/1357.
[^15541342]:My dataset on transition towns will be made available later in 2016. Initial data was aquired from the Transition Scotland website http://www.transitionscotland.org/transition-in-scotland on December 10, 2014. We are currently in the process of collaboratively generating a more up-to-date dataset which will reflect their collaboration with SCCAN.
[^177171536]: For further detail on Dataset generation, see Kidwell, Forthcoming, 2018.
[^158261232]:Data was acquired from the Development Trusts Association website, http://www.dtascot.org.uk, accessed on 20 July 2015. As above, we are currently in the process of active collaboration with volunteers from the DTAS to co-generate a new dataset.
[^15541614]:PointX data for "Landscape Data" items is sourced from Ordnance Survey Land-Line and MasterMap(R) and the data points are augmented with additional information provided through research by PointX staff, and data aquired from unidentified "local data companie(s)" and the "118 Information" database (see: http://www.118information.co.uk). This data is under license and cannot be made available for use. It is important to note that I became aware of inaccuracies in this dataset over the course of use and subsequently generated my own dataset in collaboration with churches in Scotland. This will be made available later in 2016. I am in active conversation with OS about improving the quality of the data in PointX regarding places of worship.
[^15826124]:Interview with Margaret Warnock, 29 Aug 2014.
[^158261210]:From http://www.forthenvironmentlink.org, accessed 12 July 2015.
[^1554162]:From the Transition map key, "Green pins are 'official' groups
Blue pins are active communities who are connected to the Scottish Transition network Yellow pins show interest in this area"
[^15571030]:This was calculated by calculating a 10m wide footprint for every postcode in Scotland, areas which are not within 10m of a postcode (as of May 2014) are counted as uninhabited.
[^159142242]: Fiona Tweedie, *Ecumenical Audit: Questionnaire Findings* (2014). 
[^15914204]:See note above regarding the data used from the PointX POI database. Note, for our research,we filtered out religious groups not represented within the Eco-Congregation footprint. We discuss representation by tradition and religion further below.adition and religion further below.
