CREATE DATABASE newyear2022 default charser 'UTF8';

CREATE TABLE staff (
  staff_id INT NOT NULL AUTO_INCREMENT,
  staff_name VARCHAR(45) NOT NULL,
  staff_surname VARCHAR(45) NOT NULL,
  staff_email VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE,
  UNIQUE INDEX `staff_email_UNIQUE` (`staff_email` ASC) VISIBLE);


  CREATE TABLE reward (
  reward_id INT NOT NULL AUTO_INCREMENT,
  reward_name VARCHAR(45) NULL,
  reward_volume INT NOT NULL,
  reward_status VARCHAR(45) NULL,
  PRIMARY KEY (`reward_id`));



  CREATE TABLE selected (
  selected_id INT NOT NULL AUTO_INCREMENT,
  staff_id INT NOT NULL,
  reward_id INT NOT NULL,
  PRIMARY KEY (`selected_id`),
  INDEX `staff_id_idx` (`staff_id` ASC) VISIBLE,
  INDEX `reward_id_idx` (`reward_id` ASC) VISIBLE,
  CONSTRAINT `staff_id`
    FOREIGN KEY (`staff_id`)
    REFERENCES staff (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `reward_id`
    FOREIGN KEY (`reward_id`)
    REFERENCES reward (`reward_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


INSERT INTO staff (`staff_name`, `staff_surname`,`staff_email`) VALUES ('Maria','Anders', 'maria.and@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Ana', 'Trujillo', 'ana.tru@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Antonio', 'Moreno', 'antonio.mor@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Thomas', 'Hardy', 'thomas.har@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Christina', 'Berglund', 'christina.ber@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Hanna', 'Moos', 'hanna.moo@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Laurence', 'Lebihans', 'laurence.leb@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Elizabeth', 'Lincoln', 'elizabeth.lin@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Victoria', 'Ashworth', 'victoria.ash@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Patricio', 'Simpson', 'patricio.sim@email.co.th');

INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Sven', 'Ottlieb', 'sven.ott@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Diego', 'Roel', 'diego.roe@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Roland', 'Mendel', 'roland.men@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Peter', 'Franken', 'peter.fra@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Paolo', 'Accorti', 'paolo.acc@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Eduardo', 'Saavedra', 'eduardo.saa@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Manuel', 'Pereira', 'manuel.per@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Mario', 'Pontes', 'mario.pon@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Yoshi', 'Latimer', 'yoshi.lat@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Patricia', 'McKenna', 'patricia.mck@email.co.th');


INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Helen', 'Bennett', 'helen.ben@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Philip', 'Cramer', 'philip.cra@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Daniel', 'Tonini', 'daniel.ton@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Yoshi', 'Tannamuri', 'yoshi.tan@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Felipe', 'Izquierdo', 'felipe.izq@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Simon', 'Crowther', 'simon.cro@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Marie', 'Bertrand', 'marie.ber@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Liz', 'Nixon', 'liz.nix@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Liu', 'Wong', 'liu.won@email.co.th');
INSERT INTO staff (`staff_name`, `staff_surname`, `staff_email`) VALUES ('Anabela', 'Domingues', 'anabela.dom@email.co.th');

INSERT INTO reward (`reward_name`, `reward_volume`, `reward_status`) VALUES ('Honda City RS 2020', '1', 'The first');
INSERT INTO reward (`reward_name`, `reward_volume`, `reward_status`) VALUES ('Vespa Primavera 150 I-GET', '2', 'The second');
INSERT INTO reward (`reward_name`, `reward_volume`, `reward_status`) VALUES ('MacBook Pro 14 ', '3', 'The third');
INSERT INTO reward (`reward_name`, `reward_volume`, `reward_status`) VALUES ('I Phone 13 Pro', '4', 'The fourth');
INSERT INTO reward (`reward_name`, `reward_volume`, `reward_status`) VALUES ('Gold jewelry 1 Bath', '5', 'The fifth');
INSERT INTO reward (`reward_name`, `reward_volume`, `reward_status`) VALUES ('Test Reward', '10', 'The sixth');