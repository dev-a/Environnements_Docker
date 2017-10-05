# Environnement de Dev Docker pour cyberchef
# Comment l'utiliser 

## construire le conteneur (a executer depuis le repertoire contenant le dockerfile)
> docker build -t dev-a/cyberchef .


## Lancer le conteneur
> docker run -d -p 8000:8000 dev-a/cyberchef 

## Compiler cyberchef
>docker exec -it $(docker ps -q -f ancestor=dev-a/cyberchef) sh

> cd mnt/CyberChef/

> grunt prod

voir aussi : https://github.com/gchq/CyberChef/wiki/Getting-started
