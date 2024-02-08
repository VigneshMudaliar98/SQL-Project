
create database Myproject;
use Myproject;

create table store_keeper
(
 Department varchar(20) check (Department in ("ELECTRICAL" , "MECHANICAL" , "OTHER DEPT")) ,	
 MATERIAL_CODE varchar(20) , 	
 MIN_QUANTITY int(4),	
 MAX_QUANTITY int(4),	
 QUANTITY_AVAILABLE int(4) not null, 
 PRIMARY KEY (MATERIAL_CODE)
);

delimiter //
 create trigger dept_name
 before insert 
 on store_keeper
 for each row
 if new.Department='elect' or new.Department='Elect' then set new.Department= 'ELECTRICAL';
 else if new.Department='mech' or new.Department='Mech' then set new.Department= 'MECHANICAL';
 end if; 
 end if; //

create table user 
(
 `DATE` date ,	
 ITEM_CODE varchar(20) ,	
 QTY_TAKEN int(4) not null,	
 Department varchar(20),   
 foreign key (ITEM_CODE) references store_keeper(MATERIAL_CODE) 
);

insert into store_keeper
(DEPARTMENT,	MATERIAL_CODE, 	MIN_QUANTITY,	MAX_QUANTITY,	QUANTITY_AVAILABLE)
values
("elect",	"EL_MIS_1",	    "10", 	"50",	"90"),
("ELECTRICAL",	"EL_MIS_2",	    "15", 	"75",	"20"),
("ELECTRICAL",	"EL_MIS_3",	    "20", 	"60",	"62"),
("ELECTRICAL",	"EL_MIS_4",	    "15", 	"80",	"37"),
("ELECTRICAL",	"EL_MIS_5",	    "20", 	"100",	"85"),
("ELECTRICAL",	"EL_MIS_6",	    "30", 	"50",	"45"),
("ELECTRICAL",	"EL_MIS_7",	    "15", 	"75",	"49"),
("ELECTRICAL",	"EL_MIS_8",	    "10", 	"80",	"51"),
("ELECTRICAL",	"EL_MIS_9",	    "20", 	"80",	"83"),
("ELECTRICAL",	"EL_MIS_10",	"5", 	"60",	"75"),
("ELECTRICAL",	"EL_MIS_11",	"10", 	"90",	"86"),
("ELECTRICAL",	"EL_MIS_12",	"20", 	"100",	"63"),
("ELECTRICAL",	"EL_MIS_13",	"25", 	"50",	"64"),
("ELECTRICAL",	"EL_MIS_14",	"30", 	"75",	"41"),
("ELECTRICAL",	"EL_MIS_15",	"25", 	"80",	"88"),
("ELECTRICAL",	"EL_MIS_16",	"10", 	"80",	"53"),
("ELECTRICAL",	"EL_MIS_17",	"20", 	"75",	"50"),
("ELECTRICAL",	"EL_MIS_18",	"25", 	"80",	"10"),
("ELECTRICAL",	"EL_MIS_19",	"30", 	"80",	"15"),
("ELECTRICAL",	"EL_MIS_20",	"20", 	"50",	"81"),
("MECHANICAL",	"ML_MIS_1",	    "30", 	"80",	"20"),
("MECHANICAL",	"ML_MIS_2",	    "15", 	"75",	"88"),
("MECHANICAL",	"ML_MIS_3",	    "10", 	"75",	"43"),
("MECHANICAL",	"ML_MIS_4",	    "20", 	"60",	"50"),
("MECHANICAL",	"ML_MIS_5",	    "20", 	"80",	"70"),
("MECHANICAL",	"ML_MIS_6",	    "25", 	"100",	"84"),
("MECHANICAL",	"ML_MIS_7",	    "30", 	"80",	"84"),
("MECHANICAL",	"ML_MIS_8",	    "25", 	"80",	"13"),
("MECHANICAL",	"ML_MIS_9",	    "10", 	"75",	"11"),
("MECHANICAL",	"ML_MIS_10",	"20", 	"80",	"58"),
("MECHANICAL",	"ML_MIS_11",	"20", 	"80",	"90"),
("MECHANICAL",	"ML_MIS_12",	"15", 	"50",	"40"),
("MECHANICAL",	"ML_MIS_13",	"20", 	"80",	"35"),
("MECHANICAL",	"ML_MIS_14",	"30", 	"90",	"69"),
("MECHANICAL",	"ML_MIS_15",	"15", 	"100",	"22"),
("MECHANICAL",	"ML_MIS_16",	"10", 	"50",	"19"),
("MECHANICAL",	"ML_MIS_17",	"20", 	"75",	"45"),
("MECHANICAL",	"ML_MIS_18",	"25", 	"60",	"80"),
("MECHANICAL",	"ML_MIS_19",	"30", 	"80",	"54"),
("OTHER DEPT",	"ML_MIS_20",	"20", 	"100",	"12"),
("OTHER DEPT",	"OD_MIS_1",	    "30", 	"80",	"26"),
("OTHER DEPT",	"OD_MIS_2",	    "15", 	"80",	"22"),
("OTHER DEPT",	"OD_MIS_3",	    "10", 	"75",	"26"),
("OTHER DEPT",	"OD_MIS_4",	    "20", 	"80",	"24"),
("OTHER DEPT",	"OD_MIS_5",	    "20", 	"100",	"27"),
("OTHER DEPT",	"OD_MIS_6",	    "20", 	"80",	"71"),
("OTHER DEPT",	"OD_MIS_7",	    "30", 	"90",	"51"),
("OTHER DEPT",	"OD_MIS_8",	    "15", 	"80",	"62"),
("OTHER DEPT",	"OD_MIS_9",	    "10", 	"50",	"52"),
("OTHER DEPT",	"OD_MIS_10",	"20", 	"80",	"24"),
("OTHER DEPT",	"OD_MIS_11",	"5", 	"90",	"13"),
("OTHER DEPT",	"OD_MIS_12",	"20", 	"90",	"81"),
("OTHER DEPT",	"OD_MIS_13",	"30", 	"100",	"14"),
("OTHER DEPT",	"OD_MIS_14",	"20", 	"50",	"82"),
("OTHER DEPT",	"OD_MIS_15",	"20", 	"75",	"68"),
("OTHER DEPT",	"OD_MIS_16",	"30", 	"80",	"86"),
("OTHER DEPT",	"OD_MIS_17",	"15", 	"80",	"83"),
("OTHER DEPT",	"OD_MIS_18",	"10", 	"75",	"54"),
("OTHER DEPT",	"OD_MIS_19",	"20", 	"50",	"28"),
("OTHER DEPT",	"OD_MIS_20",	"30", 	"80",	"13");

