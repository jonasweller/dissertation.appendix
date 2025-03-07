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
ISIN_list <- c("AU000000ANZ3",     # Australia and New Zealand Banking (ANZ)
               "ES0113211835",     # Banco Bilbao (BBVA)
               "ES0113900J37",     # Banco Santander
               "US0605051046",     # Bank of America
               "GB0031348658",     # Barclays
               "US05541T1016",     # BGC Partners
               "US1729674242",     # Citigroup
               "NO0010031479",     # DNB Bank
               "US38141G1040",     # Goldman Sachs
               "US45866F1049",     # Intercontinental Exchange
               "US46625H1005",     # JPMorgan Chase
               "GB0008706128",     # Lloyds Banking
               "GB00B0SWJX34",     # London Stock Exchange
               "US57060D1081",     # MarketAxess Holdings
               "US6311031081",     # NASDAQ
               "CA7800871021",     # Royal Bank of Canada
               "GB0004082847",     # Standard Chartered
               "CA8911605092",     # Toronto Dominion Bank
               "CH0244767585",     # UBS
               "US9282541013")     # Virtu Financial



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
          main = "Finanzhandelsplattformen",
          xlab = "Enthaltene Unternehmen pro Fonds",
          ylab = "Anzahl Fonds",
          breaks = seq(0.5, 18.5, length = 19),
          xaxt = 'n')
axis(side = 1, at=seq(1, 18, 1))
text(h$mids, h$counts, labels = h$counts, adj = c(0.5, -0.5))

