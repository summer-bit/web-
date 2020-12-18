# 创建数据库test
create database test;
#使用数据库
use test;
#创建表
create table test.news(
nid varchar(45) default null,
ntitle varchar(450) not null,
ntype varchar(450) not null,
) default charset=GB2312;
#插入数据
insert test.news(nid,ntitle,ntype,nauthor) values('1','彭育园参加伯明翰学院2017年度领导班子民主生活会','学校召开党建专题会议传达学习党的十九大精神');
insert test.news(nid,ntitle,ntype,nauthor) values('2','韦一良参加环境学院民主生活会','第五督查考评组向省委高校工委汇报党建督查考评情况');
insert test.news(nid,ntitle,ntype,nauthor) values('3','校领导参加体育课部领导班子民主生活会','校领导作家风党风校风学风专题党课辅导报告');
insert test.news(nid,ntitle,ntype,nauthor) values('4','校领导参加马克思院领导班子成员民主生活会','校领导到材料学院调研指导工作');
insert test.news(nid,ntitle,ntype,nauthor) values('5','刘在洲讲授专题党课宣传党的十九大精神','省委高校工委第四督查考评莅临我校展开党建目标督查');
insert test.news(nid,ntitle,ntype,nauthor) values('6','韦一良让十九大精神在纺大落地生根','彭育园参加国际处党支部专题党日活动');
insert test.news(nid,ntitle,ntype,nauthor) values('7','刘在洲同志参加所在支部10月份支部专题党日活动','韦一良到环境学院、化工学院调研指导工作');

#查询数据
select * from test.news  order by nid desc