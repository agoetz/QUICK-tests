tail ?/morphine.out.? | awk 'BEGIN{t=0} /TOTAL TIME/{t+=$5} END{print t/10}'
