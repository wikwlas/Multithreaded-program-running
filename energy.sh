#!/bin/bash

/emc/det/setMat  foo
/emc/scorers/dump/trajectories 0

/emc/initial_energy {EMC_ENERGY}  MeV


/random/setSeeds {{ e.random_x }} {{ e.random_y }}

/run/beamOn 10000