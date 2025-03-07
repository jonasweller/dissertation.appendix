#Anzeigen und Setzen des Working Directorys
getwd()
setwd("/Users/jonas/Documents/Promotion/Datenauswertung/Daten/Finanzhandelsplattformen")


# Aktivieren der Pakete
library(tidyverse)
library(dplyr)


# Einlesen der Auswertungstabelle Finanzhandelsplattformen
# Die Auswertungstabelle wurde zuvor mit dem Programm Finanzhandelsplattformen_Auswertung.R berechnet.
df_combined <- read.csv2("Finanzhandelsplattformen_Auswertung.csv", row.names = 1)


# Einlesen des Vektors Fondsvolumen_in_Mio
# Der Vektor Fondsvolumen_in_Mio wurde zuvor mit Programm Berechnung Vektor Fondsvolumen.R berechnet.
Fondsvolumen_in_Mio <- scan("Vektor Fondsvolumen_in_Mio.txt", what = numeric())


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


# Anfügen des Vektors Fondsvolumen als weitere Spalte an die Auswertungstabelle df_combined
df_combined$"Fondsvolumen (in Mio. Euro)" <- Fondsvolumen_in_Mio


# Erstellen eines neuen Data Frames df_pattern aus df_combined
df_pattern <- df_combined


# Anfügen einer Spalte Muster, die die Werte aus den vorherigen Spalten für jede ISIN in der ISIN_list als String zusammenfasst
df_pattern$Muster <- Reduce(function(x, y) paste0(x, df_combined[[y]]), ISIN_list, init = "")

# Erstellen eines gruppierten Data Frames anhand der Spalte Muster
df_grouped <- group_by(df_pattern, Muster)


# Erstellen eines neuen Data Frames, der die Muster zusammenfasst und das summierte Fondsvolumen sowie die Anzahl der enthaltenen Fonds pro Muster berechnet
df_summary <- summarise(df_grouped,
                    `Summiertes Fondsvolumen (in Mio. Euro)` = sum(`Fondsvolumen (in Mio. Euro)`, na.rm = TRUE),
                    `Anzahl Fonds` = n())


# Erstellen eines neuen Data Frames, der nach der Anzahl der Fonds sortiert ist
df_number <- df_summary %>% arrange(desc(`Anzahl Fonds`))


# Erstellen eines neuen Data Frames, der nach dem summierten Fondsvolumen sortiert ist
df_size <- df_summary %>% arrange(desc(`Summiertes Fondsvolumen (in Mio. Euro)`))


# Export der sortieren Data Frames
write.csv2(df_number, file = "Finanzhandelsplattformen_Beteiligungsmuster_Anzahl.csv")
write.csv2(df_size, file = "Finanzhandelsplattformen_Beteiligungsmuster_Fondsvolumen.csv")


# Test
sum(df_combined$`Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Summiertes Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Anzahl Fonds`)

