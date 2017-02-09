#' Pdf documents to a corpus
#'
#' This function reads pdf files into R, and creates a corpus for text analysis.
#' @param path A directory address to a folder containing one or more .pdf documents.
#' @keywords pdf Corpus
#' @export
#' @examples
#' pdf_corpus(path = '~/User/folder/')

pdf_corpus <- function(path){
  library(tm)
  files <- list.files(path = path, pattern = "pdf$")

  files <- paste(path, '/', files, sep='' )

  files <- gsub('//','/', files)

  Rpdf <- readPDF(control = list(text = "-layout"))

  corpus <- Corpus(URISource(files),
                     readerControl = list(reader = Rpdf))

  names(corpus) <- gsub('.pdf','', names(corpus))


  return(corpus)

}
