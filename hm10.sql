CREATE TABLE address (
id NUMBER,
country VARCHAR(15),
city VARCHAR(20),
CONSTRAINT ad_id_un UNIQUE (id)
);
DROP TABLE friends;
DROP TABLE address;
CREATE TABLE friends(
id NUMBER,
name VARCHAR(30),
email VARCHAR(20),
address_id NUMBER(20),
birthday DATE,
CONSTRAINT fr_fk FOREIGN KEY (address_id)
REFERENCES address(id) ON DELETE SET NULL,
CONSTRAINT ch CHECK (LENGTH(name) > 3)
);

CREATE UNIQUE INDEX fr_in1 ON friends (id);
ALTER TABLE friends ADD CONSTRAINT fr_id_pk PRIMARY KEY(id);
CREATE INDEX fr_email_in ON friends (email);
ALTER TABLE friends MODIFY(email CONSTRAINT fr_email_nn NOT NULL
);