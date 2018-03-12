all: highlight
	luatex --output-format=pdf --file-line-error lecturer-playground.tex

highlight:
	rm source/*.tex
	highlight -f -Otex -B 'source/*.java' -d source
