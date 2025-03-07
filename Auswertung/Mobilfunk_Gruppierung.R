#Anzeigen und Setzen des Working Directorys
getwd()
setwd("/Users/jonas/Documents/Promotion/Datenauswertung/Daten/Mobilfunk")


# Aktivieren der Pakete
library(tidyverse)
library(dplyr)


# Einlesen der Auswertungstabelle Mobilfunk
# Die Auswertungstabelle wurde zuvor mit dem Programm Mobilfunk_Auswertung.R berechnet.
df_combined <- read.csv2("Mobilfunk_Auswertung.csv", row.names = 1)


# Einlesen des Vektors Fondsvolumen_in_Mio
# Der Vektor Fondsvolumen_in_Mio wurde zuvor mit Programm Berechnung Vektor Fondsvolumen.R berechnet.
Fondsvolumen_in_Mio <- scan("Vektor Fondsvolumen_in_Mio.txt", what = numeric())


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
write.csv2(df_number, file = "Mobilfunk_Beteiligungsmuster_Anzahl.csv")
write.csv2(df_size, file = "Mobilfunk_Beteiligungsmuster_Fondsvolumen.csv")


# Test
sum(df_combined$`Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Summiertes Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Anzahl Fonds`)

