#' Pdf documents to a corpus
#'
#' This function reads pdf files into R, and creates a corpus for text analysis.
#'
#' IMPORTANT: This function requires the installation of additional pdf extraction software.
#'
#' The extraction engine comes courtesy of  \url{http://www.foolabs.com/xpdf/download.html} (open source)
#'
#' Download the appropriate file for your operating system
#'
#' xpdfbin-mac-3.04.tar.gz for MacOS or OSX
#'
#' xpdfbin-win-3.04.zip for Windows
#'
#' xpdfbin-linux-3.04.tar.gz for Linux
#'
#' Extract the folders and install according to the instructions within the INSTALL file.
#'
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

