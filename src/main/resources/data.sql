INSERT INTO building (NAME) VALUES ('Building no.1');
INSERT INTO building (NAME) VALUES ('Building no.2');
INSERT INTO building (NAME) VALUES ('Building no.3');
INSERT INTO building (NAME) VALUES ('Building no.4');
INSERT INTO building (NAME) VALUES ('Building no.5');

INSERT INTO picture (building_id) VALUES (1);
INSERT INTO picture (building_id) VALUES (1);
INSERT INTO picture (building_id) VALUES (2);
INSERT INTO picture (building_id) VALUES (2);
INSERT INTO picture (building_id) VALUES (2);
INSERT INTO picture (building_id) VALUES (3);
INSERT INTO picture (building_id) VALUES (4);
INSERT INTO picture (building_id) VALUES (4);
INSERT INTO picture (building_id) VALUES (4);
INSERT INTO picture (building_id) VALUES (4);
INSERT INTO picture (building_id) VALUES (5);

INSERT INTO recipe (name) VALUES('ageing potion');
INSERT INTO recipe (name) VALUES('felix felicis');
INSERT INTO recipe (name) VALUES('laxative potion');
INSERT INTO recipe (name) VALUES('oculus potion');
INSERT INTO recipe (name) VALUES('venomous tentaula juice');

INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 1, 'cowbane' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 1, 'eel eye' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 1, 'dragon blood' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 1, 'rat tail' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 1, 'kelp' );

INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 2, 'bat wing' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 2, 'pearl dust' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 2, 'tar' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 2, 'vervain' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 2, 'water' );

INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 3, 'lavender' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 3, 'mandrake' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 3, 'newt' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 3, 'scarab beetle' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 3, 'jewelweed' );

INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 4, 'flesh' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 4, 'iguana blood' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 4, 'octopus powder' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 4, 'unicorn blood' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 4, 'goosegrass' );

INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 5, 'cowbane' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 5, 'vervain' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 5, 'goosegrass' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 5, 'kelp' );
INSERT INTO ingredients (recipe_id, ingredient) VALUES ( 5, 'mandrake' );

-- The data below is already added in RoomCreator and StudentCreator
/*
INSERT INTO room (building_id, house_type, room_condition) VALUES (1, 'GRYFFINDOR', 'OLD');
INSERT INTO room (building_id, house_type, room_condition) VALUES (2, 'SLYTHERIN', 'MESSY');
INSERT INTO room (building_id, house_type, room_condition) VALUES (1, 'GRYFFINDOR', 'UGLY');
INSERT INTO room (building_id, house_type, room_condition) VALUES (3, 'HUFFLEPUFF', 'RENOVATED');
INSERT INTO room (building_id, house_type, room_condition) VALUES (1, 'HUFFLEPUFF', 'OLD');
INSERT INTO room (building_id, house_type, room_condition) VALUES (4, 'RAVENCLAW', 'UGLY');
INSERT INTO room (building_id, house_type, room_condition) VALUES (4, 'RAVENCLAW', 'UGLY');
INSERT INTO room (building_id, house_type, room_condition) VALUES (1, 'SLYTHERIN', 'OLD');
INSERT INTO room (building_id, house_type, room_condition) VALUES (5, 'SLYTHERIN', 'OLD');
*/

/*
INSERT INTO student (name, pet_type, house_type) VALUES ('Hermione Granger', 'CAT', 'GRYFFINDOR');
INSERT INTO student (name, pet_type, house_type) VALUES ('Harry Potter', 'OWL', 'GRYFFINDOR');
INSERT INTO student (name, pet_type, house_type) VALUES ('"Ron Weasley', 'RAT', 'GRYFFINDOR');
INSERT INTO student (name, pet_type, house_type) VALUES ('Neville LongBottom', 'NONE', 'GRYFFINDOR');

INSERT INTO student (name, pet_type, house_type) VALUES ('Draco Malfoy', 'NONE', 'SLYTHERIN');
INSERT INTO student (name, pet_type, house_type) VALUES ('Vincent Crabbe', 'NONE', 'SLYTHERIN');
INSERT INTO student (name, pet_type, house_type) VALUES ('Gregory Goyle', 'NONE', 'SLYTHERIN');
INSERT INTO student (name, pet_type, house_type) VALUES ('Tracey Davis', 'OWL', 'SLYTHERIN');

INSERT INTO student (name, pet_type, house_type) VALUES ('Hannah Abbott', 'NONE', 'HUFFLEPUFF');
INSERT INTO student (name, pet_type, house_type) VALUES ('Susan Bones', 'CAT', 'HUFFLEPUFF');
INSERT INTO student (name, pet_type, house_type) VALUES ('Zacharias Smith', 'OWL', 'HUFFLEPUFF');
INSERT INTO student (name, pet_type, house_type) VALUES ('James Tuckett', 'RAT', 'HUFFLEPUFF');

INSERT INTO student (name, pet_type, house_type) VALUES ('Roger Davies', 'NONE', 'RAVENCLAW');
INSERT INTO student (name, pet_type, house_type) VALUES ('Luna Lovegood', 'OWL', 'RAVENCLAW');
INSERT INTO student (name, pet_type, house_type) VALUES ('Felicity Eastchurch', 'OWL', 'RAVENCLAW');
INSERT INTO student (name, pet_type, house_type) VALUES ('Ethan Bexley', 'RAT', 'RAVENCLAW');
*/

/*
INSERT INTO resident (student_id, room_id) VALUES (1, 1);
INSERT INTO resident (student_id, room_id) VALUES (2, 3);
INSERT INTO resident (student_id, room_id) VALUES (3, 3);
INSERT INTO resident (student_id, room_id) VALUES (4, 3);
INSERT INTO resident (student_id, room_id) VALUES (5, 2);
INSERT INTO resident (student_id, room_id) VALUES (6, 2);
INSERT INTO resident (student_id, room_id) VALUES (7, 8);
INSERT INTO resident (student_id, room_id) VALUES (8, 8);
INSERT INTO resident (student_id, room_id) VALUES (9, 4);
INSERT INTO resident (student_id, room_id) VALUES (10, 4);
INSERT INTO resident (student_id, room_id) VALUES (11, 5);
INSERT INTO resident (student_id, room_id) VALUES (12, 5);
INSERT INTO resident (student_id, room_id) VALUES (13, 6);
INSERT INTO resident (student_id, room_id) VALUES (14, 7);
INSERT INTO resident (student_id, room_id) VALUES (15, 6);
INSERT INTO resident (student_id, room_id) VALUES (16, 6);
*/