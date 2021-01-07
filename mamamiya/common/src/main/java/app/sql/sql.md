create table user
(   userId int(20) not null auto_increment primary key ,
    username varchar(20) not null,
    useraccount varchar(10) not null,
    password varchar(20) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;