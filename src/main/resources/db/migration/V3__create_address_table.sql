create table ADDRESS (
    ID int not null,
    STREET varchar(100) not null,
    ZIP varchar(4) not null
);

insert into ADDRESS (ID, STREET, ZIP) values (1, 'My Street', '0001');
insert into ADDRESS (ID, STREET, ZIP) values (2, 'Other Street', '0002');
insert into ADDRESS (ID, STREET, ZIP) values (3, 'Mission blv', '0003');