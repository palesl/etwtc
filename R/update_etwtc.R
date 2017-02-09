#' Update etwtc
#'
#' This function installs the most recent version of etwtc from its Github repository.
#' @keywords update etwtc
#' @export
#' @examples
#' update_etwtc()
#'

update_etwtc <- function(){
  library(devtools)
  install_github('palesl/etwtc')
}

