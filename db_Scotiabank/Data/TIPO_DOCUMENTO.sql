
/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
/*create table TIPO_DOCUMENTO (
   ID_TD                VARCHAR(2)            not null,
   NOMBRE               VARCHAR(30)           not null,
   constraint PK_TIPO_DOCUMENTO primary key (ID_TD)
);*/

INSERT INTO TIPO_DOCUMENTO (ID_TD, NOMBRE) VALUES ('CC', 'Cedula de Ciudadania');
INSERT INTO TIPO_DOCUMENTO (ID_TD, NOMBRE) VALUES ('TI', 'Tarjeta de Identidad');
INSERT INTO TIPO_DOCUMENTO (ID_TD, NOMBRE) VALUES ('CE', 'Cedula de Extranjeria');
INSERT INTO TIPO_DOCUMENTO (ID_TD, NOMBRE) VALUES ('PA', 'Pasaporte');
INSERT INTO TIPO_DOCUMENTO (ID_TD, NOMBRE) VALUES ('RC', 'Registro Civil');