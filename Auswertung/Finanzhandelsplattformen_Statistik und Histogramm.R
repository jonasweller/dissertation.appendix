# Setzen des Working Directorys
setwd("/Users/jonas/Documents/Promotion/Datenauswertung/Daten/Finanzhandelsplattformen")


# Aktivieren der Pakete
library(tidyverse)
library(dplyr)


# Einlesen der Auswertungstabelle Agrarchemie
# Die Auswertungstabelle wurde zuvor mit dem Programm Agrarchemie_Auswertung.R berechnet.
df_combined <- read.csv2("Finanzhandelsplattformen_Auswertung.csv", row.names = 1)


# Anfügen einer weiteren Spalte mit der Summe aller Treffer pro Fonds
df_combined$Summe <- rowSums(df_combined)


# Erstellen eines neuen Data Frames unter Zuweisung des Werts NA bei einer Summe 0
# Diese Anpassung dient der statistischen Auswertung. Fonds, die kein einziges Unternehmen der Branche halten, sind neutral in ihrem Interesse und müssen daher bei der Auswertung ausgeklammert werden.
df_cleaned <- df_combined
df_cleaned$Summe [df_cleaned$Summe == 0] <- NA


# Statistische Auswertung der Verteilung mit 0
summary(df_combined$Summe)


# Statistische Auswertung der Verteilung ohne 0
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

