# Script for doing something awesome

library(tidyverse)

d <- data.frame(x = rexp(1000),
                y = runif(1000))
ggplot(d, aes(x,y)) +
    stat_density_2d(geom="raster", contour=F, aes(fill=..density..)) +
    scale_x_continuous(expand=c(0, 0)) +
    scale_y_continuous(expand=c(0, 0))

ggsave("../output/awesome_density.pdf")

# Hello, this is Luis