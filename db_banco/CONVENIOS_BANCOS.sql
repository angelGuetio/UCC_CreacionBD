
/*==============================================================*/
/* Table: BAN_CONVENIOS                                         */
/*==============================================================*/
create table BAN_CONVENIOS (
   ID_CONVENIO          VARCHAR(5)            not null,
   NOMBRE_BANCO         VARCHAR(30),
   URL                  VARCHAR(50),
   constraint PK_BAN_CONVENIOS primary key (ID_CONVENIO)
);
