CREATE TABLE IF NOT EXISTS muallif(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	ism TEXT,
	familiya TEXT,
	tug_yil INTEGER
);

CREATE TABLE IF NOT EXISTS janrlar(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	janr_nomi TEXT,
	tavsif TEXT
);

CREATE TABLE IF NOT EXISTS kitoblar(
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	nomi TEXT,
	muallif_id INTEGER,
	janr_id INTEGER,
	nashr_yili INTEGER,
	FOREIGN KEY (muallif_id) REFERENCES muallif(id) ON DELETE CASCADE,
	FOREIGN KEY (janr_id) REFERENCES janrlar(id) ON DELETE CASCADE
);


INSERT INTO muallif
(ism, familiya, tug_yil)
VALUES
('Alisher', 'Navoiy', 1441),
('Abdulla', 'Qodiriy', 1894),
('Oybek', 'Malikov', 1905),
('Gofur', 'Gulom', 1903),
('Hamsa', 'Hakimzoda', 1889);

INSERT INTO janrlar
(janr_nomi, tavsif)
VALUES
('Sheriat', 'Paetik asarlar'),
('Roman', 'Uzun badiy asar'),
('Hikoya', 'Qisqa badiiy asar'),
('Dramma', 'Sahna asari'),
('Dostonlar', 'Epik asarlar');

INSERT INTO kitoblar
(nomi, muallif_id, janr_id, nashr_yili)
VALUES
('Xamsa', 3, 2, 1485),
('Otkan kunlar', 1, 5, 1925),
('Quyosh qaytmaydi', 5, 1, 1958),
('Shum bola', 4, 3, 1940),
('Yodgor', 2, 4, 1914);




