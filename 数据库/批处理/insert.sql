insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf001','lxf001','�����1','��','1992-01-01','lxf_44911@163.com','18050403041','ɽ����ͬһ','037001');
insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf002','lxf002','�����2','Ů','1992-02-02','lxf_44922@163.com','18050403042','ɽ����ͬ��','037002');
insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf003','lxf003','�����3','��','1992-03-03','lxf_44933@163.com','18050403043','ɽ����ͬ��','037003');
insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf004','lxf004','�����4','Ů','1992-04-04','lxf_44944@163.com','18050403044','ɽ����ͬ��','037004');
insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf005','lxf005','�����5','��','1992-05-05','lxf_44955@163.com','18050403045','ɽ����ͬ��','037005');
insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf006','lxf006','�����6','��','1992-06-01','lxf_44966@163.com','18050403046','ɽ����ͬ��','037006');
insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf007','lxf007','�����7','Ů','1992-07-02','lxf_44977@163.com','18050403047','ɽ����ͬ��','037007');
insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf008','lxf008','�����8','��','1992-08-03','lxf_44988@163.com','18050403048','ɽ����ͬ��','037008');
insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf009','lxf009','�����9','Ů','1992-09-04','lxf_44999@163.com','18050403049','ɽ����ͬ��','037009');
insert into t_user(suser,pass,name,sex,birth,email,tel,address,postcode) values ('lxf000','lxf000','�����0','��','1992-10-05','lxf_44900@163.com','18050403040','ɽ����ͬʮ','037000');

insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'����',0);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'�ֻ�',0);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'�����豸',0);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'����',1);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'����',1);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'����',1);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'����',3);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'ƻ��',2);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'��Ϊ',2);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'����',2);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'С��',2);
insert into t_mc_type(nid,sname,npid) values (seq_t_mc_type.nextval,'��֥',3);

insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'����y170','512G�ڴ棬500G���̣�intel core i1�������������Կ���win xp',1999,'lenovo1.jpg','0',date '2011-11-11',1,4);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'����y270','1G�ڴ棬750G���̣�intel core i2��������˫�Կ���win vista ',2999,'lenovo2.jpg','0',date '2012-1-24',1,4);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'����y370','2G�ڴ棬750G���̣�intel core i3��������˫�Կ���win7 32λ',3999,'lenovo3.jpg','0',date '2013-2-24',1,4);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'����y470','4G�ڴ棬750G���̣�intel core i4��������˫�Կ���win7 64λ',4999,'lenovo4.jpg','0',date '2013-4-14',1,4);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'����y570','8G�ڴ棬750G���̣�intel core i5��������˫�Կ���win8',5999,'lenovo5.jpg','0',date '2013-5-31',1,4);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'ƻ��1S','2G�ڴ棬iso1',2999,'iphone1.jpg','0',date '2013-10-10',2,8);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'ƻ��2S','4G�ڴ棬iso2',3999,'iphone2.jpg','0',date '2013-10-10',2,8);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'ƻ��3S','8G�ڴ棬iso3',4999,'iphone3.jpg','0',date '2013-10-10',2,8);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'ƻ��4s','16G�ڴ棬iso4',5999,'iphone4.jpg','0',date '2013-10-10',2,8);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'С��1','4G�ڴ棬2�˴�������android2.0.3',2999,'mi1.jpg','0',date '2013-1-1',2,11);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'С��2','8G�ڴ棬3�˴�������android3.0.3',3999,'mi2.jpg','0',date '2013-1-1',2,11);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'С��3','16G�ڴ棬4�˴�������android4.0.3',4999,'mi3.jpg','0',date '2013-1-1',2,11);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'����','4G�ڴ棬2�˴�������android2.0.3',2999,'sanxing.jpg','0',date '2013-1-1',2,10);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'��Ϊ','8G�ڴ棬3�˴�������android3.0.3',3999,'huawei.jpg','0',date '2013-1-1',2,9);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'���������','1500W���أ�ȫ�Զ���������',4999,'sony.jpg','0',date '2013-1-1',3,7);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'����','4G�ڴ棬750G���̣�intel core i3��������˫�Կ���win7 64λ',4099,'dell.jpg','0',date '2013-4-14',1,5);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'����','4G�ڴ棬750G���̣�intel core i3��������˫�Կ���win8',5099,'huipu.jpg','0',date '2013-5-31',1,6);
insert into t_mc(nid,sname,sdescription,nprice,simg,smctag,dcdate,nmaxid,nminid) values (seq_t_mc.nextval,'��֥����','ȫ�Զ����Կ��£��Զ���˪����',5999,'dongzhi.jpg','0',date '2013-10-10',3,12);

