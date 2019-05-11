
now=$(shell date -u "+%Y-%m-%d")

daily: cover.jpg
	@mkdir -p build
	gitbook pdf . "build/filecoin-spec.$(now).pdf"

publish:
	./publish.sh

cover.jpg:
	cover/make-today-cover

.PHONY: cover.jpg publish
