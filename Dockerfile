
# Das Ausgangs-Image fuer den Build des Images setzen
FROM node:14-alpine
# Arbeitsverzeichnis im Image fuer alle im
# Dockerfile nachfolgenden Befehle festlegen
WORKDIR /usr/src/app
# package*.json-Dateien kopieren
COPY package*.json ./

# Alle npm-Pakete in das Image installieren
RUN npm install
# Alle Dateien des lokalen Ordners im Image bereitstellen
COPY ./ ./

# Ein Build der Web-App im Image durchfuehren
RUN npm run build
# Container hoert auf nachfolgenden Port
EXPOSE 5000
# Umgebungsvariable HOST setzen
ENV HOST=0.0.0.0

# Beim Start des Containers die nachfolgenden Befehle ausfuehren
CMD [ "npm", "run", "preview" ]