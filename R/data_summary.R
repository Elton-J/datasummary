data_summary <-
function(x, na.rm = TRUE){
  
  num_data <- dplyr::select_if(x, .predicate = is.numeric) 
  
  purrr::map_df(num_data, .f = numeric_summary, na.rm = na.rm, .id = "ID")
  
}
