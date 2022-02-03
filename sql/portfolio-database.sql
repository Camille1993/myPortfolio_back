CREATE TABLE `project`
(
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `type` varchar(100),
  `description` longtext
);

CREATE TABLE `technologie`
(
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `language` varchar(255),
  `description` longtext
);

/* table de jointure car many-to-many relation*/
CREATE TABLE `project_techno`
(
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `project_id` int,
  `technologie_id` int,
    CONSTRAINT fk_project_id FOREIGN KEY (`project_id`)
    REFERENCES project(`id`),
    CONSTRAINT fk_techno_id FOREIGN KEY (`technologie_id`)
    REFERENCES technologie(`id`)
);

/* project */
INSERT INTO project (id, name, type, description)
VALUES (1, "Visite-A-Nantes", "informatique", "Un site crée en HTML5 et CSS3, avec un peu de vanilla JS. En équipe de 4, le but était de créer un site type blog sur une ville de notre choix. Nous avons choisi de faire un site recessant 4 lieux tourisiques que nous pensions important à visiter quand de passage sur Nantes");

INSERT INTO project (id, name, type, description)
VALUES (2, "WCS Weather", "informatique", "En équipe de 4, le but était de créer un site type application sur un sujet de notre choix. Le choix s'est porté sur faire une application permettant de savoir la qualité de l'air et la météo dans les villes ayant un campus de la Wild Code School. L'application à été faire en React JS en utilisant l'api OpenWeatherMap. La base de donnée et l'authentification sont gérés via supabase, le css crée via tailwindCSS et le déployement à été fait sur Netlify");

INSERT INTO project (id, name, type, description)
VALUES (3, "Arnold", "informatique", "En équipe de 4, le but était de créer un site type application mobile pour un client. Le sujet était de crée une application type Waze pour pièton : on peut voir la carte de la ville ou nous sommes et ainsi voir les incidents/ problèmes indiqués par d'autres utilisateurs et donc de pouvoir contourné les problèmes. L'application front est crée en ReactJS, le css géré par TailwindCSS. Le back est crée en NodeJS express, avec utilisation des JsonWebToken pour l'authentification, la base de donnée crée sur Postgresql. Le déployement est géré par Heroku");

INSERT INTO project (id, name, type, description)
VALUES (4, "Discover", "hackaton", "En équipe de 4, le but était de créer le site de notre choix sur le sujet de la musique en 48h. Nous avons fait une application permettant de dévouvrir des musiques/ artistes non ou peu connu selon le style de musique que nous préférons. L'application à été faire en React JS en utilisant des données statiques trouvé via l'api de deezer");

INSERT INTO project(id, name, type, description)
VALUES(5, "ManoManoSearch", "hackaton", "En équipe de 4, le but était de proposer une nouvelle feature pour le site ManoMano selon le sujet du future du e-commerce en 48h. Notre feature était de proposer un formulaire pour pouvoir décrire un projet et ainsi savoir quel sont les matériaux, outils et fournitures nécessaires à ce projet trouvable sur le site pricipale. ainsi que le prix total du projet");

INSERT INTO project(id, name, type, description)
VALUES(6, "Ma maison", "construction", "Construction de ma maison par Alliance Construction du coté de Clisson, 94m² sur une surface de 519m², fin des travaux prévu mi-juin");

/* technologie */
INSERT INTO technologie(id, name, language, description)
VALUES (1, "REACT JS", "JAVASCRIPT", "React est une bibliothèque JavaScript libre développée par Facebook depuis 2013. Le but principal de cette bibliothèque est de faciliter la création d'application web monopage, via la création de composants dépendant d'un état et générant une page HTML à chaque changement d'état");

INSERT INTO technologie(id, name, language, description)
VALUES (2, "NODE JS", "JAVASCRIPT", "Node.js est une plateforme logicielle libre en JavaScript, orientée vers les applications réseau évènementielles hautement concurrentes qui doivent pouvoir monter en charge. Elle utilise la machine virtuelle V8, la librairie libuv pour sa boucle d'évènements, et implémente sous licence MIT les spécifications CommonJS")

INSERT INTO technologie(id, name, language, description)
VALUES (3, "Express JS", "JAVASCRIPT", "Express.js est un framework pour construire des applications web basées sur Node.js. C'est de fait le framework standard pour le développement de serveur en Node.js");

INSERT INTO technologie(id, name, language, description)
VALUES (4, "HTML5", "HTML", "HTML signifie « HyperText Markup Language » qu'on peut traduire par « langage de balises pour l'hypertexte ». Il est utilisé afin de créer et de représenter le contenu d'une page web et sa structure.");

INSERT INTO technologie(id, name, language, description)
VALUES (5, "CSS3", "CSS", "Les CSS (Cascading Style Sheets en anglais, ou « feuilles de style en cascade ») sont le code utilisé pour mettre en forme une page web.");

INSERT INTO technologie(id, name, language, description)
VALUES (6, "supabase", NULL, "Supabase est une open-source alternative à Firebase. Cela donne l'accès a tout les service backend nécessaires pour construire un produit");

/* value table jointure*/
INSERT INTO project_techno(id, project_id, technologie_id)
VALUES(1, 1, 4), (2, 1, 5);
INSERT INTO project_techno(id, project_id, technologie_id)
VALUES(3, 2, 1), (4, 2, 4), (5, 2, 5), (6, 2, 6);
INSERT INTO project_techno(id, project_id, technologie_id)
VALUES(7, 3, 1), (8, 3, 2), (9, 3, 5), (10, 3, 3), (11, 3, 4);
INSERT INTO project_techno(id, project_id, technologie_id)
VALUES(12, 4, 1), (13, 4, 5), (14, 4, 4);
INSERT INTO project_techno(id, project_id, technologie_id)
VALUES(15, 5, 1), (16, 5, 4), (17, 5, 5);


