CREATE SCHEMA trivial;
USE trivial;

CREATE TABLE preguntas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pregunta VARCHAR(1000) NOT NULL,
    opciones JSON NOT NULL,
    correcta VARCHAR(255) NOT NULL
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    puntaje INT DEFAULT 0
);

INSERT INTO preguntas (pregunta, opciones, correcta) VALUES
('¿Cuál es el dado más comúnmente usado en Dungeons & Dragons?', JSON_ARRAY('d6', 'd12', 'd20', 'd4'), 'd20'),
('¿En Magic: The Gathering, cuál es el color que representa la magia de la vida y la naturaleza?', JSON_ARRAY('Negro', 'Azul', 'Verde', 'Rojo'), 'Verde'),
('¿Qué Pokémon es conocido como la mascota de la franquicia?', JSON_ARRAY('Charizard', 'Bulbasaur', 'Pikachu', 'Jigglypuff'), 'Pikachu'),
('En El Señor de los Anillos, ¿qué criatura era Gollum antes de ser corrompido por el Anillo Único?', JSON_ARRAY('Un elfo', 'Un humano', 'Un hobbit', 'Un enano'), 'Un hobbit'),
('En Star Wars, ¿quién fue el maestro de Anakin Skywalker?', JSON_ARRAY('Obi-Wan Kenobi', 'Mace Windu', 'Yoda', 'Darth Sidious'), 'Obi-Wan Kenobi'),
('¿Cómo se llama el hermano de Mario en la saga de videojuegos?', JSON_ARRAY('Luigi', 'Wario', 'Bowser', 'Toad'), 'Luigi'),
('¿En qué año se lanzó el primer juego de Pokémon?', JSON_ARRAY('1993', '1996', '2000', '1989'), '1996'),
('¿Qué carta de Magic: The Gathering es famosa por su alto valor y rareza?', JSON_ARRAY('Black Lotus', 'Dark Ritual', 'Time Walk', 'Mox Emerald'), 'Black Lotus'),
('¿En Dungeons & Dragons, qué característica determina la cantidad de hechizos que un mago puede lanzar?', JSON_ARRAY('Fuerza', 'Sabiduría', 'Carisma', 'Inteligencia'), 'Inteligencia'),
('¿Cómo se llama el protagonista de The Legend of Zelda?', JSON_ARRAY('Zelda', 'Ganondorf', 'Epona', 'Link'), 'Link'),
('¿Cuál es el nombre del planeta natal de Superman?', JSON_ARRAY('Krypton', 'Tatooine', 'Asgard', 'Namek'), 'Krypton'),
('En la serie de anime Dragon Ball, ¿cómo se llama el ataque característico de Goku?', JSON_ARRAY('Kamehameha', 'Final Flash', 'Big Bang Attack', 'Rasengan'), 'Kamehameha'),
('¿Cuál de estos no es un superhéroe de Marvel?', JSON_ARRAY('Batman', 'Spider-Man', 'Iron Man', 'Thor'), 'Batman'),
('¿Cómo se llama el creador de Star Wars?', JSON_ARRAY('George Lucas', 'Steven Spielberg', 'J.J. Abrams', 'Ridley Scott'), 'George Lucas'),
('¿En qué película aparece el personaje Jack Sparrow?', JSON_ARRAY('Piratas del Caribe', 'Gladiador', 'Avatar', 'Harry Potter'), 'Piratas del Caribe'),
('¿Cuál es el villano principal en la saga de Harry Potter?', JSON_ARRAY('Voldemort', 'Sauron', 'Darth Vader', 'Grindelwald'), 'Voldemort'),
('¿Cuál es el nombre del mago más poderoso en El Señor de los Anillos?', JSON_ARRAY('Saruman', 'Radagast', 'Gandalf', 'Sauron'), 'Gandalf'),
('¿En qué videojuego aparece el personaje Arthur Morgan?', JSON_ARRAY('Red Dead Redemption 2', 'The Last of Us', 'GTA V', 'Far Cry 5'), 'Red Dead Redemption 2'),
('¿Cuál es el nombre del planeta natal de los Saiyajin en Dragon Ball?', JSON_ARRAY('Vegeta', 'Namek', 'Krypton', 'Tatooine'), 'Vegeta'),
('¿Quién creó el videojuego Minecraft?', JSON_ARRAY('Markus Persson', 'Shigeru Miyamoto', 'Hideo Kojima', 'Gabe Newell'), 'Markus Persson'),
('¿Cuál es el superhéroe con garras de adamantium en Marvel?', JSON_ARRAY('Wolverine', 'Deadpool', 'Hulk', 'Black Panther'), 'Wolverine'),
('¿En qué serie de anime aparece el personaje de Light Yagami?', JSON_ARRAY('Death Note', 'One Piece', 'Bleach', 'Naruto'), 'Death Note'),
('¿Cuál es el nombre del juego de cartas de Yu-Gi-Oh!?', JSON_ARRAY('Duel Monsters', 'Magic Cards', 'Battle Deck', 'Card Wars'), 'Duel Monsters'),
('¿Cómo se llama la escuela de magia en Harry Potter?', JSON_ARRAY('Hogwarts', 'Beauxbatons', 'Durmstrang', 'Ilvermorny'), 'Hogwarts'),
('¿Cuál es el villano principal en la saga The Legend of Zelda?', JSON_ARRAY('Ganondorf', 'Vaati', 'Zant', 'Dark Link'), 'Ganondorf'),
('¿En qué juego aparece el personaje Kratos?', JSON_ARRAY('God of War', 'Dark Souls', 'Elden Ring', 'The Witcher'), 'God of War'),
('¿Cuál es el nombre del villano principal en la saga de Metroid?', JSON_ARRAY('Ridley', 'Mother Brain', 'Dark Samus', 'Kraid'), 'Mother Brain'),
('¿Cómo se llama el primer juego de la saga Souls creado por FromSoftware?', JSON_ARRAY('Demon\'s Souls', 'Dark Souls', 'Bloodborne', 'Elden Ring'), 'Demon\'s Souls'),
('¿Cuál es el nombre del androide protagonista en Nier: Automata?', JSON_ARRAY('2B', '9S', 'A2', 'Kaine'), '2B'),
('¿Cuál de estos personajes es un Sith en Star Wars?', JSON_ARRAY('Mace Windu', 'Count Dooku', 'Qui-Gon Jinn', 'Yoda'), 'Count Dooku'),
('¿En qué videojuego puedes cazar monstruos gigantes con armas enormes?', JSON_ARRAY('Monster Hunter', 'Dark Souls', 'Shadow of the Colossus', 'God of War'), 'Monster Hunter'),
('¿Cómo se llama el elfo doméstico que ayuda a Harry Potter?', JSON_ARRAY('Dobby', 'Kreacher', 'Winky', 'Hokey'), 'Dobby'),
('¿Cuál de estos personajes no pertenece a la franquicia de Street Fighter?', JSON_ARRAY('Ryu', 'Sub-Zero', 'Chun-Li', 'Ken'), 'Sub-Zero'),
('¿Cuál es el nombre del mundo donde se desarrolla World of Warcraft?', JSON_ARRAY('Azeroth', 'Tamriel', 'Middle-earth', 'Thedas'), 'Azeroth'),
('¿Cómo se llama el creador de One Piece?', JSON_ARRAY('Eiichiro Oda', 'Masashi Kishimoto', 'Tite Kubo', 'Akira Toriyama'), 'Eiichiro Oda'),
('¿Cuál es el nombre del dragón en la historia de Beowulf?', JSON_ARRAY('Smaug', 'Fafnir', 'Grendel', 'Ancalagon'), 'Grendel'),
('¿Cuál es el nombre del protagonista de Hollow Knight?', JSON_ARRAY('El Caballero', 'Hornet', 'Zote', 'Grimm'), 'El Caballero'),
('¿En qué videojuego aparece el personaje Doom Slayer?', JSON_ARRAY('DOOM', 'Quake', 'Wolfenstein', 'Half-Life'), 'DOOM'),
('¿Cuál es el nombre del Pokémon de tipo Dragón que evoluciona de Dratini?', JSON_ARRAY('Dragonair', 'Salamence', 'Garchomp', 'Dragonite'), 'Dragonair'),
('¿Qué raza es Geralt de Rivia en The Witcher?', JSON_ARRAY('Humano', 'Elfo', 'Brujo', 'Vampiro'), 'Brujo'),
('¿Cuál de estos personajes pertenece a la saga de Castlevania?', JSON_ARRAY('Alucard', 'Dante', 'Sephiroth', 'Riku'), 'Alucard'),
('¿Cómo se llama la armadura de Tony Stark en Iron Man?', JSON_ARRAY('Hulkbuster', 'War Machine', 'Mark', 'Nano Suit'), 'Mark'),
('¿Qué videojuego popularizó la frase "The cake is a lie"?', JSON_ARRAY('Portal', 'Half-Life', 'Bioshock', 'Fallout'), 'Portal'),
('¿Cómo se llama la espada de Cloud en Final Fantasy VII?', JSON_ARRAY('Excalibur', 'Buster Sword', 'Masamune', 'Ragnarok'), 'Buster Sword'),
('¿En qué anime los personajes usan un cuaderno para matar personas?', JSON_ARRAY('Death Note', 'Tokyo Ghoul', 'Psycho-Pass', 'Attack on Titan'), 'Death Note'),
('¿Quién es el líder de los Autobots en Transformers?', JSON_ARRAY('Megatron', 'Bumblebee', 'Optimus Prime', 'Starscream'), 'Optimus Prime');
