create database sql_horse;
use sql_horse;
  
-- this section is showing all the data that belongs to the horse table  

create table horse  
	 (horse_ID           varchar(5),
     hname               varchar(10)     not null, 
     gender              varchar(10)      not null,
     register_number     int             not null,
     purchase_date       date            not null,   
     purchase_price      varchar(6),    
     primary key (horse_ID) 
     );  
     
     -- this section highlights the data that belongs to the person table and the foreign key which is horse_ID
     
     create table person  
     (person_ID          varchar(5)       not null,
     pname               varchar(10)      not null, 
     address             varchar(30)      not null,
     phone               varchar(15)      not null,
     horse_ID            varchar(5),
     primary key (person_ID),
     foreign key (horse_ID) references horse(horse_ID)
     );
     
     -- This section is the entry table and the data needed for all the entries as well as the foreign key which is the person_ID
     
     create table entry
     (entry_ID            varchar(5)     not null,
     finish_position      varchar(5)      not null,
     gate_position        varchar(5)      not null,
     person_ID          varchar(5),
     primary key (entry_ID),
     foreign key (person_ID) references person(person_ID)
     );  
     
     -- this section indicates the data that belongs to the stable table that is created and the entry_ID as the foreign key.
     
     create table stable 
     (stable_ID            varchar(5)      not null,
     name                  varchar(10)     not null,
     phone                 varchar(15)     not null,
     entry_ID              varchar(5)      not null,
     primary key (stable_ID),
     foreign key (entry_ID) references entry(entry_ID) 
     );
     
     -- This section highlights the data that belongs to the trainer table including the foreign key as person_ID
     
     create table trainer
     (trainer_ID           varchar(5)      not null,
     salary                varchar(6)      not null,
	 person_ID             varchar(5)      not null,
     primary key (trainer_ID),
     foreign key (person_ID) references person(person_ID)
     );
     
     -- This section is showing all the data that belongs to the jockey table with the foreign key being the person_ID
     
     create table jockey 
     (jockey_ID             varchar(5)     not null,
	 weight                 varchar(5)     not null,
	 weight_date            varchar(10)    not null,
     person_ID              varchar(5)     not null,
     primary key (jockey_ID),
     foreign key (person_ID) references person(person_ID)
     );
     
     -- This section highlights the race_schedule table and all the data that belongs to this table, with the foreign key being the race_ID. 
     
     create table race_schedule 
     (raceschedule_ID      varchar(5)     not null,
     race_date             varchar(6)     not null,
     race_ID               varchar(5)     not null,
     primary key (raceschedule_ID), 
     foreign key (race_ID) references race(race_ID)   
     );
     
     -- This section shows the data that belongs to the race table with the foreign key being the entry_ID.
     
     create table race
     (race_ID            varchar(5)      not null,
	 purse               int             not null,
	 entry_ID            varchar(5)       not null,
	 primary key (race_ID),
	 foreign key (entry_ID) references entry(entry_ID)
     );
     
     -- This section highlights all the values that have been added into the table 
     
