#Anzeigen und Setzen des Working Directorys
getwd()
setwd("/Users/jonas/Documents/Promotion/Datenauswertung/Daten/Getraenkeherstellung")


# Aktivieren der Pakete
library(tidyverse)
library(dplyr)


# Einlesen der Auswertungstabelle Getraengeherstellung
# Die Auswertungstabelle wurde zuvor mit dem Programm Getraenkeherstellung_Auswertung.R berechnet.
df_combined <- read.csv2("Getraenkeherstellung_Auswertung.csv", row.names = 1)


# Einlesen des Vektors Fondsvolumen_in_Mio
# Der Vektor Fondsvolumen_in_Mio wurde zuvor mit Programm Berechnung Vektor Fondsvolumen.R berechnet.
Fondsvolumen_in_Mio <- scan("Vektor Fondsvolumen_in_Mio.txt", what = numeric())


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
write.csv2(df_number, file = "Getraenkeherstellung_Beteiligungsmuster_Anzahl.csv")
write.csv2(df_size, file = "Getraenkeherstellung_Beteiligungsmuster_Fondsvolumen.csv")


# Test
sum(df_combined$`Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Summiertes Fondsvolumen (in Mio. Euro)`)
sum(df_summary$`Anzahl Fonds`)

