library(knitr)
library(magrittr)
library(googlesheets)
library(gridExtra)
library(crotchet)

opts_chunk$set(echo=FALSE, results="hide", cache=TRUE)

responses <- gs_title("suggestion-box-responses", verbose = FALSE) %>%
  gs_read(verbose = FALSE)
title <- colnames(responses)[2]