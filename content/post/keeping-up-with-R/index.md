---
title: R packages for Agricultural Research
authors:
- jpiaskowski
categories: 
- R
draft: false
date: "2022-05-13T00:00:00Z"
image:
  caption: "Map of Australia as R package hex stickers; image credit: [Michell O'Hara](https://www.mitchelloharawild.com/blog/user-2018-feature-wall/)"
  focal_point: ""
lastMod: "2022-05-13T00:00:00Z"
projects: 
subtitle: Finding the R packages that support your research
summary: 
tags: 
- R
- CRAN
---

 
Finding the R packages that support your work can be challenging. Keeping up with the ongoing changes that occur in the R package ecosystem can be even harder. There are tools out there to ease this burden: 
  * [CRAN Task Views](https://cran.r-project.org/web/views/) These topic-specific resources are intended as a general guide to R packages relevant to a topic. They are not exhaustive lists of every possible package. There is not an agricultural CRAN task view....yet (hence this blog post). 
  * [R Open Science](https://ropensci.org/) is running a new tool, [R Universes](https://r-universe.dev/search/) to provide organization-specific resources for package discovery and exploration. Idaho Ag Stats is running its an [ag stats universe](https://idahoagstats.r-universe.dev/ui#packages) mimicking the information in this post
  * [R weekly](https://rweekly.org/) provides weekly curated summaries by rotating curators on major developments in R. They have an RSS feed, too! 

Below is a compiled list of know R resources supporting agricultural research. Agriculture encompasses a broad breadth of disciplines. Many, many package in base R and contributed packages are useful to agricultural researchers. For that reason, this is not exhaustive list. It is intended to cover major packages that in most cases, have been developed to support agricultural research and analytical needs. 

Note that some of these packages are on CRAN and others are on GitHub, Bioconductor, or R-forge. 

If you think that some package is missing from the list, please [email me](mailto:jpiaskowski@uidaho.edu) and let me know.  

## Core Packages with general applications

### Agricultural databases 
  
  Data from the United States Department of Agriculture's National Agricultural Statistical Service 'Quick Stats' web API can be accessed with [rnassqs][] or with [tidyUSDA][], which also offers some mapping capabilities. The USDA's Cropland data layer API can be accessed with [CropScapeR][]. [cdlTools][] provides various utility functions for working with the CDL. [rusda][] provides an interface to access the USDA-ARS Systematic Mycology and Microbiology Laboratory (SMML)'s four databases: Fungus-Host Distributions, Specimens, Literature and the Nomenclature database. USDA's Agricultural Resource Management Survey (ARMS) Data API can be accessed with [rarms][]. [FedData][] provides access to geospatial data from The Soil Survey Geographic (SSURGO) database, the Global Historical Climatology Network (GHCN), the Daymet gridded estimates of daily weather parameters for North America, the International Tree Ring Data Bank, and the National Land Cover Database (NLCD). The USDA's Livestock Mandatory Reporting data API can be accessed with [usdampr][]. [FAOSTAT][] and [faobulk][] can be used to access data from the FAOSTAT Database of the Food and Agricultural Organization (FAO) of the United Nations. There are many options for downloading current and historic weather data. This is generally beyond the scope of this guide, but [rnoaa][] one option to get you started for accessing NOAA data.
  
### Data sets
  
  [Agridat][] consists of a very large collection of agricultural data sets and example analyses; the package contains a vignette detailing additional data sets and extensive resources to support agricultural analysis. [agritutorial][] provides a collection of agricultural data sets and analysis with particular attention to crop experiments. On GitHub, the R package [agroBioData][] also includes a collection of data sets supporting agriculture and applied biology. The soybean nested associated mapping project data set can be accessed via [SoyNAM][]. Many packages also include data sets to illustrate their functionality. [simplePhenotypes][] can be used for simulating pleiotropic, linked and epistatic Phenotypes. USGS county data on fertilizer sales can be accessed with [ggfertilizer][]. The FAOSTAT data set collection on the Food and Agriculture Biomass Input–Output model (FABIO) is available through [fabio][] and described more in detail in [Bruckner et al](https://pubs.acs.org/doi/10.1021/acs.est.9b03554). 
 
### Miscellaneous analytical applications for agriculture 
  
  [nlraa][] Nonlinear Regression for Agricultural Applications. The CRAN task view on [MissingData](https://cran.r-project.org/web/views/MissingData.html) is helpful for understanding how to impute for missing data. See the [Metanalysis CRAN task view](https://cran.r-project.org/web/views/MetaAnalysis.html) for packages supporting meta-analyses. Additionally, the R suite of linear and non-linear modelling packages, [nlme][], [lme4][], and [MCMCglmm][] are useful for analysing a wide array of studies. The accessory package [emmeans][] works with those packages (and more) to calculated the estimated marginal means for the independent variables. [fertplan][] provides fertilizer recommendations based on soil test results (note this packages is optimized for horticultural crop production in Italy). 

## Discipline-specific packages

### Agricultural economics

  The task views for [Econometrics](https://cran.rstudio.com/web/views/Econometrics.html), [Empirical Finance](https://cran.r-project.org/web/views/Finance.html), and [TimeSeries](https://cran.r-project.org/web/views/TimeSeries.html) provide information on packages and tools relevant to agriculture economics.

### Agronomic trials

#### Experimental design 
  
  The package [agricolae][] provides extensive resources for the planning and analysis of planned field experiments. The CRAN task for [ExperimentalDesign](https://cran.rstudio.com/web/views/Econometrics.html) provide additional information on experimental design for a wide variety of research problems. [desplot][desplot] is for plotting maps of agricultural trials laid out in grids. 
  
#### General analysis
  
  The package [agricolae][] contains functions for analyzing many common designs in agriculture trials such as split plot, lattice, Latin square and some additional functions such AMMI and AUDPC calculations. [statgenSTA][] has functions for single trial analysis with and without spatial components. The proprietary software [asreml](https://www.vsni.co.uk/software/asreml) provides an R version of their mixed model fitting functions for field trial analysis (note this is not open source and also requires an annual license). CRAN also contains an add-on package [asremlPlus][] that provides several accessory functions to asreml. [INLA][] provides tools for Bayesian inference of latent Gaussian models. It was developed specifically for agriculture and contains functions for modelling spatial variation in field experiments. 
  
#### Genotype-by-environment interactions
  
  [statgenGxE][] has several functions for handling various analytical approaches for addressing genotype-by-environment interactions. [IBCF.MTME][] implements item-based collaborative filtering for multi-trait and multi-environment trials. The package [gge][] is useful for producing GGE biplots, while [bayesammi][] can conduct Bayesian estimation of additive main effects multiplicative interaction model. [EnvRtype][] can be used for assembling climate data, data set preparation and environmental classification. 
  
#### High throughput phenotyping (HTP)
  
  [statgenHTP][] is for analyzing data from HTP platform experiments, with some functions specifically designed to work with the proprietary software [asreml](https://www.vsni.co.uk/software/asreml)
  
### Animal science

  [usdampr][] provides access to the USDA's Livestock Mandatory Reporting API. Many of the genetic packages described in this resource can also be applied to animal system.
    
### Breeding and genetics

  See the [Phylogenetics CRAN task view](https://cran.r-project.org/web/views/Phylogenetics.html) describes R packages supporting related topics like taxonomy, community ecology (including microbiome work). In addition, the R package repository [Bionconductor](https://www.bioconductor.org/) provides tools for the analysis and comprehension of high-throughput genomic data. 
  
#### Linkage mapping & QTL analysis
  
  There are two notable and long-standing packages: (1) [onemap][], providing MapMaker/EXP like performance and extended functionality, and (2) [qtl][] providing standard functionality for qtl mapping and  accessory functions for simulating crosses. [ASMap][] is for fast linkage mapping with the algorithm 'MSTmap'. [MapRtools][] is another linkage mapping package. A existing linkage map can be visualized with [LinkageMapView][]. For polyploids, the packages [mappoly][] and [polymapR][] can be used for linkage mapping and the packages [qtlpoly][] and [polyqtlR][] can be used for qtl estimation. [diaQTL][] is for QTL and haplotype analysis of diallel populations (diploid and autotetraploid). [statgenMPP][] can conduct QTL mapping in multi-parent populations.  
  
#### GWAS
  
  Genome-wide association study analysis can be conducted with [statgenGWAS][]. GWAS models across very large number of SNPs or observations can be estimated with [rMVP][] and [megaLMM][]. Functions for autotetraploid are provided by [GWASpoly][], and these functions also work in diploid species. [StageWise][] provides functiona to conduct a 2-stage GWAS when the underlying phenotypic data are from multiple field trials. 
  
#### General Genetic Prediction
  
  Packages supporting genetic prediction from pedigree or genetic marker data include [sommer][], [rrBLUP][], [BGLR][], [lme4gs][], [lme4qtl][], [pedigreelmm][], [qgtools]() and the licensed software [asreml](https://www.vsni.co.uk/software/asreml). Many of these packages have built-in functionality for data preparation steps including data imputation and calculation of the relationship matrices. [AGHmatrix][] provides extensive options for calculating pedigree and genomic (additive and dominance) relationship matrices and [statgenIBD][] can calculate IBD probabilities for biparental, three and four-way crosses. [breedR][] is a general purpose package for performing quantitative genetic analyses. For polyploids, [polyBreedR][] provides convenience functions to facilitate the use of genome-wide markers for breeding autotetraploid species, and its functionality also extends to diploids. 
  
### Crop Modelling

  The [apsimx][] package has functions to read, inspect, edit and run files for APSIM "Next Generation" (json) and APSIM "Classic" (xml). Files with an `.apsim` extension correspond to APSIM Classic, the files with an `.apsimx` extension correspond to APSIM Next Generation. [rapsimng][] works with Next Generation APSIM files. [DSSAT][] provides a comprehensive R interface to the Decision Support System for Agrotechnology Transfer Cropping Systems Model (DSSAT-CSM) documented by [Jones et al (2003)](https://doi.org/10.1016/S1161-0301(02)00107-7). This package provides cross-platform functions to read and write input files, run DSSAT-CSM, and read output files.
  
  [Meteor][] provides a set of functions for weather and climate data manipulation to support crop and crop disease modeling.
  
  [phenorice][] is an R implementation of the [phenorice model](http://dx.doi.org/10.1016/j.rse.2017.03.029) for remote sensing of rice crop production. [phenoriceR][] provides helper functions for processing data from the phenorice model. [Recocrop][] estimates environmental suitability for plants using a limiting factor approach for plant growth following [Hackett 1991](doi:10.1007/BF00045728). [Rquefts][] provides an implementation of the QUEFTS (Quantitative Evaluation of the Native Fertility of Tropical Soils) model ([Janssen 1990](https://doi.org/10.1016%2F0016-7061%2890%2990021-Z)). [Rwofost] is an implementation of the WOFOST ("World Food Studies") crop growth model([De Wit 2019](https://doi.org/10.1016%2Fj.agsy.2018.06.018)).
  

### Entomology

  [hnp][] Generates half-normal plots with simulation envelopes using different diagnostics from a range of different fitted models. A few example datasets are included.
    
### Food science

  For packages supporting sensory studies, ee the [Psychometrics CRAN task view](https://cran.r-project.org/web/views/Psychometrics.html). [NutrienTrackeR][] provides convenience functions for calculating nutrient content (macronutrients and micronutrients) of foods using food composition data from several reference databases, including: 'USDA' (United States), 'CIQUAL' (France), 'BEDCA' (Spain) and 'CNF' (Canada). 

### Plant pathology

  [epifitter][] provides functions for analysis and visualization of plant disease progress curve data. [epiphy][] is a toolbox for analyzing plant disease epidemics. It provides a common framework for plant disease intensity data recorded over time and/or space. [hagis][] provides functions for analysis of plant pathogen pathotype survey data. Functions provided calculate distribution of susceptibilities, distribution of complexities with statistics, pathotype frequency distribution, as well as diversity indices for pathotypes. [poppr][] is for for genetic analysis of populations with mixed clonal/sexual reproductive strategies. Provides population genetic analysis tools for hierarchical analysis of partially clonal populations.
  
### Rural Sociology

  See the CRAN task view for [Psychometrics](https://cran.r-project.org/web/views/Psychometrics.html) and [SocialScience](https://cran.r-project.org/web/views/SocialSciences.html)

### Soil Science

#### General 
  
  [sharpshootR][] is a compendium of utility functions supporting soils survey including data management, summary, visualizations and conversions.
    
#### Pedology
  
  [aqp](https://github.com/ncss-tech/aqp/), a toolkit for soil scientists: specialized data structures, soil profile summary, visualization, color conversion, and more. [soilDB](https://github.com/ncss-tech/soilDB/), a convenient interface most USDA-NRCS soils related databases and APIs. [SoilTaxonomy][] provides functions for parsing soil taxonomic terms. 
    
#### Spatial Statistics
  
  The ["Spatial"](https://CRAN.R-project.org/view=Spatial) and ["Spatio-Temporal"](https://CRAN.R-project.org/view=SpatioTemporal) CRAN task views provide extensive resources in this topic. 

### Weed Science

  The package [drc][] offers versatile model fitting and after-fitting functions for dose-response curves. [PROSPER][] is a package for simulating weed population dynamics at the individual and population level under a range of conditions including herbicide resistance and herbicide pressure. For ecological studies and analytical applications, the [CRAN task view for Environmetrics](https://cran.r-project.org/web/views/Environmetrics.html) provides a list of existing R resources in this topic. 


[AGHmatrix]: https://CRAN.R-project.org/package=AGHmatrix
[agricolae]: https://CRAN.R-project.org/package=agricolae
[agridat]: https://CRAN.R-project.org/package=agridat 
[agriTutorial]: https://CRAN.R-project.org/package=agriTutorial
[agroBioData]: https://github.com/OnofriAndreaPG/agriCensData
[apsimx]: https://CRAN.R-project.org/package=apsimx 
[aqp]: https://CRAN.R-project.org/package=aqp 
[ASMap]: https://CRAN.R-project.org/package=ASMap
[asremlPlus]: https://CRAN.R-project.org/package=asremlPlus 
[bayesammi]: https://CRAN.R-project.org/package=bayesammi 
[BGLR]: https://CRAN.R-project.org/package=BGLR
[breedR]: https://github.com/famuvie/breedR
[cdlTools]:  https://CRAN.R-project.org/package=cdlTools
[CropScapeR]: https://CRAN.R-project.org/package=CropScapeR 
[desplot]: https://CRAN.R-project.org/package=desplot 
[diaQTL]: https://github.com/jendelman/diaQTL
[drc]: https://CRAN.R-project.org/package=drc 
[DSSAT]: https://CRAN.R-project.org/package=DSSAT 
[emmeans]: https://CRAN.R-project.org/package=emmeans
[EnvRtype]: https://github.com/allogamous/EnvRtype
[epifitter]: https://CRAN.R-project.org/package=epifitter
[epiphy]: https://CRAN.R-project.org/package=epiphy 
[fabio]: https://github.com/fineprint-global/fabio
[faobulk]: https://github.com/muuankarski/faobulk  
[FAOSTAT]: https://CRAN.R-project.org/package=FAOSTAT
[FedData]: https://CRAN.R-project.org/package=FedData
[fertplan]: https://github.com/mbask/fertplan
[ggfertilizer]: https://github.com/wenlong-liu/ggfertilizer
[gge]: https://CRAN.R-project.org/package=gge 
[GWASpoly]: https://github.com/jendelman/GWASpoly
[hagis]: https://CRAN.R-project.org/package=hagis
[hnp]: https://cran.r-project.org/package=hnp 
[IBCF.MTME]: https://CRAN.R-project.org/package=IBCF.MTME
[INLA]: https://github.com/inbo/INLA
[LinkageMapView]: https://CRAN.R-project.org/package=LinkageMapView 
[lme4]: https://CRAN.R-project.org/package=lme4
[lme4gs]: https://github.com/perpdgo/lme4GS
[lme4qtl]: https://github.com/variani/lme4qtl
[mappoly]: https://CRAN.R-project.org/package=mappoly 
[MapRtools]: https://github.com/jendelman/MapRtools
[MCMCglmm]: https://CRAN.R-project.org/package=MCMCglmm
[MegaLMM]: https://github.com/deruncie/MegaLMM/
[meteor]: https://CRAN.R-project.org/package=meteor
[nlme]: https://CRAN.R-project.org/package=nlme
[nlraa]: https://cran.r-project.org/package=nlraa
[NutrienTrackeR]: https://CRAN.R-project.org/package=NutrienTrackeR
[onemap]: https://CRAN.R-project.org/package=onemap
[pedigreemm]: https://CRAN.R-project.org/package=pedigreemm
[phenorice]: https://github.com/cropmodels/phenorice
[phenoriceR]: https://github.com/lbusett/phenoriceR
[polyBreedR]: https://github.com/jendelman/polyBreedR
[polymapR]: https://CRAN.R-project.org/package=polymapR
[polyqtlR]: https://CRAN.R-project.org/package=polyqtlR 
[poppr]: https://cran.r-project.org/package=poppr
[PROSPER]: https://CRAN.R-project.org/package=PROSPER 
[qgtools]: https://CRAN.R-project.org/package=qgtools
[qtl]: https://CRAN.R-project.org/package=qtl
[qtlpoly]: https://CRAN.R-project.org/package=qtlpoly
[rapsimng]: https://CRAN.R-project.org/package=rapsimng
[rarms]: https://CRAN.R-project.org/package=rarms 
[Recocrop]: https://CRAN.R-project.org/package=Recocrop 
[rMVP]: https://CRAN.R-project.org/package=rMVP
[rnassqs]: https://CRAN.R-project.org/package=rnassqs 
[rnoaa]: https://CRAN.R-project.org/package=rnoaa 
[Rquefts]: https://CRAN.R-project.org/package=Rquefts
[rrBLUP]: https://CRAN.R-project.org/package=rrBLUP
[rusda]:  https://CRAN.R-project.org/package=rusda
[Rwofost]: https://CRAN.R-project.org/package=Rwofost
[sharpshootR]: https://CRAN.R-project.org/package=sharpshootR
[simplePHENOTYPES]: https://github.com/samuelbfernandes/simplePHENOTYPES
[sommer]: https://CRAN.R-project.org/package=sommer
[soilDB]: https://CRAN.R-project.org/package=soilDB
[SoilTaxonomy]: https://CRAN.R-project.org/package=SoilTaxonomy
[SoyNAM]: https://CRAN.R-project.org/package=SoyNAM 
[StageWise]: https://github.com/jendelman/StageWise
[statgenGWAS]: https://CRAN.R-project.org/package=statgenGWAS
[statgenGxE]: https://CRAN.R-project.org/package=statgenGxE 
[statgenHTP]:	https://CRAN.R-project.org/package=statgenHTP
[statgenIBD]:	https://CRAN.R-project.org/package=statgenIBD
[statgenMPP]:	https://CRAN.R-project.org/package=statgenMPP
[statgenSTA]: https://CRAN.R-project.org/package=statgenSTA
[tidyUSDA]: https://CRAN.R-project.org/package=tidyUSDA
[usdampr]: https://CRAN.R-project.org/package=usdampr
