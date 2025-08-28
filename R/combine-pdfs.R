library(fs)
library(qpdf)

worksheets <- path("_site", "activities", "tbd_tbd_analysis-review.pdf")
output <- path("_site", "activities", "analysis.pdf")
combined_pdf <- file_temp(ext = "pdf")
combined_pdf <- pdf_combine(c(worksheets, output), combined_pdf)
file_copy(combined_pdf, worksheets, overwrite = TRUE)
