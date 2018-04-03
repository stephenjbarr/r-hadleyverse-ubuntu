FROM ubuntu:xenial-20180228

RUN apt-get update && apt-get install -y \
    r-recommended
RUN R --vanilla << EOF \
install.packages(c("tidyverse","data.table","dtplyr","devtools","roxygen2","bit64"), repos = "https://cran.rstudio.com/") \
q() \
EOF    
