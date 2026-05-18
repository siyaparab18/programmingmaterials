library(RandomWalker)
library(dplyr)
library(ggplot2)
library(patchwork)

n <- 250
nw <- 12

x <- random_normal_walk(.num_walks = nw, .n = n, .samp = FALSE) |>
  select(walk_number, cum_sum_y)
y <- random_normal_walk(.num_walks = nw, .n = n, .samp = FALSE) |>
  select(walk_number, y)
xx <- predict(smooth.spline(x$cum_sum_y, spar = 0.005),
              seq(1, n, length.out = n*nw))$y
yy <- predict(smooth.spline(y$y, spar = 0.005),
              seq(1, n, length.out = n*nw))$y

df <- tibble(
  walk_number = x$walk_number,
  x = xx,
  y = yy
)

p1 <- df |>
  ggplot(aes(color = walk_number)) +
  facet_wrap(~ walk_number, scales = "free") +
  geom_path(aes(x = x, y = y, lwd = c(0, diff(y))),
            show.legend = FALSE) +
  theme_void()

p2 <- df |>
  ggplot(aes(color = walk_number)) +
  geom_path(aes(x = x, y = y, lwd = c(0, diff(y))),
            show.legend = FALSE) +
  theme_void()

(p1 + p2) +
  plot_annotation(
    title = "Caligraphy in ggplot2 using RandomWalker",
    subtitle = paste0(nw, " Random Walks with ", n, " Steps")
  )
