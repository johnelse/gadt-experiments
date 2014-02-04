PROGRAM=safelist

all: $(PROGRAM)

$(PROGRAM): $(PROGRAM).ml
	ocamlopt safelist.ml -o $(PROGRAM)

.PHONY: clean
clean:
	rm -f *.o *.cmi *.cmx $(PROGRAM)
