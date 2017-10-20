slides.pdf: welcome.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "beamer_presentation", output_file = "$@", output_options = list(theme = "metropolis"))'
