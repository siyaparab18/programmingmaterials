install.packages("TidyDensity")
install.packages("RandomWalker")
library(TidyDensity)
library(RandomWalker)
library(dplyr)
library(ggplot2)

n <- 250L

add_dist_column <- function(df) {
  dplyr::mutate(df, dist = factor(RandomWalker::get_attributes(df)$dist_with_params))
}

bind_rows(
  add_dist_column(tidy_beta(n)),
  add_dist_column(tidy_burr(n)),
  add_dist_column(tidy_cauchy(n)),
  add_dist_column(tidy_chisquare(n)),
  add_dist_column(tidy_exponential(n)),
  add_dist_column(tidy_f(n)),
  add_dist_column(tidy_gamma(n)),
  add_dist_column(tidy_generalized_beta(n)),
  add_dist_column(tidy_generalized_pareto(n))
) |>
  ggplot(aes(x = dx, y = dy)) +
  facet_wrap(~ dist, scales = "free") +
  geom_line(aes(color = as.numeric(dist))) +
  scale_color_viridis_c(option = "plasma") +
  theme_minimal() +
  labs(
    title = "Distributions with TidyDensity",
    x = "dx",
    y = "dy"
  ) +
  theme(legend.position = "none")