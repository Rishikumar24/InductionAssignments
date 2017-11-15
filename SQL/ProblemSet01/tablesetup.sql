create table hotel(
  hotel_no varchar2(6),
  name varchar2(20),
  city varchar2(20),
  constraint pk_hno primary key(hotel_no));


 create table room(
    room_no number(6),
    hotel_no varchar2(6),
    type char,
    price decimal(6,2),
    constraint pk_rno primary key(room_no),	
    constraint fk_hno foreign key (hotel_no)
    references hotel(hotel_no)
  );
  
   create table booking(
    hotel_no varchar2(6),
    guest_no varchar2(6),
    date_from date,
    date_to date,
    room_no number(6),
    constraint pk_date primary key(date_from,date_to),
    constraint fk1_hno foreign key (hotel_no)
    references hotel(hotel_no),
    constraint fk_gno foreign key (guest_no) 
    references guest(guest_no),
    constraint fk_rno foreign key (room_no) 
    references room(room_no));

create table guest(
   guest_no varchar2(6),
   name varchar2(20),
   city varchar2(20),
   constraint pk_gno primary key(guest_no));

insert into hotel values('H111','Empire Hotel','New York');
    insert into hotel values('H235','Park Place','New York');
    insert into hotel values('H432','Brownstone Hotel','Toronto');
    insert into hotel values('H498','James Plaza','Toronto');
    insert into hotel values('H193','Devon Hotel','Boston');
    insert into hotel values('H437','Clairmont Hotel','Boston');

insert into room values(313,'H111','S',145.00);
    insert into room values(412,'H111','N',145.00);
    insert into room values(1267,'H235','N',175.00);
    insert into room values(1289,'H235','N',195.00);
    insert into room values(876,'H432','S',124.00);
    insert into room values(898,'H432','S',124.00);
    insert into room values(345,'H498','N',160.00);
    insert into room values(467,'H498','N',180.00);
    insert into room values(1001,'H193','S',150.00);
    insert into room values(1201,'H193','N',175.00);
    insert into room values(257,'H437','N',140.00);
    insert into room values(223,'H437','N',155.00);

insert into guest values('G256','Adam Wayne','Pittsburgh');
insert into guest values('G367','Tara Cummings','Baltimore');
insert into guest values('G879','Vanessa Parry','Pittsburgh');
insert into guest values('G230','Tom Hancock','Philadelphia');
insert into guest values('G467','Robert Swift','Atlanta');
insert into guest values('G190','Edward Cane','Baltimore');