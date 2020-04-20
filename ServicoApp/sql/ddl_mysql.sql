CREATE TABLE tb_cidade(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL
	);

CREATE TABLE tb_contato(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	telefone VARCHAR(13) NOT NULL,
	descricao TEXT NULL
	);

CREATE TABLE tb_endereco(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	logradouro VARCHAR(65) NOT NULL,
	numero VARCHAR(4) NOT NULL,
	complemento VARCHAR(45) NULL,
	fk_id_cidade INTEGER NOT NULL,
	estado VARCHAR(45) NOT NULL,
	cep VARCHAR(8) NOT NULL,
	ponto_referencia VARCHAR(65) NULL,
	FOREIGN KEY(fk_id_cidade) REFERENCES tb_cadade(id)
	);

CREATE TABLE tb_empresa(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	natureza VARCHAR(255) NOT NULL,
	fk_id_endereco INTEGER NOT NULL,
	email VARCHAR(255) NOT NULL,
	telefone VARCHAR(13) NOT NULL,
	instagram VARCHAR(255) NULL,
	facebook VARCHAR(255) NULL,
	FOREIGN KEY(fk_id_endereco) REFERENCES tb_endereco(id)
	);

CREATE TABLE tb_produto(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	descricao VARCHAR(45) NOT NULL,
	preco NUMERIC(12,2) NOT NULL
	);

