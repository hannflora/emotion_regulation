library(tidyverse)

# Pick a palette

palette.pals()
(my_palette <- palette.pals()[14])

# Set the difference alpha for low cognitive control  

alpha_low <- 0.25


# Put all colors in a list and give it nice names

colors <- 
  list(
    tasks = palette.colors(3, palette = my_palette, alpha = .8),
    low   = palette.colors(3, palette = my_palette, alpha = alpha_low),
    high  = palette.colors(3, palette = my_palette, alpha = 1 - alpha_low)
  ) %>% 
  map(set_names, c("Trait rumination", "Mean state rumination", "State rumination"))
