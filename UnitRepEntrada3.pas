unit UnitRepEntrada3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepEntrada3 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    NF: TQRDBText;
    DENTRADA: TDataSource;
    TENTRADA: TIBTable;
    TENTRADACODDISCRIMINACAO: TIntegerField;
    TENTRADACODIGOFORNECEDOR: TFloatField;
    TENTRADAESSENCIA: TIBStringField;
    TENTRADAUNIDADE: TIBStringField;
    TENTRADAQUANTIDADE: TFloatField;
    TENTRADAVALUNITARIO: TFloatField;
    TENTRADAVALTOTAL: TFloatField;
    TENTRADAALIQICMS: TFloatField;
    TENTRADACODIGOPRODUTO: TFloatField;
    TENTRADASITUACAO_TRIBUTARIA: TIBStringField;
    TENTRADATOTALPRODUTO: TFloatField;
    TENTRADADATALANCAMENTO: TDateTimeField;
    TENTRADANFNUMERO: TFloatField;
    TENTRADAESSENCIATIPO: TIBStringField;
    TENTRADACODIGOESSENCIA: TFloatField;
    TENTRADATRANSFORMADO: TFloatField;
    TENTRADATORALOTEESSENCIA: TIBStringField;
    TENTRADASITUACAO: TFloatField;
    TENTRADASITDATA: TDateTimeField;
    TENTRADASITHORA: TDateTimeField;
    TENTRADAFORNECEDOR: TIBStringField;
    TENTRADACPF: TFloatField;
    QRDBText5: TQRDBText;
    TENTRADAINSCRICAO: TIBStringField;
    QRLabel7: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRChildBand1: TQRChildBand;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRExpr3: TQRExpr;
    subquantidade: TQRLabel;
    subtotal: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
 vlsub, vlsub1: double;    
  end;

var
  RepEntrada3: TRepEntrada3;

implementation

uses UnitDM;


{$R *.dfm}

procedure TRepEntrada3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Close;
end;

procedure TRepEntrada3.FormShow(Sender: TObject);
begin
DM.QManutencao.Open;
TENTRADA.Open;
end;

procedure TRepEntrada3.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
vlsub:= 0;
vlsub1:= 0;
end;

procedure TRepEntrada3.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
vlsub:= vlsub+StrtoFloat(TENTRADA.fieldbyname('QUANTIDADE').AsString);
vlsub1:= vlsub1+StrtoFloat(TENTRADA.fieldbyname('VALTOTAL').AsString);
end;

procedure TRepEntrada3.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
SUBQUANTIDADE.Caption:= FormatFloat('#,####0.0000', vlsub);
SUBTOTAL.Caption:= FormatFloat('#,####0.00', vlsub1);
end;

end.
