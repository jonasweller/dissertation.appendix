#Anzeigen und Setzen des Working Directorys
getwd()
setwd("/Users/jonas/Documents/Promotion/Datenauswertung/Daten/Elektrizitaet")


# Aktivieren der Pakete
library(tidyverse)
library(dplyr)


# Einlesen der Auswertungstabelle Elektrizitaet
# Die Auswertungstabelle wurde zuvor mit dem Programm Elektrizitaet_Auswertung.R berechnet.
df_combined <- read.csv2("Elektrizitaet_Auswertung.csv", row.names = 1)


# Einlesen des Vektors Fondsvolumen_in_Mio
# Der Vektor Fondsvolumen_in_Mio wurde zuvor mit Programm Berechnung Vektor Fondsvolumen.R berechnet.
Fondsvolumen_in_Mio <- scan("Vektor Fondsvolumen_in_Mio.txt", what = numeric())


# Erstellen einer Liste mit dem Namen ISIN_list, die die ISINS der zu suchenden Unternehmen enthält
# In die Auswertung werden nur die börsennotierten Unternehmen der zu untersuchenden Branche einbezogen.
ISIN_list <- c("US0255371017",     # American Electric Power
               "BRELETACNOR6",     # Eletrobras
               "US26441C2044",     # Duke Energy
               "DE000ENAG999",     # E.ON
               "US2810201077",     # Edison International
               "FR0010242511",     # Electricite de France
               "DE0005220008",     # EnBW
               "IT0003128367",     # Enel
               "FR0010208488",     # Engie
               "US29364G1031",     # Entergy
               "US30161N1019",     # Exelon
               "ES0144580Y14",     # Iberdrola
               "JP3228600007",     # Kansai
               "KR7015760002",     # Korea Electric Power
               "DE0007037129",     # RWE
               "GB0007908733",     # SSE
               "JP3585800000")     # Tokyo Electric Power (Tepco)


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
write.csv2(df_number, file = "Elektrizitaet_Beteiligungsmuster_Anzahl.csv")
write.csv2(df_size, file = "Elektrizitaet_Beteiligungsmuster_Fondsvolumen.csv")


# Test
sum(df_combined$`Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Summiertes Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Anzahl Fonds`)

