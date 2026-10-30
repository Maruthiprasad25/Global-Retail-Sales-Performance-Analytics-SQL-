select * from sales
where amount > 1000
order by amount desc;

 select amount, boxes, SaleDate, Amount/boxes as 'Amount per box' 
 from sales;
 
 select *
 from Sales
 where SaleDate >= '2021-01-05' and GeoId = 'g2';
 
 # between conditions
 select * from sales
 where Boxes between 0 and 10;
 
 select * from sales
 where Boxes>0 and Boxes <=50;
 
 #weekday
 select SaleDate, Amount, Boxes, weekday(saledate) as 'day of week'
 from sales
 where weekday(saledate) = 3;
 
#in condition
select * from people
where Team in ('Delish','Jucies');

#OR and AND conditions.
select * from people
where Team = ('Delish' or 'Jucies')
and team <> '';
 
 #like operator
 select * from people
 where Salesperson like 'B%';
 
 select * from people
 where Salesperson like '%B%';
 
 #case operator
 select Saledate, Amount,
		case	when Amount <1000 then 'Under 1k'
				when Amount <5000 then 'under 5k'
                when Amount <10000 then 'under 10k'
			else '10k or more'
            end as 'Amount category'
from sales;
 
 

 
