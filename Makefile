slides.pdf: welcome.Rmd
	Rscript -e 'rmarkdown::render("$<", output_file = "$@")'
