library(dplyr)
library(tidytext)
library(forcats)

address <- monWalUser$residentialAddress
head(address, 50)
address <- na.omit(address)

data <- data.frame(category = address,
                   stringsAsFactors = FALSE)

head(address, 20)

df <- data %>%
      unnest_tokens(word, category) %>%
      group_by(word) %>%
      count() %>%
      arrange(desc(n))


df
