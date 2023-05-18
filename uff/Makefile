target = $(shell pwd | sed 's=.*/==').txt
hp     = $(shell pwd | sed 's=.*/==').hpprg

all: $(target)

$(target):
	./mount.sh > $@
	cat $@| ./hp.sed > $(hp)

clean:
	rm $(target) $(hp)


