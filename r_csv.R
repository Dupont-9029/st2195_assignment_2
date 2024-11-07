library(rvest)
csv_wiki <- read_html("https://en.wikipedia.org/wiki/Comma-separated_values")
csv_tables<- csv_wiki %>%
       html_elements(xpath='//*[@id="mw-content-text"]/div[1]/pre[1]/text()') %>%
       html_text()

csv_tables

write.table(csv_tables, file='r_csv',quote= FALSE,col.names = FALSE,row.names = FALSE)

read.csv("r_csv")

