# Use Posit Package Manager
options(renv.config.pak.enabled = TRUE)

# Use renv
source("renv/activate.R")

# Set error handler to rlang
if (require(rlang, quietly = TRUE)) {
  globalCallingHandlers(error = rlang::entrace)
}
