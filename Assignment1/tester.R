#Getting the images online
library(tidyverse)
song_title <- c("she's all i wanna be", "Me or Sum (feat. Future & Lil Baby)", "Oh My God", "Broadway Girls (feat. Morgan Wallen)", "Rumors (feat. Lil Durk)", "Still D.R.E.", "Better Days (NEIKED x Mae Muller x Polo G)", "half of my hometown (feat. Kenny Chesney)", "Numb Little Bug", "23", "Do We Have A Problem?", "Peru", "Boyfriend")

song_length <- c(206772, 225664, 225148, 185600, 185855, 270586, 160656, 231832, 169237, 179720, 207065, 187111, 153000)

song_popularity <- c(92, 76, 93, 85, 83, 91, 90, 71, 89, 77, 86, 85, 94)

song_data <- tibble(song_title, song_length, song_popularity) %>% mutate(song_income = song_length * 0.01) %>%
  mutate(song_title_lower = str_to_lower(song_title)) %>% filter(str_detect(song_title_lower, "s"))

song_data
