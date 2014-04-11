all:
	echo "Update slides.html using RStudio's Presentation > More > Save As Web Page, then 'make gh-pages'"

TMPFILE:=/tmp/2Y3g5BTr7UKI

gh-pages:
	cp slides.html $(TMPFILE)
	git fetch origin gh-pages
	git checkout gh-pages
	git reset --hard origin/gh-pages
	cp $(TMPFILE) index.html
	git add index.html
	git commit -m 'update index.html [via make gh-pages]'
	git push origin gh-pages
	git checkout master
