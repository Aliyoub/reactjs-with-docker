# Mise en conteneur (ou "dockerisation") d'une application reactjs

## Création de l'application reactjs avec la commande suivante:
npx create-react-app reactjs-with-docker
## Accès au repertoire reactjs-with-docker par la commande suivante: cd reactjs-with-docker
## Affichage du contenu du repertoire reactjs-with-docker
ls

## Remplaçons le contenu de la page d'accueil par le contenu suivant:
reactjs with docker by Aliyou BINATE

## Mise en place du fichier Dockerfile

![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/fe1a4dec-373a-4294-9ee7-da84ca9c021c)

###### Ne pas oublier la création du fichier .dockerignore contenant node-modules

## Création de l'image avec la commande suivante: 
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/1961f6e6-e75c-4d79-b326-5e9aa1bab862)


docker build -t monimagetest .

## Création du conteneur à partir de l'image monimagetest:v3
sudo docker run -p 8084:3000 monimagetest:v3


