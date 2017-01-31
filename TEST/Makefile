
INCLUDE += -lunqlite
INCLUDE += -lgc

INCLUDE += -I $(PATSCONTRIB) 
INCLUDE += -I ../..

INCLUDE += -IIATS $(PATSCONTRIB)
INCLUDE += -IIATS ../..

PATSCC=patscc
PATSCC2=$(PATSCC) $(INCLUDE) $(INCLUDE_ATS)

CC=gcc
CXX=gcc

all: test01.out 

%.out: %.dats
	$(PATSCC) -DATS_MEMALLOC_GCBDW $(INCLUDE) -o $@ $<

clean:
	rm -f *.out
	rm -f *_dats.c

