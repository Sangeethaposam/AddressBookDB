-- UC1--
create database AddressBookService;
use AddressBookService;
-- UC2--
create table Address_Book(
firstname varchar(50) not null,
lastname varchar(50) not null,
address char(25) not null,
city char(25) not null,
state char(25) not null,
zip int not null,
phonenumber int not null,
email varchar(50) not null
);

desc Address_Book;
-- UC3--

insert into Address_Book(firstname, lastname, address, city, state, zip, phonenumber, email)
values("Sangeetha", "posam", "whitefield", "bangalore", "karnataka", 618567, 123456767, "sangeetha@gmail.com");
insert into Address_Book(firstname, lastname, address, city, state, zip, phonenumber, email)
values("Geetha", "kumari", "hoodi", "chennai", "tamilnadu", 518578, 675456767, "geetha@gmail.com");
insert into Address_Book(firstname, lastname, address, city, state, zip, phonenumber, email)
values("Sangee", "undala", "sripuram", "trivendram", "kerala", 718576, 998456767, "sangee@gmail.com");
insert into Address_Book(firstname, lastname, address, city, state, zip, phonenumber, email)
values("chinmai", "chitti", "banjarahills", "Hyderabad", "AndhraPradesh", 918564, 956745676, "chitti@gmail.com");
insert into Address_Book(firstname, lastname, address, city, state, zip, phonenumber, email)
values("nani", "reddy", "hanumannagar", "bellary", "karnataka", 618576, 768456767, "nani@gmail.com");
insert into Address_Book(firstname, lastname, address, city, state, zip, phonenumber, email)
values("sreenmai", "mai", "durganagar", "anatapur", "AP", 919564, 896745676, "sreemai@gmail.com");
insert into Address_Book(firstname, lastname, address, city, state, zip, phonenumber, email)
values("sree", "ma", "srinagar", "anatapur", "AP", 918564, 986745676, "sree@gmail.com"),("Uma", "sri", "sainagar", "anatapur", "AP", 918564, 676745676, "uma@gmail.com");

select * from Address_Book;
-- UC4--
select * from Address_Book where firstname ="geetha";
select * from Address_Book;

SET SQL_SAFE_UPDATES=0;
-- UC5--
delete from Address_Book where firstname = "Geetha";
select * from Address_Book;
-- UC6--
select * from Address_Book where city ="trivendram";
select * from Address_Book;
-- UC7--
select city, count(*) from Address_Book group by city;
select state, count(*) from Address_Book group by state;
select * from Address_Book;
-- UC8--
select * from Address_Book where city ="anatapur" order by firstname ;
select * from Address_Book;
-- UC9--
alter table  Address_Book add type varchar(20) after firstname;
select * from Address_Book;
-- UC10--
update Address_Book set type = "Family";
update Address_Book set type = "Friends" where firstname = "Sangeetha";
update Address_Book set type = "Family" where firstname = "Sangee";
update Address_Book set type = "Friends" where firstname = "chinmai";
update Address_Book set type = "Profession" where firstname = "Sree";
update Address_Book set type = "Profession" where firstname = "Uma";
select * from Address_Book;
-- UC11--
select type, count(*) from Address_Book group by phonenumber;