insert into user
(`DATE`,	ITEM_CODE, 	QTY_TAKEN,	Department )
values
("2023-08-01",	"EL_MIS_17",	"21",	"ELECTRICAL"),
("2023-08-01",	"OD_MIS_3",	    "9",	"OTHER DEPT"),
("2023-08-01",	"OD_MIS_5",	    "1",	"OTHER DEPT"),
("2023-08-01",	"EL_MIS_5",	    "30",	"ELECTRICAL"),
("2023-08-02",	"OD_MIS_12",	"13",	"OTHER DEPT"),
("2023-08-02",	"ML_MIS_7",	    "15",	"MECHANICAL"),
("2023-08-02",	"ML_MIS_7",	    "26",	"MECHANICAL"),
("2023-08-02",	"EL_MIS_18",	"7",	"ELECTRICAL"),
("2023-08-02",	"EL_MIS_1",	    "26",	"ELECTRICAL"),
("2023-08-03",	"OD_MIS_16",	"18",	"OTHER DEPT"),
("2023-08-03",	"ML_MIS_11",	"19",	"MECHANICAL"),
("2023-08-03",	"ML_MIS_18",	"28",	"MECHANICAL"),
("2023-08-03",	"EL_MIS_6",	    "23",	"ELECTRICAL"),
("2023-08-04",	"EL_MIS_8",	    "11",	"ELECTRICAL"),
("2023-08-04",	"ML_MIS_1",	    "1",	"MECHANICAL"),
("2023-08-04",	"OD_MIS_17",	"29",	"OTHER DEPT"),
("2023-08-05",	"OD_MIS_14",	"20",	"OTHER DEPT"),
("2023-08-05",	"EL_MIS_5",	    "2",	"ELECTRICAL"),
("2023-08-05",	"ML_MIS_16",	"1",	"MECHANICAL"),
("2023-08-05",	"ML_MIS_18",	"26",	"MECHANICAL");

