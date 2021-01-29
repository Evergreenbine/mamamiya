用户表
`create table user
(   userId int(20) not null auto_increment primary key ,
    username varchar(20) not null,
    useraccount varchar(10) not null,
    password varchar(20) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;`

品牌表
`create table brand
(
	bid int auto_increment,
	bname varchar(200) default null null,
	img varchar(200) default null,
	tag int(2) default 1,
	constraint brand_pk
		primary key (bid)
);
`
