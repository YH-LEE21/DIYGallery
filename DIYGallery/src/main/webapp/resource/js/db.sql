CREATE TABLE item (
	bid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    author varchar not null,
	title VARCHAR NOT NULL,
    content varchar not null,
	img VARCHAR NOT NULL
);

CREATE TABLE board (
	bid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR NOT NULL,
	content varchar not null,
	day varchar NOT NULL
);

CREATE TABLE MEMBER (
    id    varchar not null PRIMARY KEY,
    pwd   VARCHAR NOT NULL,
    email varchar not null,
    phone VARCHAR NOT NULL
);