insert into horse values ('51250', 'Knight', 'Male', '293495', '1.12.21', '20,000'); 
insert into horse values ('10567', 'Lucy', 'Female', '490233', '3.12.21','23,000');
insert into horse values ('70675', 'Mary', 'Female', '843242', '1.12.21', '22,000');
insert into horse values ('30789', 'Legacy', 'Female', '394904', '4.12.21', '21,000');
insert into horse values ('50562', 'Terry', 'Male', '394825', '2.12.21', '24,000');
insert into horse values ('65430',  'Mike', 'Male', '834092', '3.12.21', '20,000');
insert into horse values ('45231', 'Armour', 'Male', '983434', '5.12.21', '22,000');
insert into horse values ('98564', 'Joanne' , 'Female', '743552', '4.12.21','21,000');
insert into horse values ('46382', 'Atomic', 'Male', '346983', '1.12.21', '20,000');
insert into horse values ('65434', 'Amber', 'Female', '984787', '5.12.21', '22,000');
insert into horse values ('24256', 'Atlantis', 'Female', '873492','2.12.21', '23,000');
insert into horse values ('35261', 'Hammer', 'Male', '745983', '4.12.21', '22,000'); 
insert into horse values ('56372', 'Lauren', 'Female', '374854', '3.12.21', '21,000');
insert into horse values ('65472', 'Bolt', 'Male', '736424', '1.12.21', '20,000');
insert into horse values ('98374', 'Sue', 'Female', '734688', '5.12.21', '23,000'); 
insert into person values ('57738', '51250', 'Smith', '3 western', '0794637284');
insert into person values ('45425', '10567', 'Walker', '43 Grove Lane', '0791237438');
insert into person values ('94743', '70675', 'May', '745 Westminister', 0798456376);
insert into person values ('76435', '30789', 'Taylor', '5 Wood Lane', '0746374783');
insert into person values ('36789', '50562', 'Shaw', '89 Trent', '0743718379');
insert into person values ('12783', '65430', 'Kaur', '222 Popular', '0797347273');
insert into person values ('98734', '45231', 'Paul', '23 Field', '0747364829');
insert into person values ('98372', '98564',  'Lawrence', '356 Acorn', '0796347623');
insert into person values ('35783', '46382', 'Read', '12 Adams Street', '0748747643'); 
insert into person values ('59834', '65434', 'Cole', '54 Albert', '0793784682');
insert into person values ('75832', '24256', 'Noel', '324 Bishosps', '0749848509');
insert into person values ('48392', '35261', 'Gill', '12 Canal', '0798479875'); 
insert into person values ('98123', '56372', 'Fernandez', '90 Dorset', '0749834589');
insert into person values ('23875', '65472', 'Riley', '76 Chester', '0794783388');
insert into person values ('12983', '98374', 'Beck', '39 Elm Street', '0749834893'); 
insert into entry values ('84957', '57738', '3', '5');   
insert into entry values ('53435', '45425' '5', '15'); 
insert into entry values ('82374', '94743', '8', '4');	
insert into entry values ('94852', '76435', '1', '2');   
insert into entry values ('85290', '36789', '6', '14');
insert into entry values ('85253', '12783', '4', '12');   
insert into entry values ('84592', '98734', '9', '1'); 
insert into entry values ('93238', '98372', '15', '8');
insert into entry values ('82378', '35783', '7', '11');
insert into entry values ('23844', '59834', '10', '13');
insert into entry values ('95892', '75832', '11', '3');
insert into entry values ('83532', '48392', '12', '6');
insert into entry values ('39542', '98123', '14', '7');
insert into entry values ('83835', '23875', '13', '5');
insert into entry values ('93552', '12983', '2', '9');
insert into stable values ('93456', '51250', 'Stable 1', '0786425569');
insert into stable values ('45326', '10567', 'Stable 2', '0754367899');
insert into stable values ('67854', '70675', 'Stable 3', '0756412678');
insert into stable values ('93452', '30789', 'Stable 4', '0745327890');
insert into stable values ('86534', '50562', 'Stable 5', '0784536832');
insert into stable values ('48950', '65430', 'Stable 6', '0748347832');
insert into stable values ('38742', '45231', 'Stable 7', '0797349292');
insert into stable values ('83924', '98564', 'Stable 8', '0793787429');
insert into stable values ('63742', '46382', 'Stable 9', '0748475234');
insert into stable values ('29384', '65434', 'Stable 10', '0793748234');
insert into stable values ('37463', '24256', 'Stable 11', '0743847233');
insert into stable values ('58439', '35261', 'Stable 12', '0797384824');
insert into stable values ('74823', '56372', 'Stable 13', '0748454234');
insert into stable values ('83472', '65472', 'Stable 14', '0797487783');
insert into stable values ('73824', '98374', 'Stable 15', '0747583442');
insert into trainer values ('65742', '57738', '30,000');
insert into trainer values ('56432', '45425', '30,000');  
insert into trainer values ('78342', '94743', '30,000');
insert into trainer values ('24356', '76435', '30,000');
insert into trainer values ('36492', '36789', '30,000');
insert into trainer values ('46273', '12783', '30,000');
insert into trainer values ('47324', '98734', '30,000');
insert into trainer values ('83402', '98372', '30,000');
insert into trainer values ('39849', '35783', '30,000'); 
insert into trainer values ('83743', '59834', '30,000');
insert into trainer values ('73482', '75832', '30,000');
insert into trainer values ('27362', '48392', '30,000');
insert into trainer values ('26347', '98123', '30,000');
insert into trainer values ('12737', '23875', '30,000');
insert into trainer values ('36487', '12983', '30,000');
insert into jockey values ('68334', '57738', '45kg', '01.08.2022');
insert into jockey values ('58323', '45425', '50kg', '01.09.2022');
insert into jockey values ('32849', '94743', '48kg', '01.08.2022');
insert into jockey values ('52435', '76435', '46kg', '01.07.2022');
insert into jockey values ('63472', '36789', '47kg', '01.08.2022');
insert into jockey values ('23445', '12783', '50kg', '01.09.2022');
insert into jockey values ('87543', '98734', '49kg', '01.05.2022');
insert into jockey values ('22355', '98372', '45kg', '01.06.2022');
insert into jockey values ('86759', '35783', '50kg', '01.09.2022');
insert into jockey values ('34251', '59834', '50kg', '01.08.2022');
insert into jockey values ('39087', '75832', '48kg', '01.09.2022');
insert into jockey values ('65342', '48392', '47kg', '01.07.2022');
insert into jockey values ('34256', '98123', '49kg', '01.09.2022');
insert into jockey values ('98631', '23875', '46kg', '01.06.2022');
insert into jockey values ('23345', '12983', '49kg', '01.09.2022');
insert into race_schedule values ('78324', '28498', '02.08.2022');
insert into race_schedule values ('86427', '72873', '02.08.2022');
insert into race_schedule values ('32642', '28749', '02.08.2022');
insert into race_schedule values ('26549', '73468', '02.08.2022');
insert into race_schedule values ('73902', '87348', '02.08.2022');
insert into race_schedule values ('39487', '64738', '02.08.2022');
insert into race_schedule values ('72649', '73992', '02.08.2022');
insert into race_schedule values ('17430', '98374', '02.08.2022');
insert into race_schedule values ('34822', '89493', '02.08.2022');
insert into race_schedule values ('83702', '94744', '02.08.2022');
insert into race_schedule values ('83493', '73429', '02.08.2022');
insert into race_schedule values ('90389', '83247', '02.08.2022'); 
insert into race_schedule values ('74589', '92383', '02.08.2022');
insert into race_schedule values ('19335', '71823', '02.08.2022');
insert into race_schedule values ('92384', '67832', '02.08.2022');
insert into race values ('28498','£100'  , '84957');
insert into race values ('72873', '£30'  , '53435');
insert into race values ('28749', '£1000' , '82374');
insert into race values ('87348', '£200' , '94852');
insert into race values ('64738', '£10' , '85290');
insert into race values ('73992', '£250' , '85253');
insert into race values ('98374', '£500' , '84592');
insert into race values ('89493', '£10,000' , '93238');
insert into race values ('94744', '£20' , '82378');
insert into race values ('73429', '£100' , '23844'); 
insert into race values ('83247', '£1000' , '95892');
insert into race values ('92383', '£50' , '83532');
insert into race values ('71823', '£5000' , '39542');
insert into race values ('67832', '£100' , '83835');
insert into race values ('73846', '£50' , '93552');

select * from horse 
where horse_ID=51250









 


 


