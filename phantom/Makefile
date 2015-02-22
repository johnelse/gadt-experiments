PROGRAM=phantom

all: $(PROGRAM)

$(PROGRAM): $(PROGRAM).ml
	ocamlopt phantom.ml -o $(PROGRAM)

.PHONY: clean
clean:
	rm -f *.o *.cmi *.cmx $(PROGRAM)
