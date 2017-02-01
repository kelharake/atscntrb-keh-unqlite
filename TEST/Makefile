
INCLUDE     += -lunqlite
INCLUDE     += -lgc

INCLUDE     += $(patsubst %,-I %,$(subst :, ,$(PATSHOMELOCS)))
INCLUDE_ATS += $(patsubst %,-IATS %,$(subst :, ,$(PATSHOMELOCS)))

CC=gcc
PATSCC=patscc
PATSCC2=$(PATSCC) $(INCLUDE) $(INCLUDE_ATS)

all: test01.out

%.out: %.dats
	$(PATSCC) -DATS_MEMALLOC_GCBDW $(INCLUDE) -o $@ $<

clean:
	rm -f *.out
	rm -f *_dats.c

