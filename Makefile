all: slides.pdf README.md
slides.pdf: welcome.Rmd
	Rscript -e 'rmarkdown::render("$<", output_file = "$@")'
README.md: welcome.Rmd img/madpy-logo.png
	sed 's/madpy-logo.pdf/madpy-logo.png/' $< > README.Rmd
	Rscript -e 'rmarkdown::render("README.Rmd", output_file = "$@", output_format = "md_document")'
	rm README.Rmd
img/madpy-logo.png: img/madpy-logo.pdf
	convert         \
   -density 150   \
    $<            \
   -quality 100   \
   -flatten       \
   -sharpen 0x1.0 \
    $@
