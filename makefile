all: README.md

README.md: guessinggame.sh
	echo "## Guess the number of files" > README.md
	echo "Date of make execution:" >> README.md
	date -u >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
