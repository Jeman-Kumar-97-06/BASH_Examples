#The following command prints the first column data:
#The comma after -F is the seperator. Vertically, It doesn't give a fuck what comes after the first ','
awk -F"4" '{print var $1}' mock.csv
#------------------------------------------------------------------------------------------
awk -F',' -v var='dates_dawg:' '{print var $2}' mock.csv
#OUTPUT:
#dates_dawg:created
#dates_dawg:2024-11-01
#dates_dawg:2024-11-02
#.............
awk -F',' '{sum += $3} END {print "sum:" sum}' mock.csv
#OUTPUT:
#sum:625