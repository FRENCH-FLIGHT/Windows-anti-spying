Windows-anti-spying
=====================

Description du Projet
------------------

Ce projet vise à renforcer la confidentialité et la sécurité en bloquant les tentatives de suivi des liens Microsoft. À l'aide d'un script PowerShell accompagné d'un fichier batch (.bat), cette solution modifie le fichier hosts pour rediriger l'adresse IP 127.0.0.1 (adresse locale) vers les URLs associées aux mécanismes de suivi de Microsoft. De cette manière, les demandes de suivi de Microsoft sont "emprisonnées" sur le réseau local et ne sortent pas.

Contenu du Projet
-----------------

1\. Script PowerShell (DisableTracking.ps1)

Le script PowerShell inclus dans ce projet automatise le processus de modification du fichier hosts. Il ajoute l'adresse IP 127.0.0.1 devant toutes les URLs connues pour le suivi de liens par Microsoft.

`.\DisableTracking.ps1`

2\. Fichier Batch (run-script.bat)

Le fichier batch fourni permet l'exécution automatique du script PowerShell. Son utilisation simple garantit une mise en œuvre efficace du blocage des liens de suivi Microsoft.

`run-script.bat`

Execution Automatique
-----------------
1) Télécharger et placer le script `DisableTracking.ps1` dans le dossier téléchargements (tout autre emplacement empêchera l'exécution automatique)

2) Télécharger le fichier `run-script.bat` et l'exécuter.

3) Sélectionner dans la fenêtre Powershell l'option souhaitée

4) Et voilà, le tour est joué :)

Execution Manuelle (utilisateurs avancés)
-----------------
Si vous préférez ne pas utiliser le fichier batch fourni et souhaitez exécuter manuellement le script PowerShell depuis le dossier de téléchargement, suivez ces étapes simples :

1) Téléchargez le script PowerShell depuis le dépôt GitHub et enregistrez-le dans votre dossier de téléchargement.
    
2) **Ouverture de PowerShell** :
    
    *   Appuyez sur la touche `Windows` + `X` pour ouvrir le menu de raccourcis.
    *   Sélectionnez "Windows PowerShell" ou "PowerShell" (en tant qu'administrateur si possible).
      
3)  **Autorisation de l'Exécution de Scripts** : Avant d'exécuter le script, vous pourriez devoir autoriser l'exécution des scripts PowerShell. Utilisez la commande suivante dans PowerShell (en tant qu'administrateur) :
   `Set-ExecutionPolicy RemoteSigned`
    
4.  **Navigation vers le Dossier de Téléchargement** : Utilisez la commande `cd` pour naviguer vers le dossier où vous avez téléchargé le script. Par exemple : `cd C:\CheminduTelechargement`
    
5.  **Exécution du Script PowerShell :** Exécutez le script à l'aide de la commande suivante :
    `.\DisableTracking.ps1`
    
7.  **Vérification de l'Exécution :** Après l'exécution, le script devrait ajouter avec succès les entrées nécessaires dans le fichier hosts pour bloquer les liens de suivi Microsoft. Vous pouvez vérifier en ouvrant le fichier hosts avec un éditeur de texte.
    

Assurez-vous de respecter toutes les autorisations nécessaires et de comprendre les implications de l'exécution de ce script sur votre système. En cas de doute, consultez la documentation PowerShell ou le dépôt GitHub du projet pour des informations supplémentaires.

Objectifs
------------------

L'objectif principal de ce projet est d'offrir aux utilisateurs une solution facile à déployer pour bloquer les tentatives de suivi de liens par Microsoft. En modifiant le fichier hosts, l'utilisateur renforce sa confidentialité en limitant la collecte de données par ces mécanismes de suivi.

Comment Contribuer
------------------

Les contributions à ce projet sont les bienvenues. Si vous identifiez de nouvelles URLs de suivi Microsoft ou si vous avez des suggestions d'amélioration, n'hésitez pas à ouvrir une demande d'extraction (pull request) ou à signaler un problème (issue) sur GitHub.

Merci de contribuer à renforcer la confidentialité en ligne tout en respectant les normes éthiques et légales.
