#Anzeigen und Setzen des Working Directorys
getwd()
setwd("/Users/jonas/Documents/Promotion/Datenauswertung/Daten/Oel und Gas")


# Aktivieren der Pakete
library(tidyverse)
library(dplyr)


# Einlesen der Auswertungstabelle Oel und Gas
# Die Auswertungstabelle wurde zuvor mit dem Programm Oel und Gas_Auswertung.R berechnet.
df_combined <- read.csv2("Oel und Gas_Auswertung.csv", row.names = 1)


# Einlesen des Vektors Fondsvolumen_in_Mio
# Der Vektor Fondsvolumen_in_Mio wurde zuvor mit Programm Berechnung Vektor Fondsvolumen.R berechnet.
Fondsvolumen_in_Mio <- scan("Vektor Fondsvolumen_in_Mio.txt", what = numeric())


# Erstellen einer Liste mit dem Namen ISIN_list, die die ISINS der zu suchenden Unternehmen enthält
# In die Auswertung werden nur die börsennotierten Unternehmen der zu untersuchenden Branche einbezogen.
ISIN_list <- c("GB0007980591",     # BP
               "GB00B033F229",     # Centrica
               "US1667641005",     # Chevron
               "US20825C1045",     # ConocoPhillips
               "US29273V1008",     # Energy Transfer
               "FR0010208488",     # Engie
               "IT0003132476",     # Eni
               "NO0010096985",     # Equinor
               "US30231G1022",     # Exxon Mobil
               "RU0007661625",     # Gazprom
               "IT0001250932",     # Hera
               "US49456B1017",     # Kinder Morgan
               "ES0116870314",     # Naturgy
               "AT0000743059",     # OMV
               "ES0173516115",     # Repsol
               "RU000A0J2Q06",     # Rosneft
               "GB00B03MLX29",     # Royal Dutch Shell
               "CA87807B1076",     # TC Energy
               "FR0000120271")     # Total


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
write.csv2(df_number, file = "Oel und Gas_Beteiligungsmuster_Anzahl.csv")
write.csv2(df_size, file = "Oel und Gas_Beteiligungsmuster_Fondsvolumen.csv")


# Test
sum(df_combined$`Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Summiertes Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Anzahl Fonds`)

