.PHONY: default, build, run, git, clean, runcopy
default: run

run: build
	python3 main.py

build:
	pyuic5 -x main.ui -o main.py
	cp main.py main_copy.py

git:
	git add *
	git commit
	git push

clean:
	-@rm -f main.py

runcopy:
	python3 main_copy.py