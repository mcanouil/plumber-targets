library(targets)

list(
  tar_target(
    name = model,
    command = lm(y ~ x, data = data.frame(x = rnorm(100), y = rnorm(100)))
  )
)
