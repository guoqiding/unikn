% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_themes.R
\name{theme_unikn}
\alias{theme_unikn}
\title{Basic unikn theme for ggplot2.}
\usage{
theme_unikn(col_title = unikn::pal_seeblau[[4]], base_size = 11,
  base_family = "", base_line_size = base_size/20,
  base_rect_size = base_size/20)
}
\arguments{
\item{col_title}{Color of title (text) elements (optional, numeric).
Default: \code{col_title = "black"}.  
Consider using \code{col_title = unikn::pal_seeblau[[4]]} 
in combination with black or grey data points.}

\item{base_size}{Base font size (optional, numeric). 
Default: \code{base_size = 11}.}

\item{base_family}{Base font family (optional, character). 
Default: \code{base_family = ""}.}

\item{base_line_size}{Base line size (optional, numeric). 
Default: \code{base_line_size = base_size/20}.}

\item{base_rect_size}{Base rectangle size (optional, numeric). 
Default: \code{base_rect_size = base_size/20}.}
}
\description{
\code{theme_unikn} provides a basic \bold{unikn} theme 
to use in \bold{ggplot2} commands.
}
\details{
The theme is lightweight and no-nonsense, but somewhat 
opinionated (e.g., in using mostly grey scales to 
allow emphasizing data points with color accents).
}
\examples{

\donttest{
  # Plotting iris dataset (using ggplot2, theme_unikn, and unikn colors):
  
  library("ggplot2")  # theme_unikn requires loading ggplot2 
  
  ggplot(datasets::iris) +
    geom_jitter(aes(x = Petal.Length, y = Petal.Width, color = Species), size = 3, alpha = 1/2) +
    scale_color_manual(values = usecol(pal = c(Seeblau, Peach, Seegruen))) +
    labs(title = "Iris species",
         caption = "Data from datasets::iris") + 
    theme_unikn(col_title = "black", base_size = 11)
}

}
\seealso{
Other plot functions: \code{\link{slide}},
  \code{\link{xbox}}
}
\concept{plot functions}
