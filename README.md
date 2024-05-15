# Mise en conteneur (ou "dockerisation") d'une application reactjs

## Création de l'application reactjs avec la commande suivante:
npx create-react-app reactjs-with-docker
## Accès au repertoire reactjs-with-docker par la commande suivante: cd reactjs-with-docker
## Affichage du contenu du repertoire reactjs-with-docker
ls

## Remplaçons le contenu de la page d'accueil par le contenu suivant:
reactjs with docker by Aliyou BINATE

## Mise en place du fichier Dockerfile
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/a1ce4b1d-7027-4a50-befc-cf4ad1978bd9)

###### Ne pas oublier la création du fichier .dockerignore contenant node_modules

## Création de l'image avec la commande suivante: 
docker build -t monimagetest .
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/1961f6e6-e75c-4d79-b326-5e9aa1bab862)

## Création du conteneur à partir de l'image monimagetest:v3
sudo docker run -p 8083:3000 monimagetest:v3
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/5e18d23b-d34b-4be1-bb3f-12d795589072)



## Mise en place de la redirection de port
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/0be1eb04-1b62-4438-90de-abc814ceec46)

## Affichage du site dans le navigateur de ma machine physique
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/b8ac441c-61a8-4e74-a394-63b23b456c88)







