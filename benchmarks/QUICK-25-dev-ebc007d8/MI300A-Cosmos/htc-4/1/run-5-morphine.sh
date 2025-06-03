benchmarks="morphine"
exe=quick.hip

host=$(hostname -s)
echo ">>> Running on host $host <<<"

for bench in $benchmarks
do
    echo
    echo "Benchmark $bench"
    tinit=$(date '+%s')
    for i in 1 2 3 4 5
    do
        tstart=$(date '+%s')
        $exe $bench.in
        tstop=$(date '+%s')
        mv $bench.out $bench.out.$i
        echo "$tstart $tstop $i" | awk '{elapsed=$2-$1; printf " %d >> Elapsed time = %d seconds = %8.1f minutes\n", $3, elapsed, elapsed/60}'
    done
    echo "$tinit $tstop" | awk '{elapsed=$2-$1; printf " >> Average elapsed time = %d seconds = %8.1f minutes\n", elapsed/5, elapsed/60/5}'
done
