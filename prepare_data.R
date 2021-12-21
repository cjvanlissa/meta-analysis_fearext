# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data.

library(worcs)
library(readxl)
library(tidySEM)
f <- list.files(pattern = "^Data_.*.xlsx$")
rename <- read.csv("rename.csv")
dat <- lapply(f, function(x){
  tmp <- as.data.frame(readxl::read_xlsx(path = x))
  names(tmp) <- tolower(names(tmp))
  #if("anxiety test categories" %in% names(tmp)) browser()
  # removedups <- table(gsub(".short$", "", names(tmp)))
  # removedups <- names(removedups)[removedups == 2]
  # tmp[removedups] <- NULL
  tmp[grep("comments", names(tmp))] <- NULL
  names(tmp) <- rename[[2]][match(names(tmp), rename[[1]])]
  tmp$id_sample <- as.integer(factor(tmp$paper))
  cats <- names(tmp)[!sapply(tmp, inherits, "numeric")]
  tmp[cats] <- lapply(tmp[cats], factor)
  tmp$Sample = gsub("Data_meta_analysis_SRMAextangst_(.+?)_.*$", "\\1", x)
  tmp
})
dat <- tidySEM:::bind_list(dat)
dat$year <- as.character(dat$year)
dat$dose[dat$dose == "7.0000000000000007E-2"] <- ".07"
dat$dose[dat$dose == "0.1-0.15"] <- ".125"
dat$dose <- as.numeric(dat$dose)
dat$year <- as.integer(gsub("[a-zA-Z]", "", dat$year))
open_data(dat)
