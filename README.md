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
2. Pour obtenir le .war, à la racine du projet, exécuter la commande: mvn package
2. [Installer Tomcat 9.0](https://tomcat.apache.org/download-90.cgi)
3. Fixer les variables d'environnements:
  * CATALINA_HOME (qui a pour valeur le répertoire du serveur)
  * JAVA_HOME (qui a pour valeur le jdk. Installer également le jdk 11 si ce n'est pas fait)
4. Mettre le war dans le dossier webapps du serveur tomcat
5. Dans le dossier bin , exécutez le fichier "startup.bat" ou "startup.sh" 
    (en fonction du système d'exploitation) pour démarrer le serveur.
6. Dans un navigateur internet, insérer: http://localhost:8080/"nomDuFichierWar"/accueil
