all: simulate synth run_pnr

simulate:
	./sim/simulate.sh

synth:
	yosys synth/synth.ys

run_pnr:
	cd OpenLane && make mount

openlane-flow:
	./scripts/run_openlane_flow.sh

gds:
	@echo "Check openlane/counter/runs/*/results/final/gds/counter.gds"
