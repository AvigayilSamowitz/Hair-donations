use HairDonationDB
go 

delete Donor
go 

insert Donor(FirstName, LastName, HairColor, HairType, HairLength, DateReceived, Used)
select 'Sarah', 'Cohen', 'blonde', 'wavy', 12, '3/16/19', 0
union select 'Rachel', 'Brown', 'brown', 'straight', 13, '1/7/24', 0
union select 'Jenny', 'Smith', 'brown', 'wavy', 12, '9/22/17', 1
union select 'Lea', 'Lewis', 'red', 'curly', 14, '11/11/23', 1
union select 'Rebbeca', 'Jones', 'brown', 'straight', 12, '2/12/24', 0
