#!/bin/bash

# Variable 1--> num.procesos
# Variable 2--> IP
# Variable 3--> size
# Variable 4--> intervalo de tiempo

for (( i=1;i<=$1;i++ )) 
do 
  echo "Lanzando proceso numero $i"; 
done

for (( i=1;i<=$1;i++ )) 
do 
  ping $2 -s $3 -i $4 & 2>/dev/null
done

exit 0
