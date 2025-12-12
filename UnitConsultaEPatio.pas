unit UnitConsultaEPatio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, jpeg, Grids, DBGrids;

type
  TfrmConsultaEPatio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Tipo: TRadioGroup;
    TENTRADA1: TLabel;
    Edit1: TEdit;
    FATOR: TDBEdit;
    CODIGOFATOR: TEdit;
    Image1: TImage;
    procedure TipoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaEPatio: TfrmConsultaEPatio;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator, UnitRepEstoque;

{$R *.dfm}

procedure TfrmConsultaEPatio.TipoClick(Sender: TObject);
begin
   case (Tipo.ItemIndex) of
     0: Begin
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            Essencia.Enabled := True;
            Essencia.SetFocus;
            Essencia.DropDown;
        end;

     1: Begin
            DM.TEssencia.Close;
            Essencia.Enabled := False;
        end;
   end
end;

procedure TfrmConsultaEPatio.BitBtn3Click(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vsoma, vsoma1 : Real;
var total, total1, total2, total3, total4  : Real;
begin
   if Tipo.ItemIndex = -1 then
      Begin
          Application.MessageBox('Tipo de Consulta deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
      end;

if Tipo.ItemIndex <> -1 then
begin
   case (Tipo.ItemIndex) of
      0: Begin
//        EINICIAL1.Caption := EINICIAL.Text;

        DM.TEntrada_Discriminacao.Filtered := False;
        DM.TEntrada_Discriminacao.Close;
        DM.TEntrada_Discriminacao.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ ' and SITUACAO = ' + '0';
        DM.TEntrada_Discriminacao.Filtered := True;
        DM.TEntrada_Discriminacao.Open;

        if DM.TEntrada_Discriminacao.RecordCount = 0 then
        begin
        TENTRADA1.Caption := '0,0000';
        end
        else
        total2 := 0;
        DM.TEntrada_discriminacao.First;
        while not DM.TEntrada_discriminacao.Eof  do
        begin
        total2 := DM.TEntrada_discriminacao['QUANTIDADE'] + total2;
        DM.TEntrada_discriminacao.Next;
        TENTRADA1.Caption := FormatCurr('#0.0000',total2);
        end;
        end;

      1: Begin
        DM.TEntrada_Discriminacao.Filtered := False;
        DM.TEntrada_Discriminacao.Close;
        DM.TEntrada_Discriminacao.Filter := 'SITUACAO = ' + '0';
        DM.TEntrada_discriminacao.Filtered:=True;
        DM.TEntrada_discriminacao.Open;
        if DM.TEntrada_discriminacao.RecordCount = 0 then
        begin
        TENTRADA1.Caption := '0,0000';
        end
        else
        total1 := 0;
        DM.TEntrada_discriminacao.First;
        while not DM.TEntrada_discriminacao.Eof do
        begin
        total1 := DM.TEntrada_discriminacao['QUANTIDADE'] + total1;
        DM.TEntrada_discriminacao.Next;
        TENTRADA1.Caption := FormatCurr('#0.0000',total1);
        end;
end;
end;
end;
end;

procedure TfrmConsultaEPatio.BitBtn1Click(Sender: TObject);
begin
DM.TEntrada_Discriminacao.Filtered := False;
DM.TPRODUCAO.Filtered := False;
TENTRADA1.Caption := '';
DM.QProduto.Close;;
DM.QEssencia.Close;
DM.TEssencia.Cancel;
DM.TEssencia.Close;
DM.TPRODUCAO.Close;
DM.TEntrada_Discriminacao.Close;
Tipo.ItemIndex := -1;
Close;
end;

procedure TfrmConsultaEPatio.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO'];
end;








end.
