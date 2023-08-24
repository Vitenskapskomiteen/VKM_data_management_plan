
vkm_data <- function(input = "vkm_data", is.SLR = FALSE, search.num = 1) {
  # check if here package is installed on users local system
  list.of.packages <- c("here")
  new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
    # if not installed install it
  if(length(new.packages)) install.packages(new.packages)
  
  newdir <- paste0(here::here(), "/", input, format(Sys.Date(), "_%Y.%m.%d"))
  
  # Check if directory already exists
  if (!file.exists(newdir)) {
    dir.create(newdir)
    
    # Create subdirectories
    dir.create(paste0(here::here(), "/Data"), showWarnings = FALSE)
    dir.create(paste0(here::here(), "/Literature_Data"), showWarnings = FALSE)
    
    for (s in 1:search.num) {
      dir.create(paste0(here::here(), "/Literature_Data/search_", s), showWarnings = FALSE)
      dir.create(paste0(here::here(), "/Literature_Data/search_", s, "/1_search_query"), showWarnings = FALSE)
      dir.create(paste0(here::here(), "/Literature_Data/search_", s, "/2_study_selection"), showWarnings = FALSE)
      dir.create(paste0(here::here(), "/Literature_Data/search_", s, "/3_full_text"), showWarnings = FALSE)
      dir.create(paste0(here::here(), "/Literature_Data/search_", s, "/4_data_extraction"), showWarnings = FALSE)
      
      if (is.SLR) {
        dir.create(paste0(here::here(), "/Literature_Data/search_", s, "/5_internal_validity"), showWarnings = FALSE)
        dir.create(paste0(here::here(), "/Literature_Data/search_", s, "/6_confidence_in_evidence"), showWarnings = FALSE)
      }
    }
    
    dir.create(paste0(here::here(), "/Data/1_raw_data"), showWarnings = FALSE)
    dir.create(paste0(here::here(), "/Data/2_processed_data"), showWarnings = FALSE)
    dir.create(paste0(here::here(), "/Data/3_metadata"), showWarnings = FALSE)
    dir.create(paste0(here::here(), "/Data/4_scripts"), showWarnings = FALSE)
    dir.create(paste0(here::here(), "/Data/5_outputs"), showWarnings = FALSE)
  } else {
    print("Folder already exists.")
  }
}

# kjør funksjon uten SLR 
vkm_data("navn_paa_prosjekt")

# SLR eksempel med fire søk
vkm_data("SLR_prosjekt", is.SLR=TRUE, 4)