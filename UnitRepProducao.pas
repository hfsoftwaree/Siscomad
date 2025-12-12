unit UnitRepProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, DB, IBCustomDataSet,
  IBTable, IBDatabase, IBQuery ;

type
  TRepProducao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    NRELATORIO: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    PF: TQRLabel;
    PI: TQRLabel;
    DENTRADA: TDataSource;
    TENTRADA: TIBTable;
    QRLabel10: TQRLabel;
    TENTRADACODLANCAMENTO: TIntegerField;
    TENTRADACODPRODUTO: TFloatField;
    TENTRADAESSENCIA: TIBStringField;
    TENTRADAQTORA: TFloatField;
    TENTRADAQSERRADA: TFloatField;
    TENTRADADATA: TDateTimeField;
    TENTRADAPRODUTO: TIBStringField;
    TENTRADACODIGOESSENCIA: TFloatField;
    TENTRADARESULTADO: TFloatField;
    QRGroup1: TQRGroup;
    QRChildBand1: TQRChildBand;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRExpr3: TQRExpr;
    subserrada: TQRLabel;
    subtora: TQRLabel;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel8: TQRLabel;
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
  RepProducao: TRepProducao;

implementation

uses UnitDM;
              {$R *.dfm}

procedure TRepProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TENTRADA.Close;
DM.QManutencao.Close;
end;

procedure TRepProducao.FormShow(Sender: TObject);
begin
DM.QManutencao.Open;
end;

procedure TRepProducao.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
vlsub:= 0;
vlsub1:= 0;
end;

procedure TRepProducao.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
vlsub:= vlsub+StrtoFloat(TENTRADA.fieldbyname('QTORA').AsString);
vlsub1:= vlsub1+StrtoFloat(TENTRADA.fieldbyname('QSERRADA').AsString);
end;

procedure TRepProducao.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
SUBTORA.Caption:= FormatFloat('#,####0.0000', vlsub);
SUBSERRADA.Caption:= FormatFloat('#,####0.0000', vlsub1);
end;

end.
