#Display the number of orders taken by each Salesperson and their date of orders.
select Odate,Snum,count(*) from `Orders`
group by Odate,Snum;