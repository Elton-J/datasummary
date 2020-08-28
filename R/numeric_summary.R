#' Sumario de Vetor Numerico
#' 
#' Gera um sumario de um vetor numerico 
#' 
#' @param x Um vetor numerico 
#' @param na.rm Logico, indicando se NAs devem ser removidos
#' @import dplyr
#' @import purrr
#' @importFrom tidyr gather
#' @export
#' @examples
#' numeric_summary(c(1:10))
#' @return Essa funcao retorna um \code{data.frame} com as colunas: 
#' \itemize{
#'  \item min
#'  \item median
#'  \item sd
#'  \item max
#' }
#' @author Elton J (elton.pdsj@gmail.com)
#' @seealso \link[base]{summary}

numeric_summary <-
function(x, na.rm = T) {
  
  # Include an error if x is not numeric
  if(!is.numeric(x)){
    stop("Argumento x deve ser numerico")
  }
  
  # Create data frame
  data.frame( min = min(x, na.rm = na.rm),
              median = median(x, na.rm = na.rm),
              sd = sd(x, na.rm = na.rm),
              max = max(x, na.rm = na.rm))
}
