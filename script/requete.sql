-- le jour du mois avec le plus de passage de velo avec le nombre de passage par mois et quel type de jour 
 select*from dim_meteo;

-- le jour de l'anné avec le plus de passage de velo avec le nombre de passage,et la meteo qu'il faisaint

-- quel borne enregistre le plus de passage (nom,code) par jour, on purrait faire une carte parexemple pour visualiser l'endrait par jour de la semaine ( ex:lundi borne a felix on met un point bleu dans felix )

-- le mois de l'année ou on utilise plus ou mois de velo 
-- le nombre d'utilisation de velo quand la temperature et au dessus de x parexemple 

-- -- le nombre d'utilisation de velo quand il fait plus gris contre moins gris 
-- Évolution du nombre de passages par semaine
--Variation du trafic entre jours ouvrés et jours de vacances
-- Impact des vacances scolaires sur l’usage du vélo
--🧊 Comparaison entre les jours froids (<10°C) et chauds (>20°C)
--☔ Corrélation entre précipitations et baisse du trafic vélo
--🌫️ Impact du vent fort (gust > 30km/h) sur la fréquentation
--🌡️ Histogramme du trafic vélo en fonction des plages de température (par tranches de 5°C)
 
-- 🎯 Qualité des données et vérifications :
-- 🚫 Combien de jours ont des valeurs nulles ou manquantes
-- 🔁 Y a-t-il des doublons dans les comptages (même date + même station) ?
-- ⛔ Y a-t-il des stations avec 0 comptage sur toute l’année ?
