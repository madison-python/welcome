all: slides.pdf README.md
slides.pdf: welcome.Rmd img/pytest.png
	Rscript -e 'rmarkdown::render("$<", output_file = "$@")'
README.md: welcome.Rmd img/pytest.png
	Rscript -e 'rmarkdown::render("$<", output_file = "$@", output_format = "md_document")'
img/pytest.png:
	curl -o $@ https://docs.pytest.org/en/latest/_static/pytest1.png
