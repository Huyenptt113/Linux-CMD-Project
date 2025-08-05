wget https://raw.githubusercontent.com/yinghaoz1/tmdb-movie-dataset-analysis/master/tmdb-movies.csv

sort -t ',' -k16,1 tmdb-movies.csv > q1.csv

awk -F"," '$18>"7.5"' tmdb-movies.csv > q2.csv

sort -t',' -k5,1 tmdb-movies.csv | head -n1 | awk -F',' '{print $6}'

sort -t',' -k5,2 tmdb-movies.csv | head -n1 | awk -F',' '{print $6}'

awk -F',' '{sum+=$5} END {print sum}' tmdb-movies.csv

awk -F',' 'NR==1 {print $0",profit"} NR>1 {diff=$5-$4; print $0","diff}' tmdb-movies.csv > q4.csv




head -10 q4.csv

sort -t',' -k9,1 tmdb-movies.csv | uniq -c | sort -nr | head -1 | awk -F',' '{print $9}'


tail -n+2 cat.csv | tr '|' '\n' | sort | uniq -c | sort -nr | head -3

cut -d',' -f7 tmdb-movies.csv >  cast.csv


rev tmdb-movies.csv | cut -d',' -f8 | rev > genre3.csv
tail -n+2 genre3.csv | tr '|' '\n' | sort | uniq -c | sort -nr









