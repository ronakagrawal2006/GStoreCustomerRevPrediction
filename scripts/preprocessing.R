flatcsv <- function(datacolumn) {
  return(
    paste("[", paste(datacolumn, collapse = ","), "]") %>% fromJSON(flatten = T)
  )
}