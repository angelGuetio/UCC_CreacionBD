
/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   ID_FACTURA           NUMERIC(10)          not null,
   PLACA                VARCHAR(10)          not null,
   FECHA_HORA_INGRESO   DATE                 not null,
   FECHA_HORA_SALIDA    DATE                 not null,
   TARIFA               DECIMAL(2)           null,
   IVA19_               DECIMAL(2)           null,
   TOTAL_A_PAGAR        DECIMAL(3)           null,
   constraint PK_FACTURA primary key (ID_FACTURA)
);

/*==============================================================*/
/* Table: FORMA_PAGO                                            */
/*==============================================================*/
create table FORMA_PAGO (
   ID_PAGO              NUMERIC(2)           not null,
   EFECTIVO             DECIMAL(2)           null,
   TARJETA              DECIMAL(2)           null,
   constraint PK_FORMA_PAGO primary key (ID_PAGO)
);

/*==============================================================*/
/* Table: PLACA                                                 */
/*==============================================================*/
create table PLACA (
   ID_PLACA             NUMERIC(10)          not null,
   ID_TIPOVEHICULO      CHAR(10)             null,
   PLACA                VARCHAR(10)          null,
   constraint PK_PLACA primary key (ID_PLACA)
);

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   ID_SERVICIO          NUMERIC(3)           not null,
   ID_PAGO              NUMERIC(2)           null,
   ID_FACTURA           NUMERIC(10)          null,
   FECHA_HORA_INGRESO   DATE                 null,
   FECHA_HORA_SALIDA    DATE                 null,
   TARIFA               DECIMAL(2)           null,
   IVA                  DECIMAL(2)           null,
   constraint PK_SERVICIO primary key (ID_SERVICIO)
);

/*==============================================================*/
/* Table: TIPO_VEHICULO                                         */
/*==============================================================*/
create table TIPO_VEHICULO (
   ID_TIPOVEHICULO      CHAR(10)             not null,
   ID_SERVICIO          NUMERIC(3)           null,
   CARRO                CHAR(6)              null,
   MOTO                 CHAR(6)              null,
   constraint PK_TIPO_VEHICULO primary key (ID_TIPOVEHICULO)
);

alter table PLACA
   add constraint FK_PLACA_REFERENCE_TIPO_VEH foreign key (ID_TIPOVEHICULO)
      references TIPO_VEHICULO (ID_TIPOVEHICULO)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_REFERENCE_FORMA_PA foreign key (ID_PAGO)
      references FORMA_PAGO (ID_PAGO)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_REFERENCE_FACTURA foreign key (ID_FACTURA)
      references FACTURA (ID_FACTURA)
      on delete restrict on update restrict;

alter table TIPO_VEHICULO
   add constraint FK_TIPO_VEH_REFERENCE_SERVICIO foreign key (ID_SERVICIO)
      references SERVICIO (ID_SERVICIO)
      on delete restrict on update restrict;

