/*
Donor
    DonorId pk
    FirstName varchar(30) not null not blank
    LastName varchar(30) not null not blank
    HairColor varchar(6) not null must be brown, blonde or red
    HairType varchar(8) not null must be straight, curly or wavy
    HairLength int not null greater than zero
    DateReceived date not null between mark 2015 and getdate()
    Used bit not null 
*/