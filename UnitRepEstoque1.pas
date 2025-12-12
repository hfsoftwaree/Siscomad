unit UnitRepEstoque1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepEstoque1 = class(TForm)
    QuickRep1: TQuickRep;
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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepEstoque1: TRepEstoque1;

implementation

uses UnitDM;


{$R *.dfm}



end.
