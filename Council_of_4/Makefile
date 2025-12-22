.PHONY: all clean
.DELETE_ON_ERROR:

SRCS := $(wildcard stl/*.scad)
OBJS := $(SRCS:.scad=.stl)

all: $(OBJS)

%.stl: %.scad main.scad
	openscad --export-format binstl -o $@ $<

clean:
	rm -v stl/*.stl
	rm -v stl/*.scad
