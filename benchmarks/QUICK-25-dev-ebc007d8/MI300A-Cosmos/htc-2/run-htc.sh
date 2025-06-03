input=morphine.in
bench=run-5-morphine
job=${bench}.sh
log=${bench}.log
echo ">>> Running on host $host <<<"
echo " >> Benchmark $bench"
for i in 1 2
do
    echo " >> launch iteration $i"
    mkdir $i
    cp $input $i/
    cp $job $i/
    pushd $i
    ./$job > $log &
    popd
done
