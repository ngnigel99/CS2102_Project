--deletes all rows from the following
TRUNCATE Departments, Meeting_Rooms,Employees,Health_Declaration CASCADE;

insert into Departments (did, dname) values (1, 'Sales');
insert into Departments (did, dname) values (2, 'Training');
insert into Departments (did, dname) values (3, 'Product Management');
insert into Departments (did, dname) values (4, 'Marketing');
insert into Departments (did, dname) values (5, 'Business Development');
insert into Departments (did, dname) values (6, 'Services');
insert into Departments (did, dname) values (7, 'Sales');
insert into Departments (did, dname) values (8, 'Product Management');

insert into Meeting_Rooms (rname, floor, room, did) values ('Buffalo', 1, 1, 5);
insert into Meeting_Rooms (rname, floor, room, did) values ('Eagle', 1, 2, 5);
insert into Meeting_Rooms (rname, floor, room, did) values ('Snake', 1, 3, 4);
insert into Meeting_Rooms (rname, floor, room, did) values ('White-eye', 2, 1, 8);
insert into Meeting_Rooms (rname, floor, room, did) values ('Tortoise', 2, 2, 3);
insert into Meeting_Rooms (rname, floor, room, did) values ('Deer', 2, 3, 8);
insert into Meeting_Rooms (rname, floor, room, did) values ('Blue Racer', 3, 1, 4);
insert into Meeting_Rooms (rname, floor, room, did) values ('Crane', 3, 2, 5);
insert into Meeting_Rooms (rname, floor, room, did) values ('Gray', 3, 3, 2);
insert into Meeting_Rooms (rname, floor, room, did) values ('Stork', 4, 1, 1);
insert into Meeting_Rooms (rname, floor, room, did) values ('Cormorant', 4, 2, 3);
insert into Meeting_Rooms (rname, floor, room, did) values ('Heron', 4, 3, 1);
insert into Meeting_Rooms (rname, floor, room, did) values ('Fisher', 5, 1, 2);
insert into Meeting_Rooms (rname, floor, room, did) values ('Jackrabbit', 5, 2, 5);
insert into Meeting_Rooms (rname, floor, room, did) values ('Raven', 5, 3, 8);

insert into Employees (eid, ename, email, hp_contact, did, kind) values (1, 'Vittoria Duer', 'vduer0@purevolume.com', '603 715 8489', 1, 'Junior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (2, 'Guglielmo Stawell', 'gstawell1@yandex.ru', '716 666 7149', 8, 'Manager');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (3, 'Lynda Stobbs', 'lstobbs2@blogger.com', '237 334 9940', 2, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (4, 'Opalina Dodshun', 'ododshun3@privacy.gov.au', '322 401 2510', 2, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (5, 'Donnajean Barkhouse', 'dbarkhouse4@home.pl', '961 274 5102', 6, 'Junior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (6, 'Karleen Bransdon', 'kbransdon5@drupal.org', '634 865 4298', 2, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (7, 'Michal Woller', 'mwoller6@chron.com', '791 859 7247', 7, 'Manager');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (8, 'Ringo Scamerden', 'rscamerden7@gnu.org', '891 188 6028', 2, 'Manager');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (9, 'Ardella Pitchford', 'apitchford8@hibu.com', '784 448 9426', 4, 'Junior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (10, 'Meris Umpleby', 'mumpleby9@nbcnews.com', '982 244 9463', 3, 'Junior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (11, 'Eadie Pontain', 'epontaina@amazon.co.uk', '565 301 8711', 3, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (12, 'Karrie Hainey', 'khaineyb@marriott.com', '502 201 3182', 4, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (13, 'Terrence Swedeland', 'tswedelandc@dmoz.org', '144 638 7188', 6, 'Junior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (14, 'Chip Szymaniak', 'cszymaniakd@pinterest.com', '397 402 2477', 5, 'Junior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (15, 'Danette McLaine', 'dmclainee@earthlink.net', '908 898 2206', 8, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (16, 'Heindrick Morat', 'hmoratf@woothemes.com', '720 380 2236', 3, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (17, 'Angelica Curbishley', 'acurbishleyg@loc.gov', '318 874 7877', 2, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (18, 'Louisa Twede', 'ltwedeh@google.de', '751 725 5153', 5, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (19, 'Shep Prince', 'sprincei@craigslist.org', '106 394 4325', 2, 'Senior');
insert into Employees (eid, ename, email, hp_contact, did, kind) values (20, 'Erie Haythorne', 'ehaythornej@bigcartel.com', '493 627 4365', 6, 'Junior');

insert into Health_Declaration (eid, temp, fever, date) values (1, 38.0, true, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (2, 37.4, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (3, 36.3, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (4, 37.5, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (5, 36.2, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (6, 37.1, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (7, 36.7, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (8, 37.1, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (9, 37.9, true, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (10, 36.8, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (11, 36.7, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (12, 37.0, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (13, 36.2, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (14, 37.2, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (15, 37.8, true, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (16, 37.1, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (17, 37.8, true, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (18, 38.0, true, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (19, 36.4, false, '2021-10-24');
insert into Health_Declaration (eid, temp, fever, date) values (20, 37.2, false, '2021-10-24');