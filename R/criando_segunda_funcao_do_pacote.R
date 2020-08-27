
data_summary <- function(x, na.rm = TRUE){
  
  num_data <- dplyr::select_if(x, .predicate = is.numeric) 
  
  purrr::map_df(num_data, .f = numeric_summary, na.rm = na.rm, .id = "ID")
  
}

# Write the function to the R directory
dump("data_summary", file = "R/data_summary.R")
