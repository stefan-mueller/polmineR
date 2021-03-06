% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polmineR_package.R
\docType{package}
\name{polmineR-package}
\alias{polmineR-package}
\title{polmineR-package}
\description{
Machinery for mining CWB corpora
}
\details{
The package provides functions for basic text statistics for corpora 
that are managed by the Corpus Workbench (CWB). A core feature is to generate
subcorpora/partitions based on metadata. The package is also meant to serve
as an interface between the CWB and R-packages implementing more
sophisticated statistical procedures (e.g. lsa, lda, topicmodels) or
providing further functionality for text mining (e.g. tm).
  
Any analysis using this package will usually start with setting up a 
subcorpus/partition (with \code{partition}). A set of partitions can be
generated with \code{partitionBundle}. Once a partition or a set of partitions
has been set up, core functions are \code{cooccurrences} and
\code{features}. Based on a partition bundle, a
term-document matrix (class 'TermDocumentMatrix' from the tm package) can be
generated (with \code{as.TermDocumentMatrix}). This opens the door to the wealth of
statistical methods implemented in R.

When the package is loaded and attached, the package will look for a file name 'polmineR.conf'
in a directory defined by the environment variable 'POLMINER_DIR'. It will take general 
settings for polmineR from that file. Second, templates are restored.
}
\examples{
\donttest{
# examples in the manual rely in a sample corpus that can be install as follows:
install.corpus("polmineR.sampleCorpus")
}
}
\author{
Andreas Blaette (andreas.blaette@uni-due.de)
}
\references{
http://polmine.sowi.uni-due.de

Jockers, Matthew L. (2014): Text Analysis with R for Students of Literature.
Cham: Springer.
}
\keyword{package}

