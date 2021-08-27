CREATE TABLE tbl_rooms(
	id int not null AUTO_INCREMENT primary key,
	name varchar(120) not null
)engine=innoDB;

ALTER TABLE tbl_tables ADD COLUMN rooms_id int null;

ALTER TABLE tbl_rooms ADD COLUMN company_id int null;
ALTER TABLE tbl_rooms ADD COLUMN del_status varchar(50) null;
ALTER TABLE tbl_rooms ADD COLUMN outlet_id int null;
ALTER TABLE tbl_rooms ADD COLUMN user_id int null;
ALTER TABLE `tbl_rooms` CHANGE `del_status` `del_status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT 'Live';

INSERT INTO tbl_admin_user_menus 
	(label,function_name,controller_name, order_by, is_ignore, is_ignore_menu, parent_id, del_status)
		VALUES ('rooms','rooms','room',0,1,0,8,'Live');

		