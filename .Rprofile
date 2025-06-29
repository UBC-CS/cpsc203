# Use Posit Package Manager
options(
  renv.settings.ppm.enabled = TRUE,
  renv.config.pak.enabled = TRUE,
  renv.config.ppm.enabled = TRUE,
  renv.config.ppm.default = TRUE
)

# Use renv
source("renv/activate.R")

# Set error handler to rlang
if (require(rlang, quietly = TRUE)) {
  globalCallingHandlers(error = rlang::entrace)
}
