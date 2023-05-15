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