
# Ex8 — Gathering Evidence

## 1. Description

Ce projet est réalisé dans le cadre de l'exercice 08 — Gathering Evidence du projet Artificial Inquiries.

L'objectif est de collecter les réponses de quatre modèles d'intelligence artificielle à différentes tâches afin de pouvoir évaluer leur qualité de manière impartiale.

Pour éviter de connaître l'identité réelle des modèles pendant l'évaluation, chaque modèle reçoit un nom de code correspondant à un animal :

- 🦒 `giraffe` — Model 1
- 🦥 `sloth` — Model 2
- 🐉 `dragon` — Model 3
- 🦃 `turkey` — Model 4

Les réponses sont associées à un identifiant de tâche et à un code animal.

## 2. Méthode

1. Les quatre modèles sélectionnés sont transmis à un partenaire.
2. Le partenaire attribue à chaque modèle un nom de code.
3. Les instructions des tâches de l'Exercice 07a sont transmises aux quatre modèles.
4. Pour chaque modèle, seule la première réponse est collectée.
5. Chaque réponse est enregistrée avec l'identifiant de la tâche et le nom de code correspondant.

### Exemple

Si le modèle associé au nom de code `sloth` répond à la tâche `Z7`, le résultat est enregistré sous :

`Z7/sloth`

## 3. Résultats attendus

Quatre modèles exécutent chaque tâche.

Au total, **16 réponses** doivent être collectées et enregistrées conformément à l'énoncé de l'exercice.

Les résultats seront utilisés dans l'exercice suivant pour évaluer et comparer la qualité des réponses.

### État actuel des données

Quatre réponses de test sont actuellement enregistrées dans Omeka S :

| Réponse | Modèle | Code animal | Tâche |
|---|---|---|---|
| Response 1 | Model 1 | giraffe | task-1 |
| Response 2 | Model 2 | sloth | task-1 |
| Response 3 | Model 3 | dragon | task-1 |
| Response 4 | Model 4 | turkey | task-1 |

Ces réponses sont des données de test utilisées pour vérifier le fonctionnement de l'interface. Elles ne représentent pas encore les 16 réponses attendues.

## 4. Technologies utilisées

- HTML5 : structure de l'interface
- CSS3 : mise en forme et responsive design
- JavaScript : interactions et appels API
- Omeka S : gestion des ressources et des métadonnées
- API REST Omeka S : consultation et manipulation des données
- PHP : backend local et opérations sécurisées
- XAMPP : environnement de développement local
- MariaDB : base de données utilisée par Omeka S
- GitHub : gestion et publication du code
- GitHub Pages : hébergement de l'interface publique

## 5. Modélisation des données

Le projet utilise une ontologie RDF définie dans le fichier :

`artificial_inquiries.ttl`

Cette ontologie décrit notamment les ressources suivantes :

- Exercise
- Partner
- Model
- AnimalCode
- Task
- Document
- Response

Les relations entre ces ressources sont représentées dans le diagramme de classes du projet.

Le vocabulaire RDF est importé dans Omeka S afin de structurer les données et leurs relations.

## 6. Interface utilisateur — response.html

Une interface HTML, CSS et JavaScript a été développée pour gérer les réponses de l'exercice.

Elle propose notamment :

- Un tableau de bord avec des statistiques
- L'affichage des réponses enregistrées
- La recherche par titre, modèle, code animal, tâche ou contenu
- Un formulaire de création de réponse en mode administrateur local
- La modification et la suppression des réponses de test autorisées
- Un mode consultation publique

Le fichier principal de l'interface est :

`response.html`

## 7. Intégration avec l'API Omeka S

L'application utilise l'API REST d'Omeka S pour consulter les ressources enregistrées.

En environnement local, l'interface interroge notamment :

`http://localhost/omeka-s/api/items`

Les réponses sont représentées par des ressources Omeka S associées à la classe Response.

Les données utilisées comprennent notamment :

- Identifiant de la réponse
- Titre
- Identifiant métier
- Code animal
- Identifiant de la tâche
- Contenu de la réponse

Les opérations de création, de modification et de suppression passent par un backend PHP local qui communique avec Omeka S.

