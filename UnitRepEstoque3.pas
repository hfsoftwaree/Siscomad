unit UnitRepEstoque3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, IBDatabase, QRCtrls, QuickRpt,
  ExtCtrls;

type
  TRepEstoque3 = class(TForm)
    QuickRep: TQuickRep;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    essencia: TIBTable;
    essenciaCODIGO: TIntegerField;
    essenciaESSENCIA: TIBStringField;
    essenciaETOROS: TFloatField;
    essenciaTENTRADA: TFloatField;
    essenciaTSAIDA: TFloatField;
    essenciaESERRADA: TFloatField;
    essenciaEINICIAL: TFloatField;
    entrada: TIBTable;
    entradaCODDISCRIMINACAO: TIntegerField;
    entradaCODIGOFORNECEDOR: TFloatField;
    entradaESSENCIA: TIBStringField;
    entradaUNIDADE: TIBStringField;
    entradaQUANTIDADE: TFloatField;
    entradaVALUNITARIO: TFloatField;
    entradaVALTOTAL: TFloatField;
    entradaALIQICMS: TFloatField;
    entradaCODIGOPRODUTO: TFloatField;
    entradaSITUACAO_TRIBUTARIA: TIBStringField;
    entradaTOTALPRODUTO: TFloatField;
    entradaDATALANCAMENTO: TDateTimeField;
    entradaNFNUMERO: TFloatField;
    entradaESSENCIATIPO: TIBStringField;
    entradaCODIGOESSENCIA: TFloatField;
    entradaTRANSFORMADO: TFloatField;
    entradaTORALOTEESSENCIA: TIBStringField;
    entradaSITUACAO: TFloatField;
    entradaSITDATA: TDateTimeField;
    entradaSITHORA: TDateTimeField;
    entradaFORNECEDOR: TIBStringField;
    entradaCPF: TFloatField;
    entradaINSCRICAO: TIBStringField;
    entradaCOMPRIMENTO: TFloatField;
    entradaDIAMETRO: TFloatField;
    entradaDIAMETRO1: TFloatField;
    entradaQUALIDADE: TIBStringField;
    entradaDIAMETROMEDIA: TFloatField;
    entradaOBS: TIBStringField;
    DataSource1: TDataSource;
    QRBand3: TQRBand;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRChildBand1: TQRChildBand;
    QRBand1: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel2: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepEstoque3: TRepEstoque3;

implementation

{$R *.dfm}

end.
