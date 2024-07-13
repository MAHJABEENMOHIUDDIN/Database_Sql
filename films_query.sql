select * from boxoffice ;

select * from Movies

--1.Find the domestic and international sales of each movie
select Movies.Title, boxoffice."Domestic sales", boxoffice."International sales"
from Movies join boxoffice on Movies.Id = Boxoffice."Movie id"
WHERE Movies.Title <> 'null';

--2.Show the sales numbers for each movie that did better internationally rather than domestically
select Movies.Title, boxoffice."Domestic sales", boxoffice."International sales"
from Movies join boxoffice on Movies.id= boxoffice."Movie id"
where boxoffice."International sales" > boxoffice."Domestic sales"
and Movies.Title <> 'null';

---3.List all the movies by their ratings in desc order
select movies.Title, boxoffice.rating
from movies join boxoffice on movies.id = boxoffice."Movie id"
where Movies.Title <> 'null'
order by boxoffice.rating desc 
s