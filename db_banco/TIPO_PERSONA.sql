
/*==============================================================*/
/* Table: TIPO_PERSONA_PSE                                      */
/*==============================================================*/
create table TIPO_PERSONA_PSE (
   ID_TIPERSONA         VARCHAR(3)            not null,
   TIPOPERSONA          VARCHAR(15),
   constraint PK_TIPO_PERSONA_PSE primary key (ID_TIPERSONA)
);

INSERT INTO TIPO_PERSONA (id, nombre) VALUES (2, 'Natural');
INSERT INTO TIPO_PERSONA (id, nombre) VALUES (2, 'Juridica');