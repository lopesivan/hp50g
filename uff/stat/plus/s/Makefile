target = $(shell pwd | sed 's=.*/==').txt

all: $(target)

$(target):
	./mount.sh > $@

clean:
	rm $(target)

