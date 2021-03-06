#' @include partition_class.R 
NULL

setGeneric("sAttributes", function(.Object, ...){standardGeneric("sAttributes")})


#' @param unique logical, whether to return unique values only
#' @param regex filter return value by applying a regex
#' @rdname sAttributes-method
setMethod("sAttributes", "character", function(.Object, sAttribute = NULL, unique = TRUE, regex = NULL){
  if (is.null(sAttribute)){
    return(CQI$attributes(.Object, "s"))
  } else {
    if (.Object %in% CQI$list_corpora()) {
      ret <- CQI$struc2str(
        .Object, sAttribute,
        c(0:(CQI$attribute_size(.Object, sAttribute, type = "s")-1))
        )
      if (!is.null(regex)) ret <- grep(regex, ret, value = TRUE)
      if (unique == TRUE) ret <- unique(ret)
      Encoding(ret) <- getEncoding(.Object)
      return(ret)
    } else {
      warning("corpus name provided not available")
      return(NULL)
    }
  }
})

#' Get s-attributes.
#' 
#' Structural annotations (s-attributes) of a corpus provide metainformation for
#' regions of tokens. Gain access to the s-attributes available for a corpus or partition,
#' or the values of s-attributes in a corpus/partition with the \code{sAttributes}-method.
#' 
#' Importing XML into the Corpus Workbench (CWB) turns elements and element
#' attributes into so-called s-attributes. There are two uses of the sAttributes-method: If the 
#' \code{sAttribute} parameter is NULL (default), the return value is a character vector
#' with all s-attributes present in a corpus.
#' 
#' If sAttribute is the name of a specific s-attribute (a length 1 character vector), the
#' values of the s-attributes available in the corpus/partition are returned.
#'
#' @param .Object either a \code{partition} object or a character vector specifying a CWB corpus
#' @param sAttribute name of a specific s-attribute
#' @return a character vector
#' @exportMethod sAttributes
#' @docType methods
#' @aliases sAttributes sAttributes,character-method sAttributes,partition-method
#' @rdname sAttributes-method
#' @examples 
#' \dontrun{
#'   use("polmineR.sampleCorpus")
#'   
#'   sAttributes("PLPRBTTXT")
#'   sAttributes("PLPRBTTXT", "text_date") # dates of plenary meetings
#'   
#'   P <- partition("PLPRBTTXT", text_date = "2009-11-10")
#'   sAttributes(P)
#'   sAttributes(P, "text_name") # get names of speakers
#' }
setMethod(
  "sAttributes", "partition",
  function (.Object, sAttribute = NULL) {
    if (is.null(sAttribute)){
      retval <- CQI$attributes(.Object@corpus, "s")
    } else {
      if (.Object@xml == "flat" || .Object@sAttributeStrucs == sAttribute){
        retval <- unique(CQI$struc2str(.Object@corpus, sAttribute, .Object@strucs));
        Encoding(retval) <- .Object@encoding;  
      } else {
        cposVector <- unlist(apply(.Object@cpos, 1, function(x) x[1]:x[2]))
        strucs <- CQI$cpos2struc(.Object@corpus, sAttribute, cposVector)
        retval <- CQI$struc2str(.Object@corpus, sAttribute, strucs)
        retval <- unique(retval)
        Encoding(retval) <- .Object@encoding
      }
    }
    retval
  }
)

#' @docType methods
#' @rdname partitionBundle-class
setMethod("sAttributes", "partitionBundle", function(.Object, sAttribute){
  lapply(
    .Object@objects,
    function(x) sAttributes(x, sAttribute)
    )
})
