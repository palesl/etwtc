#' Pdf documents to a corpus
#'
#' This function reads pdf files into R, and creates a corpus for text analysis.


pdf_corpus <- function(path){
  library(tm)
  library(pdftools)

  files <- list.files(path = path, pattern = "pdf$")

  files <- paste(path, '/', files, sep='' )

  files <- gsub('//','/', files)

  list <- NULL

  for(i in 1:length(files)){
    single <- pdf_text(files[i], opw = "", upw = "")
    single <- gsub('\r\n',' ', single)
    single <- paste(single, collapse=" ")
    list[[i]]<- single
  }


  corpus <- VCorpus(VectorSource(list))

  files2 <- list.files(path = path, pattern = "pdf$")

  files2 <- gsub('.pdf', '', files2)

  names(corpus) <- files2




  return(corpus)

}

