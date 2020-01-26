CREATE DATABASE galaxy_app;

CREATE TABLE galaxy (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    image_url VARCHAR(650)
);

INSERT INTO galaxy (name, image_url)
VALUES ('Earth', 'https://i.guim.co.uk/img/media/3cd2819e1714a52d584e9b3c12a565e44b6c9b0c/0_315_3749_2250/master/3749.jpg?width=700&quality=85&auto=format&fit=max&s=45f2f265a4cc6486d41c329db1a828f5');

INSERT INTO galaxy (name, image_url)
VALUES ('Mars', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/1200px-OSIRIS_Mars_true_color.jpg');

INSERT INTO galaxy (name, image_url)
VALUES ('Venus', 'https://cdn.mos.cms.futurecdn.net/dzxtQ2dXH9SVKztJTbAXSA-320-80.jpg');


