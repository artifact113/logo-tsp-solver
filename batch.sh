for a in `seq 1000`
do
	./logo --in="./TSPLIB/usa13509.tsp" --initMethod="mf" --mode="cuda" --err=0 --timelimit=10800 --showLOInfo=1 --device=0 --comm=1 --out="usa13509_AT53_TITAN_x1"
	./logo --in="./TSPLIB/usa13509.tsp" --initMethod="mf" --mode="cuda" --err=0 --timelimit=10800 --showLOInfo=1 --comm=1 --autoDevice --maxDevices=2 --out="usa13509_AT53_TITAN_x2"
#	./logo --in="./TSPLIB/usa13509.tsp" --initMethod="mf" --mode="cuda" --err=0 --timelimit=3600 --showLOInfo=1 --comm=1 --autoDevice --maxDevices=3 --out="usa13509_AT53_TITAN_x3"
	./logo --in="./TSPLIB/usa13509.tsp" --initMethod="mf" --mode="cuda" --err=0 --timelimit=10800 --showLOInfo=1 --comm=1 --autoDevice --maxDevices=4 --out="usa13509_AT53_TITAN_x4"
done
