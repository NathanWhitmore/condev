\name{treecover}
\alias{treecover}
\title{Emulation of Hansen et al. (2013) tree canopy cover data}
\usage{
data(treecover)
}
\description{
The \code{treecover} is a raster which emulates the tree canopy cover for year 2000 downloadable from  global forest change website: \code{http://earthenginepartners.appspot.com/science-2013-global-forest} (Hansen et al. 2013). The purpose of this data set is to introduce users to basic raster manipulation.

Reference: Hansen, M.C., Potapov, P.V., Moore, R., Hancher, M., Turubanova, S.A., Tyukavina, A., Thau, D., Stehman, S.V., Goetz, S.J., Loveland, T.R. and Kommareddy, A., 2013. High-resolution global maps of 21st-century forest cover change. science, 342(6160), pp.850-853
}


\format{

raster:

\itemize{

\item \code{class       : RasterLayer}
\item \code{dimensions  : 828, 1800, 1490400  (nrow, ncol, ncell)}
\item \code{resolution  : 0.0002777778, 0.0002777778  (x, y)}
\item \code{extent      : 146.7099, 147.2099, 3.530861, 3.760861  (xmin, xmax, ymin, ymax)}
\item \code{coord. ref. : +proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0 }
\item \code{data source : in memory}
\item \code{names       : waihi_treecover}
\item \code{values      : 0, 100  (min, max)}


}
}

\examples{
library(raster)
library(condev)

data(treecover)

# plotting raster for Waihi island (fictitious example)

plot(treecover)
}                
                