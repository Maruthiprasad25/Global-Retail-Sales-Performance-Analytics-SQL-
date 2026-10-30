select * from sales;

select * from people;

#joining sales table with geo table
select s.Amount, s.SaleDate, g.Geo, g.Region
from sales s
join geo g on g.GeoID = s.GeoID;

select * from sales;

#joining sales table with people table
select s.SaleDate, s.Amount, p.Salesperson
from sales s
join people p on s.SPID = p.SPID;

# joining both people table and product table
select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team, g.geo, g.GeoID
from sales s
join people p on s.SPID = p.SPID
join products pr on s.PID = pr.PID
join geo g on s.GeoID = g.GeoID
where s.Amount> 500
and p.Team <> ''
order by s.SaleDate, g.GeoID;

# geo which includeS only INDIA and NEW ZEALAND
select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team, g.geo, g.GeoID
from sales s
join people p on s.SPID = p.SPID
join products pr on s.PID = pr.PID
join geo g on s.GeoID = g.GeoID
where s.Amount> 500
and g.geo in ('india','new zealand')
order by s.SaleDate, g.GeoID;

# Table includes only Delish team.
select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team, g.geo, g.GeoID
from sales s
join people p on s.SPID = p.SPID
join products pr on s.PID = pr.PID
join geo g on s.GeoID = g.GeoID
where s.Amount> 500
and p.Team = 'Delish'
order by s.SaleDate, g.GeoID;


