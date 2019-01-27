all: output.pdf academic.pdf

output.pdf: style.txt data.yaml
	ruby make_cv.rb -i data.yaml -s style.txt -o $@

output.light.pdf: style.light.txt data.yaml
	ruby make_cv.rb -i data.yaml -s style.light.txt -o $@

academic.pdf: academic.txt data.yaml
	ruby make_cv.rb -i data.yaml -s academic.txt -o $@

clean:
	rm -f output.pdf academic.pdf
