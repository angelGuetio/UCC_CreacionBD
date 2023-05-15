/*==============================================================*/
/* Table: TIPO_CUENTA                                           */
/*==============================================================*/
/*create table TIPO_CUENTA (
   ID_TIPO_CUENTA       VARCHAR(2)            not null,
   TIPO_CUENTA          VARCHAR(20)           not null,
   constraint PK_TIPO_CUENTA primary key (ID_TIPO_CUENTA)
);*/

INSERT INTO TIPO_CUENTA (ID_TIPO_CUENTA, TIPO_CUENTA) VALUES ('AH', 'ahorros');
INSERT INTO TIPO_CUENTA (ID_TIPO_CUENTA, TIPO_CUENTA) VALUES ('CO', 'corriente');
INSERT INTO TIPO_CUENTA (ID_TIPO_CUENTA, TIPO_CUENTA) VALUES ('CD', 'cuenta CDT');

