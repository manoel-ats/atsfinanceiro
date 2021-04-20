/******************************************************************************/
/****              Generated by IBExpert 12/09/2012 13:27:36               ****/
/******************************************************************************/



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/



CREATE TABLE ANS_TRANSACAO (
    CODIGO         INTEGER NOT NULL,
    CODPRESTADOR   VARCHAR(20) NOT NULL,
    LOTE           VARCHAR(12),
    SITUACAO       VARCHAR(10),
    DTINCLUSAO     TIMESTAMP,
    PRESTADOR      VARCHAR(50),
    ARQ_RECEBIDO   VARCHAR(30),
    ARQ_ENVIADO    VARCHAR(30),
    TIPO           VARCHAR(10),
    PROTOCOLO      VARCHAR(10),
    ARQUIVO        VARCHAR(100),
    TOTAL          DOUBLE PRECISION,
    MARCADO        VARCHAR(1),
    REMESSA        VARCHAR(30),
    VERSAO         VARCHAR(10),
    DTRECEBIMENTO  TIMESTAMP
);




/******************************************************************************/
/****                             Primary Keys                             ****/
/******************************************************************************/

ALTER TABLE ANS_TRANSACAO ADD PRIMARY KEY (CODIGO);


/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/

