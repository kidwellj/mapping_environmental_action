html:
	Rscript -e 'library(rmarkdown); rmarkdown::render("mapping_draft.Rmd", "html_document")'

hpc:
	Rscript -e 'library(rmarkdown); rmarkdown::render("mapping_draft-hpc_optimised.Rmd", "html_document")'

pdf:
	Rscript -e 'library(rmarkdown); rmarkdown::render("./mapping_draft.Rmd", "pdf_document")'