# condev
This repository is for the condev R package in support of "[R for conservation and development applications: a primer for practitioners](https://www.routledge.com/R-for-Conservation-and-Development-Projects-A-Primer-for-Practitioners/Whitmore/p/book/9780367205485)
" by Nathan Whitmore (that's me). All example datasets used in the book are contained within this package.

### How to download
First install the "remotes" package via:
```
install.packages("remotes")
```

in Program R then run:
```
library("remotes") 
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
### Let me know if you encounter any problems...
