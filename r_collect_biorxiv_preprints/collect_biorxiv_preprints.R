library(medrxivr)

from_date <- "2020-01-01"
to_date <- "2020-12-31"

mx_data <- mx_api_content(from_date = from_date, to_date = to_date)
write.csv(mx_data, "medarxiv_preprints.csv")
