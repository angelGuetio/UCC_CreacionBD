/*==============================================================*/
/* DBMS name:      ORACLE Version 12c                           */
/* Created on:     11/05/2023 11:22:50 p. m.                    */
/*==============================================================*/


alter table BCMPSE_TRANSACCION
   drop constraint FK_BCMPSE_T_REFERENCE_TRANSACC;

alter table BCV_PAGO_ONLINE
   drop constraint FK_BCV_PAGO_REFERENCE_BCMPSE_T;

alter table BCV_PAGO_ONLINE
   drop constraint FK_BCV_PAGO_REFERENCE_CUENTA;

alter table BCV_PAGO_ONLINE
   drop constraint FK_BCV_PAGO_REFERENCE_USUARIO_;

alter table CLIENTE
   drop constraint FK_CLIENTE_REFERENCE_USUARIO_;

alter table CLIENTE_BCMV
   drop constraint FK_CLIENTE__REFERENCE_TIPO_DOC;

alter table CUENTA
   drop constraint FK_CUENTA_REFERENCE_USUARIO_;

alter table CUENTA
   drop constraint FK_CUENTA_REFERENCE_TIPO_CUE;

alter table PAGO
   drop constraint FK_PAGO_REFERENCE_RECAUDOS;

alter table PAGO_ONLINE
   drop constraint FK_PAGO_ONL_REFERENCE_REFERENC;

alter table PAGO_ONLINE
   drop constraint FK_PAGO_ONL_REFERENCE_BANCOS_C;

alter table REFERENCIA_FACTURA
   drop constraint FK_REFERENC_REFERENCE_PRODUCTO;

alter table REFERENCIA_FACTURA
   drop constraint FK_REFERENC_REFERENCE_USUARIO_;

alter table REFERENCIA_FACTURA
   drop constraint FK_REFERENC_REFERENCE_SEGUIMIE;

alter table REFERENCIA_FACTURA
   drop constraint FK_REFERENC_REFERENCE_RECAUDOS;

alter table REF_PAGO
   drop constraint FK_REF_PAGO_REFERENCE_BCMPSE_T;

alter table TIPO_PERSONA
   drop constraint FK_TIPO_PER_REFERENCE_PAGO_ONL;

alter table TITULAR_CUENTA
   drop constraint FK_TITULAR__REFERENCE_CLIENTE_;

alter table TITULAR_CUENTA
   drop constraint FK_TITULAR__REFERENCE_CUENTA;

alter table TRANSACCION
   drop constraint FK_TRANSACC_REFERENCE_PAGO_ONL;

alter table TRANSACCION
   drop constraint FK_TRANSACC_REFERENCE_BAN_CONV;

alter table TRANSACCION
   drop constraint FK_TRANSACC_REFERENCE_USUARIO;

alter table USUARIO
   drop constraint FK_USUARIO_REFERENCE_TIPO_PER;

alter table USUARIO_BME
   drop constraint FK_USUARIO__REFERENCE_CLIENTE_;

drop table BANCOS_CONV cascade constraints;

drop table BAN_CONVENIOS cascade constraints;

drop table BCMPSE_TRANSACCION cascade constraints;

drop table BCV_PAGO_ONLINE cascade constraints;

drop table CLIENTE cascade constraints;

drop table CLIENTE_BCMV cascade constraints;

drop table CUENTA cascade constraints;

drop table PAGO cascade constraints;

drop table PAGO_ONLINE cascade constraints;

drop table PRODUCTO cascade constraints;

drop table RECAUDOS_PRESTAMO cascade constraints;

drop table REFERENCIA_FACTURA cascade constraints;

drop table REF_PAGO cascade constraints;

drop table SEGUIMIENTO_TRANSACCION cascade constraints;

drop table TIPO_CUENTA cascade constraints;

drop table TIPO_DOCUMENTO cascade constraints;

drop table TIPO_PERSONA cascade constraints;

drop table TIPO_PERSONA_PSE cascade constraints;

drop table TITULAR_CUENTA cascade constraints;

drop table TRANSACCION cascade constraints;

drop table USUARIO cascade constraints;

drop table USUARIO_BME cascade constraints;

drop table USUARIO_COLP cascade constraints;

/*==============================================================*/
/* Table: BANCOS_CONV                                           */
/*==============================================================*/
create table BANCOS_CONV (
   ID_BANCOS_CONV       VARCHAR(5)            not null,
   NOMBRE               VARCHAR(20),
   constraint PK_BANCOS_CONV primary key (ID_BANCOS_CONV)
);

