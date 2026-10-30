select  sum(Amount), avg(Amount), sum(Boxes), g.Geo
from sales s
join geo g on g.GeoID = s.GeoID
group by Geo;

select pr.category, p.Team, sum(Amount), sum(Boxes)
from sales s
join products pr on pr.pid = s.pid
join people p on p.spid = s.spid
where p.Team <> ''
group by pr.category, p.Team
order by pr.category, p.Team;

select pr.category, p.Team, sum(Amount), sum(Boxes)
from sales s
join products pr on pr.pid = s.pid
join people p on p.spid = s.spid
where p.Team <> ''
group by pr.category, p.Team
order by pr.category, p.Team;

select pr.product, g.geo, sum(Boxes), sum(Amount) as 'Total Amount'
from sales s
join products pr on pr.PID = s.PID
join geo g on g.GeoID = s.GeoID
group by pr.Product, g.Geo
order by 'Total Amount' desc
limit 10;

