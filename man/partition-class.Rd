% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/partition_class.R, R/aggregate_method.R, R/as.markdown_method.R, R/freq_method.R, R/pAttributes_method.R, R/partition_methods.R, R/view_method.R
\docType{class}
\name{partition-class}
\alias{[,partition,ANY,ANY,ANY-method}
\alias{[,partition-method}
\alias{[[,partition-method}
\alias{aggregate,partition-method}
\alias{as.data.frame,partition-method}
\alias{as.markdown,partition-method}
\alias{as.partitionBundle}
\alias{as.partitionBundle,partition-method}
\alias{dissect}
\alias{dissect,partition-method}
\alias{export}
\alias{export,partition-method}
\alias{freq,partition-method}
\alias{hist,partition-method}
\alias{length,partition-method}
\alias{name,partition-method}
\alias{name<-,partition,character-method}
\alias{pAttributes,partition-method}
\alias{partition-class}
\alias{plprPartition-class}
\alias{pressPartition-class}
\alias{show,partition-method}
\alias{split}
\alias{view,cooccurrences-method}
\alias{view,partition-method}
\title{partition class}
\usage{
\S4method{aggregate}{partition}(x)

\S4method{as.markdown}{partition}(.Object, meta = getOption("polmineR.meta"),
  template = getTemplate(.Object), cpos = TRUE, cutoff = NULL, ...)

\S4method{freq}{partition}(.Object)

\S4method{pAttributes}{partition}(.Object, pAttribute = NULL)

\S4method{[}{partition,ANY,ANY,ANY}(x, i)

\S4method{[[}{partition}(x, i)

\S4method{name}{partition}(x)

\S4method{name}{partition,character}(x) <- value

\S4method{dissect}{partition}(object, dim, verbose = FALSE)

\S4method{length}{partition}(x)

\S4method{as.data.frame}{partition}(x)

\S4method{hist}{partition}(x, ...)

\S4method{view}{partition}(.Object)

\S4method{view}{cooccurrences}(.Object)
}
\arguments{
\item{x}{a partition object}

\item{.Object}{a partition object}

\item{meta}{...}

\item{template}{template to use}

\item{cpos}{...}

\item{cutoff}{maximum number of tokens to decode}

\item{...}{further parameters}

\item{pAttribute}{a p-attribute (for enriching)}

\item{i}{index}

\item{value}{value}

\item{object}{a partition object}

\item{dim}{dimensions}

\item{verbose}{logical, whether to be verbose}
}
\description{
partition class
}
\section{Slots}{

\describe{
\item{\code{name}}{Object of class \code{"character"} a name that may be useful}

\item{\code{corpus}}{Object of class \code{"character"} the CWB corpus the partition is based on}

\item{\code{encoding}}{Object of class \code{"character"} encoding of the corpus}

\item{\code{sAttributes}}{Object of class \code{"list"} s-attributes specifying the partition}

\item{\code{explanation}}{Object of class \code{"character"} an explanation of the partition}

\item{\code{cpos}}{Object of class \code{"matrix"} corpus positions}

\item{\code{annotations}}{Object of class \code{"list"}}

\item{\code{pos}}{Object of class \code{"list"} with tables "abs", "rel" and "max"}

\item{\code{size}}{Object of class \code{"numeric"} total size of the partition}

\item{\code{metadata}}{Object of class \code{"data.frame"} metadata information}

\item{\code{strucs}}{Object of class \code{"numeric"} the strucs defining the partition}

\item{\code{pAttribute}}{Object of class \code{"character"} indicating the pAttribute of the
count in slot tf}

\item{\code{xml}}{Object of class \code{"character"} whether the xml is flat or nested}

\item{\code{sAttributeStrucs}}{Object of class \code{"character"} the base node}

\item{\code{call}}{Object of class \code{"character"} the call that generated the partition}
}}
\author{
Andreas Blaette
}

