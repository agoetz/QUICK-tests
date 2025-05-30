benchmarks="psb5 morphine taxol valinomycin"
exe=quick.hip

host=$(hostname -s)
echo ">>> Running on host $host <<<"

for bench in $benchmarks
do
    echo
    echo "Benchmark $bench"
    tstart=$(date '+%s')
    $exe $bench.in
    tstop=$(date '+%s')
    printf "%d" $nt
    echo "$tstart $tstop" | awk '{elapsed=$2-$1; printf " >> Elapsed time = %d seconds = %8.1f minutes\n", elapsed, elapsed/60}'
done
