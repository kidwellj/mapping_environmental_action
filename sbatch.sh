#!/bin/bash
#SBATCH --mail-type ALL
#SBATCH --cpus-per-task 1
#SBATCH --time 180:0
#SBATCH --ntasks 20
#SBATCH --qos bbdefault

module purge; module load bluebear
module load R/3.5.0-iomkl-2018a-X11-20180131
module load Pandoc/2.3.1
module load plotly/4.7.1-iomkl-2018a-R-3.5.0
module load rgeos/0.3-28-iomkl-2018a-R-3.5.0
module load tmap/2.2-iomkl-2018a-R-3.5.0

Rscript -e 'library(rmarkdown); rmarkdown::render("mapping_draft-hpc_optimised.Rmd", "html_document")'
cp mapping_draft.html /rds/projects/2016/kidwellj-01/mapping_environmental_action/
cp figures/* /rds/projects/2016/kidwellj-01/mapping_environmental_action/figures
cp derivedData/* /rds/projects/2016/kidwellj-01/mapping_environmental_action/derivedData