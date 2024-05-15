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

###### Ne pas oublier la création du fichier .dockerignore ayant pour contenu: node_modules

## Création de l'image avec la commande suivante: 
docker build -t monimagetest .
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/1961f6e6-e75c-4d79-b326-5e9aa1bab862)

## Création du conteneur à partir de l'image monimagetest:v3
sudo docker run -p 8083:3000 monimagetest:v3
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/5e18d23b-d34b-4be1-bb3f-12d795589072)



## Mise en place de la redirection de port (depuis Virtualbox)
### En effet, cette redirection de port permettra l'affichage du site sur le navigateur de la machine physique, bien que l'application soit lancée depuis un conteneur d'une machine virtuelle
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/a911877a-beaa-48c1-885c-1b940e2f4c99)

## Affichage du site dans le navigateur de ma machine physique
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/b8ac441c-61a8-4e74-a394-63b23b456c88)

## Déploiement de l'image sur le dépôt dockerhub
### Liste des images
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/9fd75dec-f0ba-439e-a511-cf3bb299bf86)

### Connexion au dépôt distant
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/57c2deb2-d454-4b99-8a24-b9bc95a54ced)

### Association d'un tag à l'image
sudo docker tag monimagetest:v3 alibinapi/monimagetest
### Déploiement de l'image sur le dépôt dockerhub
sudo docker push alibinapi/monimagetest

![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/9eb14af0-a5da-4c2b-9b86-f245d311f042)

### Image déployée sur dockerhub
![image](https://github.com/Aliyoub/reactjs-with-docker/assets/25158336/1ab5b8f5-e46f-4124-95d8-4569d469485a)



