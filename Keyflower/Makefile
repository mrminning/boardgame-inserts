.PHONY: all clean
.DELETE_ON_ERROR:

SRCS := $(filter-out main.scad Keyflower.scad, $(wildcard *.scad))
OBJS := $(SRCS:.scad=.stl)

all: $(OBJS)

%.stl: %.scad main.scad
	openscad --export-format binstl -o $@ $<

clean:
	rm -v *.stl
