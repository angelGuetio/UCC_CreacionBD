
/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
create table TIPO_DOCUMENTO (
   ID_TD                VARCHAR(2)            not null,
   NOMBRE               VARCHAR(30)           not null,
   constraint PK_TIPO_DOCUMENTO primary key (ID_TD)
);

INSERT INTO TipoDocumento (id, nombre) VALUES (1, 'C�dula de Ciudadan�a');

INSERT INTO TipoDocumento (id, nombre) VALUES (2, 'Tarjeta de Identidad');

INSERT INTO TipoDocumento (id, nombre) VALUES (3, 'C�dula de Extranjer�a');

INSERT INTO TipoDocumento (id, nombre) VALUES (4, 'Pasaporte');

INSERT INTO TipoDocumento (id, nombre) VALUES (5, 'Registro Civil');