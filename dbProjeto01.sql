CREATE TABLE usuarios(
id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	senha VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	tipo VARCHAR(10),
    notificacao BIT(1) NOT NULL
);

CREATE TABLE categorias(
	id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
	descricao VARCHAR(100) NOT NULL
);
CREATE TABLE postagens(
	id_postagem INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
	id_fk_user INTEGER NOT NULL,
	id_fk_categoria INTEGER NOT NULL,
	video VARCHAR(150) NOT NULL,
	titulo VARCHAR(100) NOT NULL,
	corpo TEXT,
	FOREIGN KEY(id_fk_user) REFERENCES usuarios(id),
	FOREIGN KEY(id_fk_categoria) REFERENCES categorias(id)
);
CREATE TABLE likes(
	id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
	id_fk_post INTEGER NOT NULL,
	id_fk_user INTEGER NOT NULL,
	FOREIGN KEY (id_fk_post) REFERENCES postagens(id_postagem),
	FOREIGN KEY (id_fk_user) REFERENCES usuarios(id)
);

CREATE TABLE comentarios(
	id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
	corpo TEXT NOT NULL,
	id_fk_post INTEGER NOT NULL,
	id_fk_user INTEGER NOT NULL,
	created_at TIMESTAMP,
	FOREIGN KEY (id_fk_post) REFERENCES postagens(id_postagem),
	FOREIGN KEY (id_fk_user) REFERENCES usuarios(id)
);

CREATE TABLE notificaos(
	id_notificacao INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_fk_post INTEGER NOT NULL,
	id_fk_user INTEGER NOT NULL,
	FOREIGN KEY (id_fk_post) REFERENCES postagens(id_postagem),
	FOREIGN KEY (id_fk_user) REFERENCES usuarios(id)
);
