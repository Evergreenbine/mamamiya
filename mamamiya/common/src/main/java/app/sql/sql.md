用户表
`create table user
 (   userid int(20) not null auto_increment,
     username varchar(10) not null ,
     useraccount varchar(10) not null ,
     password varchar(8) not null ,
     tag int(2) default 0,
     email varchar(20) default null,
     address varchar(50) default null,
     avator varchar(100) default null,
     primary key (userid,useraccount)
 )engine =innodb default charset =utf8`
数据
`INSERT INTO mamamiya.user (username, useraccount, password, tag, email, address, avator) VALUES ('多啦a梦', '1170559835', '123', 1, null, null, null)
 INSERT INTO mamamiya.user (username, useraccount, password, tag, email, address, avator) VALUES ('静香', '1234567890', '123', 1, null, null, null)
`

品牌表
`create table brand
(
	bid int auto_increment,
	bname varchar(200) default null null,
	img varchar(200) default null,
	tag int(2) default 1,
    primary key (bid)
);
`
圈子表
`create table circle(
     cid int(20) not null auto_increment primary key ,
     cname varchar(20) default null,
     introduce varchar(20) default null,
     follownums int(20) default 0,
     postnums int(20) default 0,
     tag int(2) default 0
 )engine =innodb default charset =utf`
 
 关注表
 `create table follow(
      cid int(20) not null,
      uid int(20) not null,
      constraint ccid foreign key (cid) references circle(cid),
      constraint uuid foreign key (uid) references user(userid)
  )engine = innodb default charset = utf8;`
  
贴子表
`create table post(
     pid int(20) auto_increment primary key,
     title varchar(20) default null,
     author varchar(20) default null,
     content text,
     time varchar(10),
     useraccount varchar(20),
     cid int(20),
     constraint pcid foreign key(cid) references circle(cid)
 )`
 
 管理员表
 `create table Role(
      aid int auto_increment primary key ,
      name varchar(20) default null,
      password varchar(20) default null,
      tag int(2) default 0,
      rid int default 0
  );`
 
 