/* grouping & summation of qty taken from table user */
create view T_QTY as 
					select ITEM_CODE ,
						sum(QTY_TAKEN) AS TOTAL_QTY 
					FROM user 
					group by ITEM_CODE;

select*from T_QTY;

/* deducting those qty from table store_keeper */
create view Deduct as 
					select  ITEM_CODE,
							TOTAL_QTY, 
							QUANTITY_AVAILABLE-TOTAL_QTY as Deduction 
					from T_QTY a 
					join store_keeper s 
					on a.ITEM_CODE=s.MATERIAL_CODE ;

select*from deduct;

--  To show all the datas of table store_keeper and some columns  of temporary table ‘ a ’ 
select  s.*, 
		TOTAL_QTY ,  
        QUANTITY_AVAILABLE-TOTAL_QTY as Deduction 
from store_keeper s 
left join T_QTY a 
on a.ITEM_CODE=s.MATERIAL_CODE ;

-- To add col in table store_keeper 
alter table store_keeper
add NEW_QTY_AVAILABILITY int4;


-- this query is to update values in table store_keeper with new colm 'NEW_QTY_AVAILABILITY' using (update,set,subquery)
update store_keeper 
set NEW_QTY_AVAILABILITY = 
(
  select deduction 
  from 
	   (
		select  ITEM_CODE, 
				QUANTITY_AVAILABLE-TOTAL_QTY as Deduction 
		from 
			 (
               select ITEM_CODE ,
               sum(QTY_TAKEN) AS TOTAL_QTY 
               FROM user 
               group by ITEM_CODE
			  ) a 
		join store_keeper s 
        on a.ITEM_CODE=s.MATERIAL_CODE
        ) x 
	where store_keeper.MATERIAL_CODE=x.ITEM_CODE
 );
 
 set sql_safe_updates=0;
 
 
 --  updating remaining datas from 'QUANTITY_AVAILABLE' to null values in 'NEW_QTY_AVAILABILITY' 
update store_keeper 
set NEW_QTY_AVAILABILITY = QUANTITY_AVAILABLE
where NEW_QTY_AVAILABILITY is null;

-- adding column Priority 
alter table store_keeper 
add column Priority varchar(20);

/*alter table store_keeper
drop column Priority;*/

call give_priority();

-- giving priority has high , medium , not required
update store_keeper
set priority = "high" 
where NEW_QTY_AVAILABILITY-MIN_QUANTITY between "-30" and 0;

update store_keeper
set priority = "medium" 
where NEW_QTY_AVAILABILITY-MIN_QUANTITY between 0 and 10 ;

update store_keeper
set priority = "not requitred" 
where priority is null;

-- creating a procedure for above update statements
delimiter //
create procedure give_priority()
begin 
	update store_keeper
	set priority = "high" where NEW_QTY_AVAILABILITY-MIN_QUANTITY between "-30" and 0;
	update store_keeper
	set priority = "medium" where NEW_QTY_AVAILABILITY-MIN_QUANTITY between 0 and 10 ;
	update store_keeper
	set priority = "not requitred" where priority is null;
end //
delimiter ;	

-- retriving the final table "store keeper" according to priority given to the materials which must be bought first so as to prevent line stoppage situation in the company
SELECT * FROM store_keeper
order by priority;

-- below queries is used while performing the tasks/retrieving the data
drop database Myproject;
drop table user;
drop table store_keeper;

select * from store_keeper;
select * from user;

desc store_keeper;
desc user;

-- to overcome this : ERROR 1701 (42000): Cannot truncate a table referenced in a foreign key constraint
SET FOREIGN_KEY_CHECKS = 0;
truncate table store_keeper;