Documentation officielle :

https://omeka.org/s/docs/developer/api/

## 8. Fonctionnalités CRUD

Les opérations CRUD sont implémentées et ont été testées dans l'environnement local.

| Opération | Fonctionnalité |
|---|---|
| Create | Créer une réponse de test |
| Read | Consulter les réponses |
| Update | Modifier une réponse de test autorisée |
| Delete | Supprimer une réponse de test autorisée |

Les quatre réponses originales de démonstration sont protégées contre la modification et la suppression depuis cette interface.

Les opérations d'écriture nécessitent une session administrateur autorisée.

## 9. Authentification et sécurité

Une authentification administrateur locale est mise en place avec PHP.

Elle utilise notamment :

- Des sessions PHP
- Une vérification de l'accès administrateur
- Des jetons CSRF pour les opérations d'écriture
- Un backend intermédiaire pour communiquer avec l'API Omeka S

Les informations sensibles de configuration, les mots de passe et les clés API sont conservés hors du dossier web public et ne sont pas publiés sur GitHub.

L'authentification CAS, GitHub et Google n'est pas implémentée dans la version actuelle.

## 10. Publication sur GitHub Pages

L'interface publique est accessible à l'adresse suivante :

https://marouabenjelloun.github.io/ArtificialInquiries_8/response.html

Cette version permet :

- De consulter les quatre réponses de démonstration
- D'afficher les modèles représentés
- De rechercher des réponses
- D'actualiser les données publiées

La version publique utilise le fichier :

`responses.json`

Ce fichier contient une exportation des réponses issues d'Omeka S.

GitHub Pages hébergeant des fichiers statiques, il ne peut pas exécuter directement le backend PHP local.

Par conséquent, le formulaire CRUD et les liens d'administration sont masqués dans la version publique.

Les opérations CRUD et l'authentification restent disponibles dans l'environnement local.

Les modifications effectuées dans Omeka S ne sont pas automatiquement synchronisées avec `responses.json` : un nouvel export doit être publié pour mettre à jour la version publique.

## 11. Exécution locale

Le projet est développé et testé avec XAMPP et Omeka S.

Pour utiliser l'interface locale :

1. Démarrer Apache et MySQL/MariaDB dans XAMPP.
2. Vérifier que l'installation Omeka S fonctionne.
3. Ouvrir l'interface à l'adresse :

`http://localhost/omeka-s/artificial-inquiries/response.html`

4. Se connecter avec le compte administrateur local pour accéder aux opérations autorisées.

Le fonctionnement complet du CRUD nécessite également le backend PHP local et sa configuration privée.

## 12. Formulaire de l'exercice

Une copie d'écran du formulaire papier correspondant à l'Exercice 08 — Gathering Evidence est disponible dans le dépôt GitHub.

[Consulter le formulaire de l'Exercice 08](https://github.com/MarouaBenjelloun/ArtificialInquiries_8/blob/main/exercice8-formulaire.png)

## 13. Fichiers principaux du dépôt

| Fichier | Description |
|---|---|
| `README.md` | Présentation et documentation du projet |
| `response.html` | Interface utilisateur |
| `responses.json` | Export public des réponses |
| `artificial_inquiries.ttl` | Ontologie RDF |
| `diagram_class.md` | Diagramme de classes |
| `exercice8-formulaire.png` | Capture du formulaire papier |
| `omk.sql` | Export SQL présent dans le dépôt |
| `resource-template/` | Ressources de modélisation Omeka S |

## 14. Limites et perspectives

Les améliorations envisagées comprennent :

- Compléter la collecte des 16 réponses attendues
- Ajouter, si nécessaire, les autres méthodes d'authentification demandées
- Déployer un backend accessible en ligne pour permettre le CRUD distant
- Automatiser la synchronisation des réponses entre Omeka S et la version publique

## 15. Références

- Documentation Omeka S : https://omeka.org/s/docs/
- API Omeka S : https://omeka.org/s/docs/developer/api/
- Dépôt GitHub : https://github.com/MarouaBenjelloun/ArtificialInquiries_8
