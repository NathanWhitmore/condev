# condev
This repository is for the condev R package in support of "R for conservation and development applications: a primer for practitioners" by Nathan Whitmore (that's me). All example datasets used in the book are contained within this package.
Both the package and the RStudio versions are in a development phase so if you are an early adopter I recommend reinstalling at monthly intervals.

### How to download
First install the "devtools" package via:
```
install.packages("devtools")
```

in Program R then run:
```
library("devtools") 
install_github("NathanWhitmore/condev")
```

and then load the package via:
```
library("condev")
```

### How to access the data
The data available for use can be viewed by the function:
```
data()
```
To bring a data set (e.g. 'demo1') into the R environment use:
```
data(demo1)
```

### Practice on RStudio.cloud
Every example in the book can also be found on the virtual version of RStudio at: https://rstudio.cloud/project/508279
RStudio.cloud provides a free and hassle free way to learn R via cloud computing.

### Let me know if you encounter any problems...
