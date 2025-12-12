unit UnitRepEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepEstoque = class(TForm)
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
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
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
    TENTRADAINSCRICAO: TIBStringField;
    TENTRADACOMPRIMENTO: TFloatField;
    TENTRADADIAMETRO: TFloatField;
    TENTRADADIAMETRO1: TFloatField;
    TENTRADAQUALIDADE: TIBStringField;
    TENTRADADIAMETROMEDIA: TFloatField;
    TENTRADAOBS: TIBStringField;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr1: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand4: TQRBand;
    QRChildBand1: TQRChildBand;
    QRLabel7: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);



  private
    { Private declarations }
  public
  vlsub: double;
  end;

var
  RepEstoque: TRepEstoque;

implementation

uses UnitDM;

{$R *.dfm}
procedure TRepEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Close;
end;

procedure TRepEstoque.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrlabel7.Caption:= FormatFloat('#,####0.0000', vlsub);
end;

procedure TRepEstoque.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
vlsub:= vlsub+StrtoFloat(TENTRADA.fieldbyname('QUANTIDADE').AsString);
end;


procedure TRepEstoque.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
vlsub:= 0;
end;

procedure TRepEstoque.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
vlsub:= 0;
end;

end.
