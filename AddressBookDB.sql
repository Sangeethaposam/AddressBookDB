create database AddressBookService;
use AddressBookService;

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

select * from Address_Book where firstname ="geetha";

alter table  Address_Book add type varchar(20) after firstname;

select * from Address_Book;

SET SQL_SAFE_UPDATES=0;

delete from Address_Book where firstname = "Geetha";

select * from Address_Book where city ="trivendram";

select city, count(*) from Address_Book group by city;

select state, count(*) from Address_Book group by state;

select * from Address_Book where city ="anatapur" order by firstname ;
