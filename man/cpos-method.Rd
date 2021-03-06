% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cpos_method.R
\docType{methods}
\name{cpos}
\alias{cpos}
\alias{cpos,character-method}
\alias{cpos,matrix-method}
\alias{cpos,partition-method}
\alias{cpos,tempcorpus-method}
\title{Get corpus positions for (CQP) queries.}
\usage{
cpos(.Object, ...)

\S4method{cpos}{character}(.Object, query,
  pAttribute = getOption("polmineR.pAttribute"), cqp = is.cqp,
  encoding = NULL, verbose = TRUE, ...)

\S4method{cpos}{partition}(.Object, query, cqp = is.cqp, pAttribute = NULL,
  verbose = TRUE, ...)

\S4method{cpos}{tempcorpus}(.Object, query, shift = TRUE)

\S4method{cpos}{matrix}(.Object)
}
\arguments{
\item{.Object}{a \code{"character"} vector indicating a CWB corpus, a
\code{"partition"} object, a \code{"tempcorpus"} object, or a
\code{"matrix"} with corpus positions}

\item{...}{further arguments}

\item{query}{a character vector (length 1) providing a (single) query: either
a single token to look up, or a CQP query.}

\item{pAttribute}{the p-attribute to search. Needs to be stated only if query is not a CQP query. Defaults to NULL.}

\item{cqp}{either logical (TRUE if query is a CQP query), or a
function to check whether query is a CQP query or not (defaults to is.query
auxiliary function)}

\item{encoding}{the encoding of the corpus (if NULL, the
encoding provided in the registry file of the corpus will be used)}

\item{verbose}{logical, whether to be talkative}

\item{shift}{logical, if true, the cpos resulting from the query performed on
the tempcorpus will be shifted so that they match the positions of the
corpus from which the tempcorpus was generated}
}
\value{
Unless .Object is a \code{"matrix"}, you get a matrix with two columns, the first column giving the start cpos of the hits obtained,
the second column giving the end cpos of the respective hit. The number of rows is the number of hits.
If there are no hits, a NULL object will be returned.
}
\description{
Get matches for a query in a CQP corpus, optionally using the CQP syntax of the
Corpus Workbench (CWB).
}
\details{
If the cpos-method is applied on \code{"character"}, \code{"partition"}, or
\code{"tempcorpus"} object, the result is a two-column matrix with the 
regions (start end end corpus positions of the matches) for a query. CQP
syntax can be used. The encoding of the query is adjusted to conform to the
encoding of the CWB corpus.

If the cpos-method is called on a \code{"matrix"} object,  the cpos
matrix is unfolded.
}