/*==============================================================*/
/* Table: BAN_CONVENIOS                                         */
/*==============================================================*/
create table BAN_CONVENIOS (
   ID_CONVENIO          VARCHAR(5)            not null,
   NOMBRE_BANCO         VARCHAR(30),
   URL                  VARCHAR(50),
   constraint PK_BAN_CONVENIOS primary key (ID_CONVENIO)
);

/*==============================================================*/
/* Table: BCMPSE_TRANSACCION                                    */
/*==============================================================*/
create table BCMPSE_TRANSACCION (
   ID_TRANS             NUMBER(10)            not null,
   ID_FACTURA           NUMBER(9),
   ID_BANCO             VARCHAR(9),
   constraint PK_BCMPSE_TRANSACCION primary key (ID_TRANS)
);

/*==============================================================*/
/* Table: BCV_PAGO_ONLINE                                       */
/*==============================================================*/
create table BCV_PAGO_ONLINE (
   ID_TRPAGO            NUMBER(10)            not null,
   ID_TRANS             NUMBER(10),
   ID_CUENTA            NUMBER(15),
   ID_USUARIO           VARCHAR(10),
   IVA                  NUMBER(15,2),
   COMISION             NUMBER(15,2),
   VALOR_TRANS          NUMBER(15,2),
   ESTADO               VARCHAR(1),
   constraint PK_BCV_PAGO_ONLINE primary key (ID_TRPAGO)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           VARCHAR(11)           not null,
   ID_USUARIO           VARCHAR(10),
   NOMBRE_              VARCHAR(20),
   TELEFONO             VARCHAR(15),
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: CLIENTE_BCMV                                          */
/*==============================================================*/
create table CLIENTE_BCMV (
   ID_CLIENTE           VARCHAR(11)           not null,
   ID_TIPDOC            VARCHAR(2),
   NOMBRE_              VARCHAR(20),
   TELEFONO             VARCHAR(15),
   constraint PK_CLIENTE_BCMV primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: CUENTA                                                */
/*==============================================================*/
create table CUENTA (
   ID_CUENTA            NUMBER(15)            not null,
   ID_TIPO_CUENTA       VARCHAR(2)            not null,
   ESTADO               VARCHAR(2)            not null,
   SALDO                NUMBER(15,2),
   ID_USUARIO_LOG       VARCHAR(10),
   constraint PK_CUENTA primary key (ID_CUENTA)
);

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO (
   ID_PAGO              NUMBER(5)             not null,
   NUMERO_CREDITO       VARCHAR(10)           not null,
   VALOR_PAGO           NUMBER(15,2),
   IVA                  NUMBER(15,2),
   COMISION             NUMBER(15,2),
   TOTAL_PAGO           VARCHAR2(10),
   constraint PK_PAGO primary key (ID_PAGO, NUMERO_CREDITO)
);

/*==============================================================*/
/* Table: PAGO_ONLINE                                           */
/*==============================================================*/
create table PAGO_ONLINE (
   ID_FACTURA           NUMBER(9)             not null,
   ID_BANCO             VARCHAR(9)            not null,
   ID_TIPERSONA         VARCHAR(3),
   ID_BANCOS_CONV       VARCHAR(5),
   constraint PK_PAGO_ONLINE primary key (ID_FACTURA, ID_BANCO)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   ID_PRODUCTO          VARCHAR(6)            not null,
   PRODUCTO             VARCHAR(30),
   constraint PK_PRODUCTO primary key (ID_PRODUCTO)
);

/*==============================================================*/
/* Table: RECAUDOS_PRESTAMO                                     */
/*==============================================================*/
create table RECAUDOS_PRESTAMO (
   NUMERO_CREDITO       VARCHAR(10)           not null,
   VALOR_CREDITO        NUMBER(15,2),
   VALOR_CUOTA          NUMBER(15,2),
   ESTADO               VARCHAR(1),
   constraint PK_RECAUDOS_PRESTAMO primary key (NUMERO_CREDITO)
);

/*==============================================================*/
/* Table: REFERENCIA_FACTURA                                    */
/*==============================================================*/
create table REFERENCIA_FACTURA (
   ID_FACTURA           NUMBER(9)             not null,
   ID_SEGUIMIENTO       NUMBER(10)            not null,
   ID_USUARIO           VARCHAR(10),
   NUMERO_CREDITO       VARCHAR(10),
   VALOR_PAGO           NUMBER(15,2),
   ID_PRODUCTO          VARCHAR(6),
   FECHA                TIMESTAMP WITH LOCAL TIME ZONE,
   constraint PK_REFERENCIA_FACTURA primary key (ID_FACTURA)
);

/*==============================================================*/
/* Table: REF_PAGO                                              */
/*==============================================================*/
create table REF_PAGO (
   ID_TRANS             NUMBER(10)            not null,
   ID_REFERENCIA        NUMBER(5)             not null,
   REFERENCIA           VARCHAR(20),
   constraint PK_REF_PAGO primary key (ID_TRANS, ID_REFERENCIA)
);

/*==============================================================*/
/* Table: SEGUIMIENTO_TRANSACCION                               */
/*==============================================================*/
create table SEGUIMIENTO_TRANSACCION (
   ID_SEGUIMIENTO       NUMBER(10)            not null,
   ESTADO_SEGUIMIENTO   VARCHAR(1),
   constraint PK_SEGUIMIENTO_TRANSACCION primary key (ID_SEGUIMIENTO)
);

/*==============================================================*/
/* Table: TIPO_CUENTA                                           */
/*==============================================================*/
create table TIPO_CUENTA (
   ID_TIPO_CUENTA       VARCHAR(2)            not null,
   TIPO_CUENTA          VARCHAR(20)           not null,
   constraint PK_TIPO_CUENTA primary key (ID_TIPO_CUENTA)
);

/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
create table TIPO_DOCUMENTO (
   ID_TD                VARCHAR(2)            not null,
   NOMBRE               VARCHAR(30)           not null,
   constraint PK_TIPO_DOCUMENTO primary key (ID_TD)
);

/*==============================================================*/
/* Table: TIPO_PERSONA                                          */
/*==============================================================*/
create table TIPO_PERSONA (
   ID_TIPERSONA         VARCHAR(3)            not null,
   ID_FACTURA           NUMBER(9),
   ID_BANCO             VARCHAR(9),
   TIPOPERSONA          VARCHAR(9),
   constraint PK_TIPO_PERSONA primary key (ID_TIPERSONA)
);

/*==============================================================*/
/* Table: TIPO_PERSONA_PSE                                      */
/*==============================================================*/
create table TIPO_PERSONA_PSE (
   ID_TIPERSONA         VARCHAR(3)            not null,
   TIPOPERSONA          VARCHAR(15),
   constraint PK_TIPO_PERSONA_PSE primary key (ID_TIPERSONA)
);

/*==============================================================*/
/* Table: TITULAR_CUENTA                                        */
/*==============================================================*/
create table TITULAR_CUENTA (
   ID_CLIENTE           VARCHAR(11)           not null,
   ID_CUENTA            NUMBER(15)            not null,
   constraint PK_TITULAR_CUENTA primary key (ID_CLIENTE, ID_CUENTA)
);

/*==============================================================*/
/* Table: TRANSACCION                                           */
/*==============================================================*/
create table TRANSACCION (
   ID_FACTURA           NUMBER(9)             not null,
   ID_BANCO             VARCHAR(9)            not null,
   ID_USUARIO           VARCHAR(5),
   ESTADO               VARCHAR(1),
   ID_CONVENIO          VARCHAR(5),
   constraint PK_TRANSACCION primary key (ID_FACTURA, ID_BANCO)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           VARCHAR(5)            not null,
   ID_TIPERSONA         VARCHAR(3),
   EMAIL                VARCHAR(40),
   constraint PK_USUARIO primary key (ID_USUARIO)
);

/*==============================================================*/
/* Table: USUARIO_BME                                           */
/*==============================================================*/
create table USUARIO_BME (
   ID_USUARIO           VARCHAR(10)           not null,
   ID_CLIENTE           VARCHAR(11)           not null,
   CONTRASENA           VARCHAR(30),
   FRASE_SEGURIDAD      VARCHAR(15),
   IMAGEN_SEGURIDAD     VARCHAR(40),
   constraint PK_USUARIO_BME primary key (ID_USUARIO)
);

/*==============================================================*/
/* Table: USUARIO_COLP                                          */
/*==============================================================*/
create table USUARIO_COLP (
   ID_USUARIO           VARCHAR(10)           not null,
   NOMBRE               VARCHAR(10),
   APELLIDO             VARCHAR(10),
   TIPO_DOCUMENTO       VARCHAR(10),
   constraint PK_USUARIO_COLP primary key (ID_USUARIO)
);

alter table BCMPSE_TRANSACCION
   add constraint FK_BCMPSE_T_REFERENCE_TRANSACC foreign key (ID_FACTURA, ID_BANCO)
      references TRANSACCION (ID_FACTURA, ID_BANCO);

alter table BCV_PAGO_ONLINE
   add constraint FK_BCV_PAGO_REFERENCE_BCMPSE_T foreign key (ID_TRANS)
      references BCMPSE_TRANSACCION (ID_TRANS);

alter table BCV_PAGO_ONLINE
   add constraint FK_BCV_PAGO_REFERENCE_CUENTA foreign key (ID_CUENTA)
      references CUENTA (ID_CUENTA);

alter table BCV_PAGO_ONLINE
   add constraint FK_BCV_PAGO_REFERENCE_USUARIO_ foreign key (ID_USUARIO)
      references USUARIO_BME (ID_USUARIO);

alter table CLIENTE
   add constraint FK_CLIENTE_REFERENCE_USUARIO_ foreign key (ID_USUARIO)
      references USUARIO_COLP (ID_USUARIO);

alter table CLIENTE_BCMV
   add constraint FK_CLIENTE__REFERENCE_TIPO_DOC foreign key (ID_TIPDOC)
      references TIPO_DOCUMENTO (ID_TD);

alter table CUENTA
   add constraint FK_CUENTA_REFERENCE_USUARIO_ foreign key (ID_USUARIO_LOG)
      references USUARIO_BME (ID_USUARIO);

alter table CUENTA
   add constraint FK_CUENTA_REFERENCE_TIPO_CUE foreign key (ID_TIPO_CUENTA)
      references TIPO_CUENTA (ID_TIPO_CUENTA);

alter table PAGO
   add constraint FK_PAGO_REFERENCE_RECAUDOS foreign key (NUMERO_CREDITO)
      references RECAUDOS_PRESTAMO (NUMERO_CREDITO);

alter table PAGO_ONLINE
   add constraint FK_PAGO_ONL_REFERENCE_REFERENC foreign key (ID_FACTURA)
      references REFERENCIA_FACTURA (ID_FACTURA);

alter table PAGO_ONLINE
   add constraint FK_PAGO_ONL_REFERENCE_BANCOS_C foreign key (ID_BANCOS_CONV)
      references BANCOS_CONV (ID_BANCOS_CONV);

alter table REFERENCIA_FACTURA
   add constraint FK_REFERENC_REFERENCE_PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO);

alter table REFERENCIA_FACTURA
   add constraint FK_REFERENC_REFERENCE_USUARIO_ foreign key (ID_USUARIO)
      references USUARIO_COLP (ID_USUARIO);

alter table REFERENCIA_FACTURA
   add constraint FK_REFERENC_REFERENCE_SEGUIMIE foreign key (ID_SEGUIMIENTO)
      references SEGUIMIENTO_TRANSACCION (ID_SEGUIMIENTO);

alter table REFERENCIA_FACTURA
   add constraint FK_REFERENC_REFERENCE_RECAUDOS foreign key (NUMERO_CREDITO)
      references RECAUDOS_PRESTAMO (NUMERO_CREDITO);

alter table REF_PAGO
   add constraint FK_REF_PAGO_REFERENCE_BCMPSE_T foreign key (ID_TRANS)
      references BCMPSE_TRANSACCION (ID_TRANS);

alter table TIPO_PERSONA
   add constraint FK_TIPO_PER_REFERENCE_PAGO_ONL foreign key (ID_FACTURA, ID_BANCO)
      references PAGO_ONLINE (ID_FACTURA, ID_BANCO);

alter table TITULAR_CUENTA
   add constraint FK_TITULAR__REFERENCE_CLIENTE_ foreign key (ID_CLIENTE)
      references CLIENTE_BCMV (ID_CLIENTE);

alter table TITULAR_CUENTA
   add constraint FK_TITULAR__REFERENCE_CUENTA foreign key (ID_CUENTA)
      references CUENTA (ID_CUENTA);

alter table TRANSACCION
   add constraint FK_TRANSACC_REFERENCE_PAGO_ONL foreign key (ID_FACTURA, ID_BANCO)
      references PAGO_ONLINE (ID_FACTURA, ID_BANCO);

alter table TRANSACCION
   add constraint FK_TRANSACC_REFERENCE_BAN_CONV foreign key (ID_CONVENIO)
      references BAN_CONVENIOS (ID_CONVENIO);

alter table TRANSACCION
   add constraint FK_TRANSACC_REFERENCE_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO);

alter table USUARIO
   add constraint FK_USUARIO_REFERENCE_TIPO_PER foreign key (ID_TIPERSONA)
      references TIPO_PERSONA_PSE (ID_TIPERSONA);

alter table USUARIO_BME
   add constraint FK_USUARIO__REFERENCE_CLIENTE_ foreign key (ID_CLIENTE)
      references CLIENTE_BCMV (ID_CLIENTE);

