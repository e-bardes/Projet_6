### Contenu du projet:
* Le projet est un site communautaire autour de l'escalade
* Les deux grandes sections du site sont:
  * l'emprunt de topos (livret contenant de nombreuses informations sur une région d'escalade) entre utilisateurs
  * la possibilité de visualiser et d'éditer de nombreuses informations à propos des spots d'escalade

### Languages, frameworks et technlogies utilisés:
* Back-end:
  * Java (JDK 11)
  * Servlet API
  * Spring Framework (injection de dépendances)
  * Spring Data Jpa 
  * Postgresql
* Front-end:
  * JSP (avec JSTL)
  * Bootstrap
  
### Procédure de déploiement du code:
1. Cloner le projet sur gitHub
2. Créer une base de données puis y insérer successivement le contenu de "P6_02_creation_tables.sql" puis "P6_03_insertion_donnees.sql"
3. Dans /src/main, créer un dossier resources et un fichier à l'intérieur nommé "parametres.properties" qui sera lu par le fichier "PersistenceJPAConfig.java" afin de se connecter à la base de données:
 * driverClassName: ce paramètre dépend de la base de données utilisée (org.postgresql.Driver pour postgresql)
 * username: le nom d'utilsateur (postgres par défaut)
 * password: le mot de passe
 * url: l'url d'accès qui diffère en fonction de la base de données choisie (jdbc:postgresql://localhost:5432/"nomDeLaBaseDeDonnees" pour postgresql)
4. Pour obtenir le .war, il faut exécuter la commande: "mvn package" à la racine du projet. Il sera situé dans le dossier /target.
5. [Installer Tomcat 9.0](https://tomcat.apache.org/download-90.cgi)
6. Fixer les variables d'environnements:
  * CATALINA_HOME (qui a pour valeur le répertoire du serveur)
  * JAVA_HOME (qui a pour valeur le jdk. Installer également le jdk 11 si ce n'est pas fait)
7. Mettre le war dans le dossier webapps du serveur tomcat
8. Dans le dossier bin , exécutez le fichier "startup.bat" ou "startup.sh" 
    (en fonction du système d'exploitation) pour démarrer le serveur.
9. Dans un navigateur internet, insérer: http://localhost:8080/"nomDuFichierWar"/accueil
