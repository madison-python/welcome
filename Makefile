slides.pdf: welcome.Rmd img/pytest.png
	Rscript -e 'rmarkdown::render("$<", output_file = "$@")'
img/pytest.png:
	curl -o $@ https://docs.pytest.org/en/latest/_static/pytest1.png
