# 🚲 Analyse des Comptages Vélo & Météo – Nantes Métropole 2024

Projet de modélisation et d’analyse de données publiques de Nantes Métropole, centré sur l’impact de la météo sur l’usage du vélo en 2024.


## 📌 Objectifs

- Construire un mini **entrepôt de données** (modèle en étoile) avec PostgreSQL
- Croiser les données de **comptage vélo** et de **météo** à l’échelle journalière
- Définir des indicateurs de **qualité des données**
- Réaliser des analyses exploratoires pour :
  - Identifier les **tendances d’usage vélo**
  - Mesurer l’impact de la **météo sur la fréquentation**
  - Détecter des **anomalies** dans les données


## 🗂️ Sources de données

- 📍 [Comptages vélo – Nantes Métropole](https://data.nantesmetropole.fr/explore/dataset/244400404_comptages-velo-nantes-metropole/)
- 🌦️ [Données météo 2024 – API Open-Meteo](https://open-meteo.com/)

---

## 🧱 Schéma de données (modèle en étoile)

- `fait_comptage_velo` : table centrale contenant les mesures journalières
- `dim_date` : table de dimension temporelle (date, jour, mois, type jour, etc.)
- `dim_meteo` : météo quotidienne (température, pluie, vent, etc.)
- `dim_station` : localisation et caractéristiques des boucles de comptage

![Schéma en étoile](./schema_modele_etoile.png)


## 🔍 Analyses réalisées

- Évolution du trafic vélo par mois / saison
- Identification des **heures de pointe** (dans un modèle horaire secondaire)
- Corrélation entre **température et nombre de passages**
- Impact de la **pluie et du vent** sur la fréquentation
- Création d’un indicateur de **qualité de données** basé sur les valeurs nulles et anomalies détectées

---

## 📊 Visualisations (à venir)

- Histogrammes par jour/semaine
- Graphiques météo vs trafic vélo
- Carte des stations les plus actives


## 🛠️ Technologies utilisées

- **PostgreSQL** : stockage et modélisation des données
- **DBeaver** : interface SQL
- **Python (Pandas, SQLAlchemy)** : traitement, transformation, appel API météo
- **Qlik / R / matplotlib** : visualisation (selon la suite du projet)

---

## 📅 Période étudiée

- **1er janvier au 31 décembre 2024**

---

## 🙋‍♀️ Réalisé par

**NAFYSSATA Mohamed Halim**  
Étudiante en Master Data Science – Nantes Université  
*Contact : nafyssata@gmail.com*

---

## 📌 Remarques

- Projet en cours d’évolution : version actuelle = entrepôt de données + analyse exploratoire
- Prochaine étape : création d’un dashboard interactif (Qlik, R Shiny ou autre)

