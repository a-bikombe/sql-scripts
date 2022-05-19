CREATE TABLE film_dimension(
    `film_id` SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(128),
    PRIMARY KEY(`film_id`)
);

CREATE TABLE language_dimension(
    `language_id` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` CHAR(20),
    PRIMARY KEY(`language_id`)
);

CREATE TABLE film_language_fact(
	`film_id` SMALLINT(5) UNSIGNED NOT NULL,
    `language_id` TINYINT(3) UNSIGNED NOT NULL
);

SELECT f.film_id, f.title, l.language_id, l.name FROM film f, language l;
SELECT title, language_id FROM film;

INSERT INTO film_dimension(`film_id`, `title`) SELECT film_id, title FROM film;
INSERT INTO language_dimension(`language_id`, `name`) SELECT language_id, name FROM language;
INSERT INTO `film_language_fact`(`film_id`, `language_id`) SELECT f.film_id, l.language_id FROM film f, language l;