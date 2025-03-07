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
ISIN_list <- c("MXP001691213",     # America Movil
               "FR0000120503",     # Bouygues
               "GB0030913577",     # BT Group
               "KYG217651051",     # CK Hutchison Holding
               "DE0005557508",     # Deutsche Telekom
               "NL0000009082",     # Koninklijke KPN
               "GB00B8W67662",     # Liberty Global
               "ZAE000042164",     # MTN Group
               "FR0000133308",     # Orange
               "BE0003810273",     # Proximus
               "IT0003497168",     # Telecom Italia
               "ES0178430E18",     # Telefonica
               "GB00B0SWJX34",     # Telefonica Deutschland
               "NO0010063308",     # Telenor
               "SE0000667925",     # Telia
               "FR0000127771",     # Vivendi
               "GB00BH4HKS39")     # Vodafone



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


# Erstellen eines neuen Data Frames unter Zuweisung des Werts NA bei einer Summe 0
# Diese Anpassung dient der statistischen Auswertung. Fonds, die kein einziges Unternehmen der Branche halten, sind neutral
# in ihrem Interesse und müssen daher bei der Auswertung ausgeklammert werden.
df_cleaned <- df_combined
df_cleaned$Summe [df_cleaned$Summe == 0] <- NA


# Statistische Auswertung
summary(df_combined$Summe)
summary(df_cleaned$Summe)


# Grafische Darstellung mittels Histogramm
h <- hist(df_cleaned$Summe,
          main = "Mobilfunk",
          xlab = "Enthaltene Unternehmen pro Fonds",
          ylab = "Anzahl Fonds",
          breaks = seq(0.5, 16.5, length = 17),
          xaxt = 'n')
axis(side = 1, at=seq(1, 16, 1))
text(h$mids, h$counts, labels = h$counts, adj = c(0.5, -0.5))

