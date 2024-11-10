# Utiliser une image officielle Node.js comme image de base
FROM node:20.9.0-bullseye-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json à partir du bon répertoire
COPY ianna-project-exam/package*.json ./

# Installer uniquement les dépendances de production
RUN npm install --only=production

# Copier tous les fichiers du projet dans le conteneur
COPY ianna-project-exam/ .

# Exposer le port sur lequel l'application s'exécute
EXPOSE 8080

# Définir la commande par défaut pour démarrer l'application
CMD ["npm", "start"]