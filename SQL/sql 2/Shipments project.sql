select * from shipments;

#see all shipments
select product, Amount, Date, Boxes from shipments s;

 
 # all shipments by SP02
 select * from shipments s
 where s.`sales person` = 'SP02';
 
 # all shipments by SP02 G3
 select *from shipments s
 where s.`sales person` = 'SP02' and s.Geo ='G3';
 
 # All Shipments by Sp02 sp03 sp04 sp05
 select * from shipments s
 where s.`Sales Person` in ("SP01","SP02","SP03","SP04");
 
 #products that have word Choco in them
 select * from products
 where product like '%Choco%';
 
 # salesperson whose name begins with s
 select * from people
 where `Sales Person` like 's%';
 
 #sales per box of chocolates
 select s.geo, s.Date, s.Amount, s.Boxes, Amount/Boxes as 'Amount per box' from shipments s
 order by s.amount desc;
 
 
  #all shipments data for subbaro
 select s.Amount, s.Boxes, s.Date, p.`Sales Person`
 from shipments s
 join people p
 where p.`Sales Person` like 'Subba%';
 
 #all shipments of Subbarao to USA
 select s.Amount, s.Boxes, s.Date, p.`Sales Person`, g.Geo
 from shipments s
 join people p
 join geo g
 where g.geo in ('USA') and p.`Sales Person` like 'Subba%';


#Shipments sent to New Zealand and India
 select s.Date, s.amount, s.Boxes, p.Team, p.`Sales Person`, pr.Product, g.Geo, g.GeoID, p.`SP ID`
 from shipments s
 join people p on p.`SP ID` = s.`Sales Person`
 join products pr on pr.`Product ID` = s.Product
 join geo g
 where g.geo in ('New Zealand','India') and pr.product like 'Choco%'
 and p.Team <> '';
 

 
 
 
