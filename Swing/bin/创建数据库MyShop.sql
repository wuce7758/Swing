-- ����myshop���ݿ�
use master 
if exists(select * from sysdatabases where name = 'myshop')

-- ����Ѿ��������ݿ��������������ݿ�Ĺ���
return
--drop database MyShop
create database MyShop
on
(
  name = 'MyShop_data',
  -- �ļ�����Ҫ���ڣ���Ȼ�����Ӧ����C���½���myshop�ļ���
  filename = 'E:\MyShop\MyShop_data.mdf',
  size = 10,
  filegrowth = 20%
)
-- ��־�ļ��������
log on
(
  name = 'MyShop_log',
  -- �ļ�����Ҫ���ڣ���Ȼ�����Ӧ����C���½���MyShop�ļ���
  filename = 'E:\MyShop\MyShop_log.ldf',
  size = 3,
  maxsize = 20,
  filegrowth = 20%
)