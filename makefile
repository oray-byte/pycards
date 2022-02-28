.PHONY: default, build, run, git, clean

default: run

run: build
	python3 main.py

build:
	pyuic5 -x main.ui -o main.py

git:
	git add *
	git commit
	git push

clean:
	-@rm -f main.py

