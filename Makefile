JAVA_SOURCES = $(wildcard source/*.java)
CPP_SOURCES = $(wildcard source/*.cpp)

all: highlight
	luatex --output-format=pdf --file-line-error lecturer-playground.tex

highlight:
	#rm source/*.tex
	find source \( -name '*.java' -or -name '*.cpp' \) \
		-type f -exec pygmentize -f plaintex.py:PlainTexFormatter -x -o'{}.tex' '{}'  \;
	