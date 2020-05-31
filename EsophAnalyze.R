# Title     : Useful statements from esoph dataset
# Objective : Useful statements from esoph dataset
# Created by: Philipp
# Created on: 25.05.2020


print("Alle Spaltennamen des Datasets:")
names(esoph)

# Erster kleiner Einblick in das Dataset
head(esoph)

# Letzten Zeilen des Datasets.
tail(esoph)

## Zusammenfassung des Datasets
summary(esoph)

print("Aussagen, die aus dem Dataset geschlossen werden können")
print("Anhand von head(), tail() und summary():")
print("1. Die Altersgruppen umfassen jeweils 9 Jahre (abgesehen von 75+)")
print("2. Die Altersgruppe unter 25 wird in dem Dataset nicht betrachtet.")
print("3. Die überwiegende Mehrheit der jüngsten Kontrollgruppe konsumiert wenig bis keinen Alkohol oder Tabak.")
print("4. In der Altersgruppe 75+ gibt es absolut mehr bestätigte Fälle, als in der jüngsten Altersgruppe.")
print("5. Maximal wurden 17 bestätigte Fälle für eine Variablenkombination festgestellt.")
print("6. Dem gegenüber stehen maximal 60 durchgeführte Kontrollen bei einer Variablenkombination.")

str(esoph)

print("str() zeigt, dass es insgesamt 88 Einträge in dem Dataset gibt (konnte man bereits durch den tail Call weiter oben erkennen).")
print("Außerdem ist zu erkennen, dass es insgesamt 5 Variables (Spalten) gibt.")
print("Für jede Variable lässt sich hier der Typ und die ersten Werte erkennen.")

# ncase und ncontrols columns zusammenfassen
esoph_long <- gather(esoph, key="casecontrol", value="n", c(ncases, ncontrols))
esoph_long <- arrange(esoph_long, agegp, alcgp, tobgp)
ggplot(esoph_long, aes(x=agegp,y=n, fill=casecontrol)) + geom_bar(stat = "identity") + labs(x="Altersgruppe", y="Fälle")

print("Aus der Visualisierung wird deutlich, dass besonders die Altersgruppe 55-64 betroffen ist. Allerdings wurden in dieser Gruppe auch am meisten Tests durchgeführt.")
print("Außerdem sind stark abfallende Fallzahlen in den nachfolgenden Altergruppen zu erkennen.")
print("Des weiteres ist die Altersgruppe 25-34 kaum von Fällen betroffen.")


# Aufteilung nach Alkoholkonsum und Altergruppe
ggplot(esoph, aes(x=agegp, y=ncases)) + theme_bw() + stat_summary() + facet_wrap(~alcgp)
print("Mit ansteigendem Alter scheint das Risiko einer Erkrankung bei erhöhtem Alkoholkonsum verstärkt zu werden.")

# Aufteilung nach Alkoholkonsum und Altergruppe
ggplot(esoph, aes(x=agegp, y=ncases)) + theme_bw() + stat_summary() + facet_wrap(~tobgp)
print("Mit ansteigendem Alter scheint das Risiko einer Erkrankung bei erhöhtem Tabakkonsum verstärkt zu werden.")