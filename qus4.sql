# Display the number of Salespeople belonging to London and belonging to Paris.
select count(Sname) from `SalesPeople`
where city = 'London' or 'Paris'