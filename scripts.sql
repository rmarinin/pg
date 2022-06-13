CREATE TABLE public.album (
	id serial4 NOT NULL,
	name_album varchar(50) NULL,
	"year" date NOT NULL,
	CONSTRAINT album_pk PRIMARY KEY (id)
);


CREATE TABLE public.artist (
	id serial4 NOT NULL,
	"name" varchar NOT NULL,
	lastname varchar NULL,
	CONSTRAINT artist_pk PRIMARY KEY (id)
);


CREATE TABLE public.genre (
	id serial4 NOT NULL,
	name_genre varchar NOT NULL,
	CONSTRAINT genre_pk PRIMARY KEY (id)
);


CREATE TABLE public.track (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	duration interval minute to second NOT NULL,
	album int4 NOT NULL,
	CONSTRAINT track_pk PRIMARY KEY (id),
	CONSTRAINT track_fk FOREIGN KEY (album) REFERENCES public.album(id)
);


CREATE TABLE public."artist-genre" (
	id_artist int4 NOT NULL,
	id_genre int4 NOT NULL,
	CONSTRAINT artist_genre_pk PRIMARY KEY (id_artist, id_genre),
	CONSTRAINT artist_genre_fk FOREIGN KEY (id_artist) REFERENCES public.artist(id),
	CONSTRAINT artist_genre_fk_1 FOREIGN KEY (id_genre) REFERENCES public.genre(id)
);


CREATE TABLE public."album-artist" (
	id_album int4 NOT NULL,
	id_artist int4 NOT NULL,
	CONSTRAINT album_artist_pk PRIMARY KEY (id_album, id_artist),
	CONSTRAINT album_artist_fk FOREIGN KEY (id_album) REFERENCES public.album(id),
	CONSTRAINT album_artist_fk_1 FOREIGN KEY (id_artist) REFERENCES public.artist(id)
);


CREATE TABLE public.songster (
	id serial4 NOT NULL,
	"Name" varchar(50) NOT NULL,
	"year" date NOT NULL,
	CONSTRAINT songster_pk PRIMARY KEY (id)
);


CREATE TABLE public."track-songster" (
	id_track int4 NOT NULL,
	id_songster int4 NOT NULL,
	CONSTRAINT track_songster_pk PRIMARY KEY (id_track, id_songster),
	CONSTRAINT track_songster_fk FOREIGN KEY (id_track) REFERENCES public.track(id),
	CONSTRAINT track_songster_fk_1 FOREIGN KEY (id_songster) REFERENCES public.songster(id)
);
