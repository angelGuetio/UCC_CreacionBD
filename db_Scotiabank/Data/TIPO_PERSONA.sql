
/*==============================================================*/
/* Table: TIPO_PERSONA_PSE                                      */
/*==============================================================*/
/*create table TIPO_PERSONA_PSE (
   ID_TIPERSONA         VARCHAR(3)            not null,
   TIPOPERSONA          VARCHAR(15),
   constraint PK_TIPO_PERSONA_PSE primary key (ID_TIPERSONA)
);*/

/*==============================================================*/
/* Table: TIPO_PERSONA                                          */
/*==============================================================*/
/*create table TIPO_PERSONA (
   ID_TIPERSONA         VARCHAR(3)            not null,
   TIPOPERSONA          VARCHAR(9),
   constraint PK_TIPO_PERSONA primary key (ID_TIPERSONA)
);*/

INSERT INTO TIPO_PERSONA (ID_TIPERSONA, TIPOPERSONA) VALUES ('Nat', 'Natural');
INSERT INTO TIPO_PERSONA (ID_TIPERSONA, TIPOPERSONA) VALUES ('Jur', 'Juridica');
INSERT INTO TIPO_PERSONA_PSE (ID_TIPERSONA, TIPOPERSONA) VALUES ('Nat', 'Natural');
INSERT INTO TIPO_PERSONA_PSE (ID_TIPERSONA, TIPOPERSONA) VALUES ('Jur', 'Juridica');