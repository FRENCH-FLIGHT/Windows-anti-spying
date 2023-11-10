# Windows-anti-spying

Description du Projet
=====================

Ce projet vise à renforcer la confidentialité et la sécurité en bloquant les tentatives de suivi des liens Microsoft. À l'aide d'un script PowerShell accompagné d'un fichier batch (.bat), cette solution modifie le fichier hosts pour rediriger l'adresse IP 127.0.0.1 (adresse locale) vers les URLs associées aux mécanismes de suivi de Microsoft. De cette manière, les demandes de suivi de Microsoft sont "emprisonnées" sur le réseau local et ne sortent pas.

Contenu du Projet
-----------------

### 1\. Script PowerShell (DisableTracking.ps1)

Le script PowerShell inclus dans ce projet automatise le processus de modification du fichier hosts. Il ajoute l'adresse IP 127.0.0.1 devant toutes les URLs connues pour le suivi de liens par Microsoft.

`.\DisableTracking.ps1`

### 2\. Fichier Batch (run-script.bat)

Le fichier batch fourni permet l'exécution automatique du script PowerShell. Son utilisation simple garantit une mise en œuvre efficace du blocage des liens de suivi Microsoft.

`run-script.bat`

### 3\. Objectif

L'objectif principal de ce projet est d'offrir aux utilisateurs une solution facile à déployer pour bloquer les tentatives de suivi de liens par Microsoft. En modifiant le fichier hosts, l'utilisateur renforce sa confidentialité en limitant la collecte de données par ces mécanismes de suivi.

### 4\. Utilisation Responsable

Il est essentiel de noter que l'utilisation de ce projet doit respecter toutes les lois et réglementations en vigueur. Bien que le blocage des liens de suivi puisse renforcer la confidentialité, il est crucial d'adopter une approche responsable et légale dans son utilisation.

Comment Contribuer
------------------

Les contributions à ce projet sont les bienvenues. Si vous identifiez de nouvelles URLs de suivi Microsoft ou si vous avez des suggestions d'amélioration, n'hésitez pas à ouvrir une demande d'extraction (pull request) ou à signaler un problème (issue) sur GitHub.

Merci de contribuer à renforcer la confidentialité en ligne tout en respectant les normes éthiques et légales.
