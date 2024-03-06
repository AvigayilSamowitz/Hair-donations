use HairDonationDB
go 

drop table if exists Donor
go 

create table dbo.Donor(
    DonorId int not null identity primary key,
    FirstName varchar(30) not null constraint ck_Donor_FirstName_not_blank check(FirstName <> ''),
    LastName varchar(30) not null constraint ck_Donor_LastName_not_blank check(LastName <> ''),
    HairColor varchar(6) not null constraint ck_Donor_HairColor_must_be_brown_blonde_or_red check(HairColor in ('brown', 'blonde', 'red')),
    HairType varchar(8) not null constraint ck_Donor_HairType_must_be_straight_curly_or_wavy check(HairType in ('straight', 'curly', 'wavy')),
    HairLength int not null constraint ck_Donor_HairLength_must_be_at_least_12_inches check(HairLength >= 12),
    DateReceived date not null constraint ck_Donor_DateReceived_must_be_between_March_2015_and_the_current_date check(DateReceived between '2015-03-01' and getdate()),
    Used bit not null
)
go