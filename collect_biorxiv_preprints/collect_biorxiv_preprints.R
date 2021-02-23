library(medrxivr)
mx_data <- mx_api_content(from_date = "2020-01-01", to_date = "2020-12-31")
write.csv(mx_data, "medrxiv_29112020.csv")
