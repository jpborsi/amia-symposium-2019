.PHONY: clean setup serve
clean:
	rm -f export.pdf

setup:
	npm install
	npm install -g decktape

serve:
	npm restart

export.pdf:
	npm restart &
	sleep 3
	decktape reveal http://localhost:8000 export.pdf
