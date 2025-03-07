#Anzeigen und Setzen des Working Directorys
getwd()
setwd("/Users/jonas/Documents/Promotion/Datenauswertung/Daten/Bereinigte Daten DE und USA (final)")


# Aktivieren der Pakete
library(tidyverse)
library(dplyr)


# Erstellen einer Liste filenames, die die Dateinamen der Bestandslisten enthält
filenames <- list.files()


# Einlesen aller Bestandslisten in einer Liste mit dem Namen fund_list
# 204 DE_ETFs
# 218 US_ETFs
# Insgesamt: 422 Bestandslisten
fund_list <- lapply(filenames, read.csv2)


# Erstellen einer Liste mit dem Namen ISIN_list, die die ISINs der zu suchenden Unternehmen enthält
# In die Auswertung werden nur die börsennotierten Unternehmen der zu untersuchenden Branche einbezogen.
ISIN_list <- c("DE000BASF111",     # BASF
               "DE000BAY0017",     # Bayer
               "US22052L1044",     # Corteva
               "US3024913036",     # FMC
               "AU000000NUF3",     # Nufarm
               "JP3401400001")     # Sumitomo Chemical


# Ertstellen einer leeren Liste mit dem Namen data, um die Daten zu speichern
data <- list()

# Loop über alle Fonds (funds)
for (fund in fund_list) {
  
  # Erstellen eines numerischen Vektors in der Länge der ISIN_list für eine Reihe
  row <- numeric(length(ISIN_list))
  
  # Loop über alle ISINs
  for (i in seq_along(ISIN_list)) {
    
    # Überprüfen, ob ISIN im Fonds (fund) vorkommt, und Ergebnis mit 0 oder 1 im Vektor row festhalten
    row[i] <- as.integer(ISIN_list[i] %in% fund$ISIN)
  }
  
  # Anhängen des Vektors für die aktuellen Reihe (für einen Fonds) an die Liste data
  data <- append(data, list(row))
}


# Benennen der Vektoren für die Fonds nach den Fondsnamen (wie in den Dateinamen)
names(data) <- filenames


# Konvertieren der Liste data zu einer Matrix
matrix_combined <- t(bind_rows(data))


# Benennen der Spalten in der Matrix nach den ISINs
colnames(matrix_combined) <- ISIN_list


#Konvertieren der Matrix zu einem Data Frame
df_combined <- as.data.frame(matrix_combined)


# Export der Auswertungstabelle
write.csv2(df_combined, file = "Agrarchemie_Auswertung.csv")

