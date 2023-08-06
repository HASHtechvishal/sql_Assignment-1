# Count the number of Salesperson whose name begin with ‘a’/’A’.
select count(Sname) from `SalesPeople`
where Sname like 'a%'