insert into t_order(nid,scuser,dgdate,spaytype,ssendtype,nmctypesize,nmcsize,ntotalprice ,sstatus,ssname,ssaddress ,sscode,ssphone ,ssemail )values(seq_t_order.nextval,'lxf001',sysdate,'����֧��','ֱ�Ӹ���','2','4','1996.0','1','�����1','ɽ����ͬ1','037001','18050403041','lxf_44941@163.com')
insert into t_order(nid,scuser,dgdate,spaytype,ssendtype,nmctypesize,nmcsize,ntotalprice ,sstatus,ssname,ssaddress ,sscode,ssphone ,ssemail )values(seq_t_order.nextval,'lxf002',sysdate,'����֧��','ֱ�Ӹ���','3','4','1199.0','1','�����2','ɽ����ͬ2','037002','18050403042','lxf_44942@163.com')
insert into t_order(nid,scuser,dgdate,spaytype,ssendtype,nmctypesize,nmcsize,ntotalprice ,sstatus,ssname,ssaddress ,sscode,ssphone ,ssemail )values(seq_t_order.nextval,'lxf003',sysdate,'����֧��','ֱ�Ӹ���','2','4','11996.0','1','�����3','ɽ����ͬ3','037003','18050403043','lxf_44943@163.com')
insert into t_order(nid,scuser,dgdate,spaytype,ssendtype,nmctypesize,nmcsize,ntotalprice ,sstatus,ssname,ssaddress ,sscode,ssphone ,ssemail )values(seq_t_order.nextval,'lxf004',sysdate,'����֧��','ֱ�Ӹ���','3','4','11880.0','1','�����4','ɽ����ͬ4','037004','18050403044','lxf_44944@163.com')
insert into t_order(nid,scuser,dgdate,spaytype,ssendtype,nmctypesize,nmcsize,ntotalprice ,sstatus,ssname,ssaddress ,sscode,ssphone ,ssemail )values(seq_t_order.nextval,'lxf005',sysdate,'����֧��','ֱ�Ӹ���','2','4','41996.0','1','�����5','ɽ����ͬ5','037005','18050403045','lxf_44945@163.com')

insert into t_order_item(nid,norderid,nmcid,smcname,sdescription,simg,ncount,nprice ,ntotalprice )values(seq_t_order_item.nextval,seq_t_order.currval,'1','����y170','512G�ڴ棬500G���̣�intel core i1�������������Կ���win xp','lenovo1.jpg','1','1999','22994.0')
insert into t_order_item(nid,norderid,nmcid,smcname,sdescription,simg,ncount,nprice ,ntotalprice )values(seq_t_order_item.nextval,seq_t_order.currval,'3','����y370','2G�ڴ棬750G���̣�intel core i3��������˫�Կ���win7 32λ','lenovo3.jpg','2','3999','22994.0')
insert into t_order_item(nid,norderid,nmcid,smcname,sdescription,simg,ncount,nprice ,ntotalprice )values(seq_t_order_item.nextval,seq_t_order.currval,'4','����y470','4G�ڴ棬750G���̣�intel core i4��������˫�Կ���win7 64λ','lenovo4.jpg','1','4999','22994.0')
insert into t_order_item(nid,norderid,nmcid,smcname,sdescription,simg,ncount,nprice ,ntotalprice )values(seq_t_order_item.nextval,seq_t_order.currval,'6','ƻ��1S','2G�ڴ棬iso1','iphone1.jpg','1','2999','22994.0')
insert into t_order_item(nid,norderid,nmcid,smcname,sdescription,simg,ncount,nprice ,ntotalprice )values(seq_t_order_item.nextval,seq_t_order.currval,'8','ƻ��3S','8G�ڴ棬iso3','iphone3.jpg','1','4999','22994.0')

commit;