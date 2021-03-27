

netejar_val_txt<-function(dades) {
  dades %>% mutate (
    
    val_txt=stringi::stri_trans_general(val_txt, id="Latin-ASCII"),
    
    val_txt =         stringr::str_replace_all(val_txt,"\\,","") %>% 
                      stringr::str_replace_all("\\º","") %>% 
                      stringr::str_replace_all("\\.","") %>% 
                      stringr::str_replace_all("\\±","") %>% 
                      stringr::str_replace_all("\\^","") %>% 
                      stringr::str_replace_all("\\[","") %>% 
                      stringr::str_replace_all("\\'","") %>%
                      stringr::str_replace_all("\\`","") %>% 
                      stringr::str_replace_all("\\³","") %>% 
                      stringr::str_replace_all("\\-","") %>% 
                      stringr::str_replace_all("\\>","") %>% 
                      stringr::str_replace_all("\\<","") %>% 
                      stringr::str_replace_all("\\;","") %>%
                      stringr::str_replace_all("\\§","") %>% 
                      stringr::str_replace_all("\\¡","") %>% 
                      stringr::str_replace_all('\\"','') ) %>% 
    mutate(val_txt=toupper(val_txt))}

