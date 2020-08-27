# Create numeric_summary() function
numeric_summary <- function(x, na.rm = T) {
  
  # Include an error if x is not numeric
  if(!is.numeric(x)){
    stop("Argumento x deve ser numérico!")
  }
  
  # Create data frame
  data.frame( min = min(x, na.rm = na.rm),
              median = median(x, na.rm = na.rm),
              sd = sd(x, na.rm = na.rm),
              max = max(x, na.rm = na.rm))
}

# Test numeric_summary() function
numeric_summary(airquality$Ozone, T)

# Salva o objeto numeric_summary (Código) em um arquivo na pasta R
dump("numeric_summary", file = 'R/numeric_summary.R')

