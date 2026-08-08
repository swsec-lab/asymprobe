EXPERIMENTS = vector_reg_symbol

.PHONY: all clean $(EXPERIMENTS)

all: $(EXPERIMENTS)

$(EXPERIMENTS):
	$(MAKE) -C $@ all
	@echo

clean:
	@for e in $(EXPERIMENTS); do $(MAKE) -C $$e clean; done
