# Display all the Salesperson whose all orders worth is more than Rs. 2000.
select Snum, MAX(AMT) from `Orders`
where AMT > 2000
group by Odate, Snum;