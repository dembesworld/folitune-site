---
title: Politique de confidentialité de FolliTune
---

# Politique de confidentialité de FolliTune

Dernière mise à jour : 21 novembre 2026

FolliTune est un lecteur de musique pour les fichiers audio déjà présents sur votre téléphone. Elle fonctionne sans compte, sans publicité et sans outil de mesure d'audience. Cette page décrit ce que l'app fait de vos données, sur Android comme sur iOS.

## Ce que l'app ne fait pas

- Elle ne crée pas de compte et ne demande ni nom, ni adresse e-mail, ni numéro.
- Elle ne contient aucun traqueur, aucune analytique, aucun rapport de plantage automatique, aucune publicité. Le fichier de configuration qu'elle lit au lancement ne contient aucun identifiant et ne permet pas de vous reconnaître.
- Elle ne vend, ne loue et ne partage aucune donnée.
- Elle ne lit pas vos contacts, votre position, vos photos (sauf celle que vous choisissez vous-même comme pochette) ni votre micro.

## Ce qui reste sur votre appareil

Tout ce que l'app retient est stocké localement, dans l'espace privé de l'app, et disparaît quand vous la désinstallez :

- la liste de vos morceaux, albums et artistes, lue depuis les fichiers audio de l'appareil (sur Android, depuis la médiathèque du système et les dossiers que vous laissez actifs ; sur iOS, depuis les fichiers que vous déposez dans l'app) ;
- vos favoris, vos playlists, vos préréglages d'égaliseur, le thème choisi, la dernière file de lecture et sa position ;
- l'historique d'écoute qui sert à la liste « Les plus écoutés » (un compteur par morceau, effaçable dans les réglages) ;
- les pochettes que vous choisissez ou que vous appliquez après une recherche en ligne ;
- une copie des infos précédentes d'un fichier dont vous modifiez le titre, l'artiste ou l'album, pour pouvoir les rétablir.

Quand vous modifiez les infos d'un morceau, le titre, l'artiste et l'album sont écrits dans le fichier audio lui-même, sur votre appareil. Sur Android 11 et plus, le système vous demande votre accord avant chaque écriture, sauf si vous activez le réglage facultatif « Modifier les fichiers sans confirmation ».

La fonction « Enregistrer une sauvegarde » écrit vos favoris, playlists, préréglages et historique dans un fichier que vous placez où vous voulez. Ce fichier est à vous ; l'app n'en garde pas de copie ailleurs.

## Ce qui part sur Internet, et seulement quand vous le demandez

Au lancement, l'app lit un petit fichier de configuration publié par son auteur sur GitHub Pages (version minimale prise en charge, état des services en ligne, accès au service Shazam). Cette lecture n'envoie rien d'autre que la requête elle-même ; l'hébergeur (GitHub) voit votre adresse IP, comme pour toute page web. Sans réseau, l'app utilise la dernière copie reçue et fonctionne normalement.

En dehors de cette lecture, l'app ne se connecte à aucun serveur toute seule. Trois actions, que vous déclenchez vous-même, envoient une requête :

| Action | Ce qui est envoyé | À qui |
|---|---|---|
| « Identifier le morceau » | Une signature sonore calculée sur l'appareil à partir d'un extrait d'une dizaine de secondes du fichier. Ni le fichier, ni son nom, ni votre identité. | ShazamKit, un service d'Apple. Sa politique : [apple.com/legal/privacy](https://www.apple.com/legal/privacy/) |
| Recherche de pochette, « Compléter les pochettes manquantes » | Le nom de l'album et de l'artiste (ou du morceau) tel qu'il est dans vos fichiers. | Deezer ([deezer.com/legal/personal-datas](https://www.deezer.com/legal/personal-datas)) puis iTunes Search, un service d'Apple |
| Application d'une pochette trouvée | Le téléchargement de l'image choisie. | Le même service |
| Lecture de la configuration (automatique, au lancement) | Rien : une simple lecture de fichier. | GitHub Pages ([docs.github.com/privacy](https://docs.github.com/site-policy/privacy-policies/github-general-privacy-statement)) |

Ces requêtes passent en HTTPS. L'app ne conserve pas les réponses au-delà de ce que vous appliquez (la pochette choisie, les infos que vous validez). Les services contactés voient, comme pour toute requête web, votre adresse IP.

## Permissions demandées

- **Android** : accès à la musique et aux fichiers audio (lecture de la bibliothèque) ; accès spécial « gestion des médias » et « emplacement des médias », facultatifs, uniquement si vous activez « Modifier les fichiers sans confirmation » ; Internet pour les trois actions ci-dessus ; service de premier plan pour continuer la lecture quand l'écran est éteint.
- **iOS** : accès à vos photos uniquement au moment où vous choisissez une image comme pochette ; mode audio en arrière-plan.

## Enfants

L'app ne vise pas les enfants et ne collecte aucune donnée, quel que soit l'âge de l'utilisateur.

## Modifications

Toute modification de cette politique sera publiée ici, avec sa date. L'app n'ayant pas de compte, elle ne peut pas vous prévenir autrement.

## Contact

Pour toute question : [dembesworld@gmail.com](mailto:dembesworld@gmail.com)
