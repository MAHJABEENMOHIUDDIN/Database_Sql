create database movie_reviews;

drop table if exists Movies;
drop table if exists Boxoffice;

create table if not exists Movies(
Id serial primary key,
Title varchar(255) not null check (Title <> ''),
Director varchar(255) not null check (Director <> ''),
Year int,
"Length minutes" int
);


create table if not exists Boxoffice(
"Movie id" serial primary key,
Rating float,
"Domestic sales" float,
"International sales" float,
constraint fk_movie
                foreign key("Movie id")
                references Movies(Id)
                on delete cascade
);      

-- inserting values into Movies table
insert into Movies(Id,Title,Director,Year,"Length minutes") values (1, 'Toy Story','John Lassester',1995, 81);
insert into Movies(Id,Title,Director,Year,"Length minutes") values (2, 'A Bugs Life','John Lassester', 1998,95);
insert into Movies(Id,Title,Director,Year,"Length minutes") values (3, 'Toy Story 2', 'John Lassester', 1999, 93);
insert into Movies(Id,Title,Director,Year,"Length minutes") values (4, 'Monsters Inc', 'Pete Docter', 2001, 92);
insert into Movies(Id,Title,Director,Year,"Length minutes") values (5, 'Finding Nemo', 'Andrew Stanton', 2003, 107);
insert into Movies (Id, Title, Director, Year, "Length minutes") VALUES (14, 'null', 'null', 0, 0);
insert into Movies (Id, Title, Director, Year, "Length minutes") VALUES (8, 'null', 'null', 0, 0);
insert into Movies (Id, Title, Director, Year,"Length minutes") VALUES (12, 'null', 'null', 0,0);



-- inserting values into Boxoffice table
insert into Boxoffice ("Movie id", Rating, "Domestic sales", "International sales") values (5, 8.2, 380843261, 555900000);
insert into Boxoffice ("Movie id", Rating, "Domestic sales", "International sales") values (14, 7.4, 268492764, 475066843);
insert into Boxoffice ("Movie id", Rating, "Domestic sales", "International sales") values (8, 8, 206445654, 417277164);
insert into Boxoffice ("Movie id", Rating,"Domestic sales", "International sales") values (12, 6.4, 191452396, 368400000);
insert into Boxoffice ("Movie id", Rating, "Domestic sales", "International sales") values (3, 7.9, 245852179, 239163000);