CREATE TABLE tb_empresa_produto(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	fk_id_empresa INTEGER NOT NULL,
	fk_id_produto INTEGER NOT NULL,
	FOREIGN KEY(fk_id_empresa) REFERENCES tb_empresa(id),
	FOREIGN KEY(fk_id_produto) REFERENCES tb_produto(id)
	);

	INSERT INTO tb_cidade(nome) VALUES
	('Água Branca'),
	('Aguiar'),
	('Alagoa Grande'),
	('Alagoa Nova'),
	('Alagoinha'),
	('Alcantil'),
	('Algodão de Jandaíra'),
	('Alhandra'),
	('Amparo'),
	('Aparecida'),
	('Araçagi'),
	('Arara'),
	('Araruna'),
	('Areia'),
	('Areia de Baraúnas'),
	('Areial'),
	('Aroeiras'),
	('Assunção'),
	('Baía da Traição'),
	('Bananeiras'),
	('Baraúna'),
	('Barra de Santa Rosa'),
	('Barra de Santana'),
	('Barra de São Miguel'),
	('Bayeux'),
	('Belém'),
	('Belém do Brejo do Cruz'),
	('Bernardino Batista'),
	('Boa Ventura'),
	('Boa Vista'),
	('Bom Jesus'),
	('Bom Sucesso'),
	('Bonito de Santa Fé'),
	('Boqueirão'),
	('Borborema'),
	('Brejo do Cruz'),
	('Brejo dos Santos'),
	('Caaporã'),
	('Cabaceiras'),
	('Cabedelo'),
	('Cachoeira dos Índios'),
	('Cacimba de Areia'),
	('Cacimba de Dentro'),
	('Cacimbas'),
	('Caiçara'),
	('Cajazeiras'),
	('Cajazeirinhas'),
	('Caldas Brandão'),
	('Camalaú'),
	('Campina Grande'),
	('Campo de Santana'),
	('Capim'),
	('Caraúbas'),
	('Carrapateira'),
	('Casserengue'),
	('Catingueira'),
	('Catolé do Rocha'),
	('Caturité'),
	('Conceição'),
	('Condado'),
	('Conde'),
	('Congo'),
	('Coremas'),
	('Coxixola'),
	('Cruz do Espírito Santo'),
	('Cubati'),
	('Cuité'),
	('Cuité de Mamanguape'),
	('Cuitegi'),
	('Curral de Cima'),
	('Curral Velho'),
	('Damião'),
	('Desterro'),
	('Diamante'),
	('Dona Inês'),
	('Duas Estradas'),
	('Emas'),
	('Esperança'),
	('Fagundes'),
	('Frei Martinho'),
	('Gado Bravo'),
	('Guarabira'),
	('Gurinhém'),
	('Gurjão'),
	('Ibiara'),
	('Igaracy'),
	('Imaculada'),
	('Ingá'),
	('Itabaiana'),
	('Itaporanga'),
	('Itapororoca'),
	('Itatuba'),
	('Jacaraú'),
	('Jericó'),
	('João Pessoa'),
	('Juarez Távora'),
	('Juazeirinho'),
	('Junco do Seridó'),
	('Juripiranga'),
	('Juru'),
	('Lagoa'),
	('Lagoa de Dentro'),
	('Lagoa Seca'),
	('Lastro'),
	('Livramento'),
	('Logradouro'),
	('Lucena'),
	('Mãe d`Água'),
	('Malta'),
	('Mamanguape'),
	('Manaíra'),
	('Marcação'),
	('Mari'),
	('Marizópolis'),
	('Massaranduba'),
	('Mataraca'),
	('Matinhas'),
	('Mato Grosso'),
	('Maturéia'),
	('Mogeiro'),
	('Montadas'),
	('Monte Horebe'),
	('Monteiro'),
	('Mulungu'),
	('Natuba'),
	('Nazarezinho'),
	('Nova Floresta'),
	('Nova Olinda'),
	('Nova Palmeira'),
	('Olho d`Água'),
	('Olivedos'),
	('Ouro Velho'),
	('Parari'),
	('Passagem'),
	('Patos'),
	('Paulista'),
	('Pedra Branca'),
	('Pedra Lavrada'),
	('Pedras de Fogo'),
	('Pedro Régis'),
	('Piancó'),
	('Picuí'),
	('Pilar'),
	('Pilões'),
	('Pilõezinhos'),
	('Pirpirituba'),
	('Pitimbu'),
	('Pocinhos'),
	('Poço Dantas'),
	('Poço de José de Moura'),
	('Pombal'),
	('Prata'),
	('Princesa Isabel'),
	('Puxinanã'),
	('Queimadas'),
	('Quixabá'),
	('Remígio'),
	('Riachão'),
	('Riachão do Bacamarte'),
	('Riachão do Poço'),
	('Riacho de Santo Antônio'),
	('Riacho dos Cavalos'),
	('Rio Tinto'),
	('Salgadinho'),
	('Salgado de São Félix'),
	('Santa Cecília'),
	('Santa Cruz'),
	('Santa Helena'),
	('Santa Inês'),
	('Santa Luzia'),
	('Santa Rita'),
	('Santa Teresinha'),
	('Santana de Mangueira'),
	('Santana dos Garrotes'),
	('Santarém'),
	('Santo André'),
	('São Bentinho'),
	('São Bento'),
	('São Domingos de Pombal'),
	('São Domingos do Cariri'),
	('São Francisco'),
	('São João do Cariri'),
	('São João do Rio do Peixe'),
	('São João do Tigre'),
	('São José da Lagoa Tapada'),
	('São José de Caiana'),
	('São José de Espinharas'),
	('São José de Piranhas'),
	('São José de Princesa'),
	('São José do Bonfim'),
	('São José do Brejo do Cruz'),
	('São José do Sabugi'),
	('São José dos Cordeiros'),
	('São José dos Ramos'),
	('São Mamede'),
	('São Miguel de Taipu'),
	('São Sebastião de Lagoa de Roça'),
	('São Sebastião do Umbuzeiro'),
	('Sapé'),
	('Seridó'),
	('Serra Branca'),
	('Serra da Raiz'),
	('Serra Grande'),
	('Serra Redonda'),
	('Serraria'),
	('Sertãozinho'),
	('Sobrado'),
	('Solânea'),
	('Soledade'),
	('Sossêgo'),
	('Sousa'),
	('Sumé'),
	('Taperoá'),
	('Tavares'),
	('Teixeira'),
	('Tenório'),
	('Triunfo'),
	('Uiraúna'),
	('Umbuzeiro'),
	('Várzea'),
	('Vieirópolis'),
	('Vista Serrana'),
	('Zabelê');
