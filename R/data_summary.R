
#' Resumo numérico de colunas
#'
#' Gera sumários específicos de colunas numéricas de um data.frames 
#'  
#' @param x Um data frame. Colunas não-numéricas são removidas
#' @param na.rm Parâmetro lógico para determinar se os valores ausentes devem ser removidos
#' 
#' @import purrr
#' @import dplyr
#' @importFrom tidyr gather
#' 
#' #' @return Essa função retorna um \code{data.frame} com as colunas:
#' \itemize{
#'  \item ID
#'  \item min
#'  \item median
#'  \item sd
#'  \item max
#' }
#' 
#' @author Elton Júnior <elton.pdsj@gmail.com>
#'
#' @seealso \link[base]{summary}
#'
#' @export
#'
#' @examples
#' data_summary(iris)
#' data_summary(airquality, na.rm = FALSE)

data_summary <- function(x, na.rm = TRUE){
  
  num_data <- dplyr::select_if(x, .predicate = is.numeric) 
  
  purrr::map_df(num_data, .f = numeric_summary, na.rm = na.rm, .id = "ID")
  
}
