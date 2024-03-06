--1. How many donations are there that were not used yet for each color?
select NumAvailPerColor = count(*), d.HairColor
from Donor d
where d.Used = 0
group by d.HairColor
--2. Do I have any unused donations 2 years or older?
select *
from Donor d 
where d.Used = 0
and datediff(year, d.DateReceived, getdate()) >= 2
--3. Which hair type has been used most?
select top 1 TypeUsedMost = count(*), d.HairType
from donor d 
where d.Used = 1
group by d.HairType
order by count(*) desc