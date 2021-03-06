% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/color_fun.R
\name{usecol}
\alias{usecol}
\title{Use a color palette.}
\usage{
usecol(pal = pal_unikn, n = "all", alpha = NA, use_names = FALSE,
  use_col_ramp = FALSE)
}
\arguments{
\item{pal}{A color palette (as a vector of colors or color palettes). 
Default: \code{pal = \link{pal_unikn}}.}

\item{n}{An integer value specifying the desired number of colors from the palette.
For all palettes defined within \code{unikn} by default it uses a pre-defined selection of 
colors if the desired number of colors is smaller than the available number.  
For all other palettes and \code{n} larger than \code{length(pal)} it extends the palette using
\code{\link{colorRampPalette}}.}

\item{alpha}{A factor modifying the opacity alpha (as in \code{\link{adjustcolor}}); 
typically in [0,1]. 
Default: \code{NA} (i.e., no modification of opacity).}

\item{use_names}{A logical value indicating whether colors should be returned as a named vector.
(Defaults to \code{FALSE} for compatibility with \code{ggplot}).}

\item{use_col_ramp}{A logical value specifying whether the default of using pre-selected colors
should be overridden and \code{\link{colorRampPalette}} should be used to process \code{n}.}
}
\description{
\code{usecol} allows using a color palette \code{pal} (e.g., for plotting).
}
\examples{
usecol(pal = pal_unikn, n = "all")  # default color palette 
usecol(pal = pal_unikn, n =  4)     # selecting n dedicated colors
usecol(pal = pal_unikn, n = 20)     # extending color palette  

# Mixing a new color palette: 
pal_1 <- usecol(pal = c(rev(pal_seeblau), "white", pal_pinky))  
seecol(pal_1)

# Mixing and extending a color palette: 
pal_2 <- usecol(pal = c(rev(pal_seegruen), "white", pal_bordeaux), n = 20)  
seecol(pal_2)

# Defining and using a custom color palette:
pal_princeton_1 <- c("#E77500", "white", "black")
names(pal_princeton_1) <- c("orange_w", "white", "black")

pal_3 <- usecol(pal_princeton_1, n = 7)
seecol(pal_3)

}
\seealso{
\code{\link{seecol}} to plot color palettes; 
\code{\link{pal_unikn}} for the default uni.kn color palette.

Other color functions: \code{\link{newpal}},
  \code{\link{seecol}}
}
\concept{color functions}
