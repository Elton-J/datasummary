#' Sumario de Colunas Numericas
#' Gera um sumario das colunas numericas de um data.frame
#'
#' @param x Um data frame com colunas numericas
#' @param na.rm Logico, indicando se NAs devem ser removidos
#' @import dplyr
#' @import purrr
#' @importFrom tidyr gather
#' @export
#' @examples
#' data_summary(iris)
#' data_summary(airquality, na.rm = FALSE)
#' 
#' @return Essa funcao retorna um \code{data.frame} com as colunas: 
#' \itemize{
#'  \item ID
#'  \item min
#'  \item median
#'  \item sd
#'  \item max
#' }
#' @author Elton J (elton.pdsj@gmail.com)
#' @seealso \link[base]{summary}
data_summary <- function(x, na.rm = TRUE){
  
  num_data <- select_if(x, .predicate = is.numeric) 
  
  map_df(num_data, .f = numeric_summary, na.rm = na.rm, .id = "ID")
  
}

