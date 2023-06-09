DROP TABLE IF EXISTS building CASCADE;
DROP SEQUENCE IF EXISTS building_id_seq;
CREATE TABLE building
(
    id              long identity NOT NULL PRIMARY KEY,
    name            varchar(20)
);

DROP TABLE IF EXISTS room CASCADE;
DROP SEQUENCE IF EXISTS room_id_seq;
CREATE TABLE room
(
    id              long identity NOT NULL PRIMARY KEY,
    building_id     long NOT NULL,
    house_type      ENUM('GRYFFINDOR', 'HUFFLEPUFF', 'RAVENCLAW', 'SLYTHERIN') NOT NULL,
    room_condition  ENUM('RENOVATED', 'OLD', 'MESSY', 'UGLY') NOT NULL
);

DROP TABLE IF EXISTS picture CASCADE;
DROP SEQUENCE IF EXISTS picture_id_seq;
CREATE TABLE picture
(
    id              long identity NOT NULL PRIMARY KEY,
    building_id     long NOT NULL
);

DROP TABLE IF EXISTS student CASCADE;
DROP SEQUENCE IF EXISTS student_id_seq;
CREATE TABLE student
(
    id              long identity NOT NULL PRIMARY KEY,
    name            varchar(100) NOT NULL,
    house_type      ENUM('GRYFFINDOR', 'HUFFLEPUFF', 'RAVENCLAW', 'SLYTHERIN') NOT NULL,
    pet_type        ENUM('CAT', 'RAT', 'OWL', 'NONE') NOT NULL
);

DROP TABLE IF EXISTS resident CASCADE;
CREATE TABLE resident
(
    student_id      long NOT NULL PRIMARY KEY,
    room_id         long NOT NULL
);

DROP TABLE IF EXISTS recipe CASCADE;
CREATE TABLE recipe
(
    id              long identity NOT NULL PRIMARY KEY,
    name            varchar(100) NOT NULL
);

DROP TABLE IF EXISTS ingredients CASCADE;
CREATE TABLE ingredients
(
    recipe_id       long NOT NULL,
    ingredient      ENUM(
                        'abraxian hair',
                        'bat wing',
                        'cowbane',
                        'dragon blood',
                        'eel eye',
                        'flesh',
                        'goosegrass',
                        'haliwinkles',
                        'iguana blood',
                        'jewelweed',
                        'kelp',
                        'lavender',
                        'mandrake',
                        'newt',
                        'octopus powder',
                        'pearl dust',
                        'rat tail',
                        'scarab beetle',
                        'tar',
                        'unicorn blood',
                        'vervain',
                        'water'
                    ) NOT NULL
);

DROP TABLE IF EXISTS known_recipes CASCADE;
CREATE TABLE known_recipes
(
  student_id        long NOT NULL,
  recipe_id         long NOT NULL
);

ALTER TABLE room
    ADD FOREIGN KEY (building_id)
        REFERENCES building(id)
        ON DELETE SET NULL;

ALTER TABLE picture
    ADD FOREIGN KEY (building_id)
        REFERENCES building(id)
        ON DELETE SET NULL;

ALTER TABLE resident
    ADD FOREIGN KEY (student_id)
        REFERENCES student(id)
        ON DELETE CASCADE;

ALTER TABLE resident
    ADD FOREIGN KEY (room_id)
        REFERENCES room(id)
        ON DELETE CASCADE;

ALTER TABLE ingredients
    ADD FOREIGN KEY (recipe_id)
        REFERENCES recipe(id)
        ON DELETE CASCADE;

ALTER TABLE known_recipes
    ADD FOREIGN KEY (student_id)
        REFERENCES student(id)
        ON DELETE CASCADE;

ALTER TABLE known_recipes
    ADD FOREIGN KEY (recipe_id)
        REFERENCES recipe(id)
        ON DELETE CASCADE;