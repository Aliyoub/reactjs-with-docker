# Mise en conteneur (ou "dockerisation") d'une application reactjs

## Création de l'application reactjs avec la commande suivante:
npx create-react-app reactjs-with-docker
## Accès au repertoire reactjs-with-docker par la commande suivante: cd reactjs-with-docker
## Affichage du contenu du repertoire reactjs-with-docker
ls

## Remplaçons le contenu de la page d'accueil par le contenu suivant:
reactjs with docker by Aliyou BINATE

## Création du fichier Dockerfile
###### Ne pas oublier la création du fichier .dockerignore contenant node-modules

## Création de l'image avec la commande suivante: 
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/32f927e6-be9f-4566-ad27-c8a9e930b671)

docker build -t monimagetest .

## Création du conteneur à partir de l'image monimagetest:v3
sudo docker run -p 8084:3000 monimagetest:v3


