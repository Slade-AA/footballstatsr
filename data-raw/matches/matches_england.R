files <- list.files(path = "data-raw/matches/England", 
                    recursive = TRUE,
                    full.names = TRUE)

matches_england <- list()
for (file in files) {
  matches_england[[file]] <- read.csv(file)
}

matches_england <- plyr::rbind.fill(matches_england)