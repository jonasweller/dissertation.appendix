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
# 235 US_ETFs - 17 Currency Hedged ETFs (enthalten nur einen anderen ETF und Currency Forwards)
# Insgesamt: 422 Bestandslisten
fund_list  <- lapply(filenames, read.csv2)


# Erstellen einer Liste mit dem Namen ISIN_list, die die ISINS der zu suchenden Unternehmen enthält
# In die Auswertung werden nur die börsennotierten Unternehmen der zu untersuchenden Branche einbezogen.
ISIN_list <- c("BRABEVACNOR1",     # Ambev
               "BE0974293251",     # Anheuser-Busch InBev
               "JP3116000005",     # Asahi
               "HK0392044647",     # Beijing Enterprises
               "GB00B0N8QD54",     # Britvic
               "DK0010181759",     # Carlsberg
               "KYG2177B1014",     # CK Asset (Greene King)
               "GB00BDCPN049",     # Coca-Cola European Partners
               "FR0000120644",     # Danone
               "IT0005252207",     # Davide Campari
               "GB0002374006",     # Diageo
               "US49271V1008",     # Dr Pepper Snapple Group
               "MXP320321310",     # Fomento Economico Mexicano
               "US3703341046",     # General Mills
               "NL0000009165",     # Heineken
               "PTJMT0AE0001",     # Jeronimo Martins
               "JP3258000003",     # Kirin Holdings
               "GB00B1JQDM80",     # Marstons
               "US60871R2094",     # Molson Coors
               "US6092071058",     # Mondelez
               "CH0038863350",     # Nestle
               "US7134481081",     # PepsiCo
               "CLP7980K1070",     # Quinenco
               "PHY751061151",     # San Miguel
               "HK0019000162",     # Swire Pacific
               "US1912161007",     # The Coca-Cola Company
               "NL0000388619")     # Unilever



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
colnames(matrix_combined) <- ISIN_list


#Konvertieren der Matrix zu einem Data Frame
df_combined <- as.data.frame(matrix_combined)


# Anfügen einer weiteren Spalte mit der Summe aller Treffer pro Fonds
df_combined$Summe <- rowSums(df_combined)

