.PHONY: clean

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
img/scikit-learn-border.png: img/scikit-learn.png
	convert $< -border 60x40 -quality 100 $@
img/scikit-learn.png:
	curl -o $@ http://scikit-learn.org/stable/_static/scikit-learn-logo-small.png

clean:
	rm -rf *_files/ *_cache/ *.pdf
