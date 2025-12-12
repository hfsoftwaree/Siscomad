unit UnitConsultaESerrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, jpeg, Gauges;

type
  TfrmConsultaESerrada = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    ESTOQUE: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Tipo: TRadioGroup;
    Label4: TLabel;
    TENTRADA1: TLabel;
    Edit1: TEdit;
    TSERRADO: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label5: TLabel;
    SERRADA: TLabel;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    produto: TDBLookupComboBox;
    procedure TipoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EssenciaEnter(Sender: TObject);
    procedure produtoClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaESerrada: TfrmConsultaESerrada;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator;

{$R *.dfm}

procedure TfrmConsultaESerrada.TipoClick(Sender: TObject);
begin
   case (Tipo.ItemIndex) of
     0: Begin
            DM.TsubProdutos.Open;
            DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            Produto.Enabled := True;
            Essencia.Enabled := True;
        end;
     1: Begin
            DM.TsubProdutos.Open;
            DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';            
            Produto.Enabled := True;
            Essencia.Enabled := False;
        end;
     2: Begin
            Produto.Enabled := False;
            Essencia.Enabled := False;
        end;
   end
end;

procedure TfrmConsultaESerrada.BitBtn3Click(Sender: TObject);
//var vn1, vn2, vn6, vsoma : Real;
var total, total1, total2, total3  : Real;
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vsoma, vsoma1 : Real;
begin
   if Tipo.ItemIndex = -1 then
      Begin
          Application.MessageBox('Tipo de Consulta deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
      end;

if (Tipo.ItemIndex <> -1) then
begin
   case (Tipo.ItemIndex) of
      0: Begin

    If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          produto.SetFocus;
      end
      else
      begin
    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
          essencia.SetFocus;
      end
      end;

    if (Produto.Text <> '')and (essencia.Text <> '') then
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];
        DM.TPRODUCAO.Filtered := False;
        DM.TPRODUCAO.Close;
        DM.TPRODUCAO.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODPRODUTO = ' + (Edit2.Text);
        DM.TPRODUCAO.Filtered := True;
        DM.TPRODUCAO.Open;

        if DM.TPRODUCAO.RecordCount = 0 then
        begin
        TSERRADO.Caption := '0,0000';
        end
        else
        total2 := 0;
        DM.TPRODUCAO.First;
        while not DM.TPRODUCAO.Eof  do
        begin
        total2 := DM.TPRODUCAO['QSERRADA'] + total2;
        DM.TPRODUCAO.Next;
        TSERRADO.Caption := FormatCurr('#0.0000',total2);
        end;

        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TESDISCRIMINACAO.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
        DM.TESDISCRIMINACAO.Filtered := True;
        DM.TESDISCRIMINACAO.Open;

        if DM.TESDISCRIMINACAO.RecordCount = 0 then
        begin
        SERRADA.Caption := '0,0000';
        end
        else
        total3 := 0;
        DM.TESDISCRIMINACAO.First;
        while not DM.TESDISCRIMINACAO.Eof  do
        begin
        total3 := DM.TESDISCRIMINACAO['QUANTIDADE'] + total3;
        DM.TESDISCRIMINACAO.Next;
        SERRADA.Caption := FormatCurr('#0.0000',total3);
        end;

        DM.TSaida_Discriminacao.Filtered := False;
        DM.TSaida_Discriminacao.Close;
        DM.TSaida_Discriminacao.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
        DM.TSaida_Discriminacao.Filtered := True;
        DM.TSaida_Discriminacao.Open;

        if DM.TSaida_Discriminacao.RecordCount = 0 then
        begin
        TENTRADA1.Caption := '0,0000';
        end
        else
        total2 := 0;
        DM.TSaida_discriminacao.First;
        while not DM.TSaida_discriminacao.Eof  do
        begin
        total2 := DM.TSaida_discriminacao['TOTALM3'] + total2;
        DM.TSaida_discriminacao.Next;
        TENTRADA1.Caption := FormatCurr('#0.0000',total2);
        end;

        vn4:=0;
        vn5:=0;
        vn7:=0;
        vsoma1:=0;
        vn4:= StrToFloat(TENTRADA1.Caption);
        vn5:= StrToFloat(TSERRADO.Caption);
        vn7:= StrToFloat(SERRADA.Caption);
        vsoma1 := vn7 + vn5 - vn4;
        ESTOQUE.Caption := FloatToStr(vsoma1);
        ESTOQUE.Caption := FormatCurr('#0.0000',vsoma1);
        end;
    end;

      1: Begin
    If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          produto.SetFocus;
      end;

    if (Produto.Text <> '') then
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TESDISCRIMINACAO.Filter := 'CODIGOPRODUTO = ' + (Edit2.Text);
        DM.TESDISCRIMINACAO.Filtered := True;
        DM.TESDISCRIMINACAO.Open;

        if DM.TESDISCRIMINACAO.RecordCount = 0 then
        begin
        SERRADA.Caption := '0,0000';
        end
        else
        total3 := 0;
        DM.TESDISCRIMINACAO.First;
        while not DM.TESDISCRIMINACAO.Eof  do
        begin
        total3 := DM.TESDISCRIMINACAO['QUANTIDADE'] + total3;
        DM.TESDISCRIMINACAO.Next;
        SERRADA.Caption := FormatCurr('#0.0000',total3);
        end;

        DM.TPRODUCAO.Filtered := False;
        DM.TPRODUCAO.Close;
        DM.TPRODUCAO.Filter := 'CODPRODUTO = ' + (Edit2.Text);
        DM.TPRODUCAO.Filtered := True;
        DM.TPRODUCAO.Open;
        if DM.TPRODUCAO.RecordCount = 0 then
        begin
        TSERRADO.Caption := '0,0000';
        end
        else
        total2 := 0;
        DM.TPRODUCAO.First;
        while not DM.TPRODUCAO.Eof  do
        begin
        total2 := DM.TPRODUCAO['QSERRADA'] + total2;
        DM.TPRODUCAO.Next;
        TSERRADO.Caption := FormatCurr('#0.0000',total2);
        end;

        DM.TSaida_Discriminacao.Filtered := False;
        DM.TSaida_Discriminacao.Close;
        DM.TSaida_Discriminacao.Filter := 'CODIGOPRODUTO = ' + (Edit2.Text);
        DM.TSaida_Discriminacao.Filtered := True;
        DM.TSaida_discriminacao.Open;
        if DM.TSaida_discriminacao.RecordCount = 0 then
        begin
        TENTRADA1.Caption := '0,0000';
        end
        else
        total1 := 0;
        DM.TSaida_discriminacao.First;
        while not DM.TSaida_discriminacao.Eof do
        begin
        total1 := DM.TSaida_discriminacao['TOTALM3'] + total1;
        DM.TSaida_discriminacao.Next;
        TENTRADA1.Caption := FormatCurr('#0.0000',total1);
        end;

        vn2:=0;
        vn6:=0;
        vn8:=0;
        vsoma:=0;
        vn2:= StrToFloat(TENTRADA1.Caption);
        vn6:= StrToFloat(TSERRADO.Caption);
        vn8:= StrToFloat(SERRADA.Caption);
        vsoma := vn8 + vn6 - vn2;
        ESTOQUE.Caption := FloatToStr(vsoma);
        ESTOQUE.Caption := FormatCurr('#0.0000',vsoma);
        end;
        end;

     2: Begin
        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        DM.TESDISCRIMINACAO.Open;

        if DM.TESDISCRIMINACAO.RecordCount = 0 then
        begin
        SERRADA.Caption := '0,0000';
        end
        else
        begin
        total3 := 0;
        DM.TESDISCRIMINACAO.First;
        while not DM.TESDISCRIMINACAO.Eof  do
        begin
        total3 := DM.TESDISCRIMINACAO['QUANTIDADE'] + total3;
        DM.TESDISCRIMINACAO.Next;
        SERRADA.Caption := FormatCurr('#0.0000',total3);
        end;


        DM.TPRODUCAO.Filtered := False;
        DM.TPRODUCAO.Close;
        DM.TPRODUCAO.Open;
        if DM.TPRODUCAO.RecordCount = 0 then
        begin
        TSERRADO.Caption := '0,0000';
        end
        else
        total2 := 0;
        DM.TPRODUCAO.First;
        while not DM.TPRODUCAO.Eof  do
        begin
        total2 := DM.TPRODUCAO['QSERRADA'] + total2;
        DM.TPRODUCAO.Next;
        TSERRADO.Caption := FormatCurr('#0.0000',total2);
        end;


        DM.TSaida_Discriminacao.Filtered := False;
        DM.TSaida_Discriminacao.Close;
        DM.TSaida_discriminacao.Open;
        if DM.TSaida_discriminacao.RecordCount = 0 then
        begin
        TENTRADA1.Caption := '0,0000';
        end
        else
        total1 := 0;
        DM.TSaida_discriminacao.First;
        while not DM.TSaida_discriminacao.Eof do
        begin
        total1 := DM.TSaida_discriminacao['TOTALM3'] + total1;
        DM.TSaida_discriminacao.Next;
        TENTRADA1.Caption := FormatCurr('#0.0000',total1);
        end;


        vn2:=0;
        vn6:=0;
        vn8:=0;
        vsoma:=0;
        vn2:= StrToFloat(TENTRADA1.Caption);
        vn6:= StrToFloat(TSERRADO.Caption);
        vn8:= StrToFloat(SERRADA.Caption);
        vsoma := vn8 + vn6 - vn2;
        ESTOQUE.Caption := FloatToStr(vsoma);
        ESTOQUE.Caption := FormatCurr('#0.0000',vsoma);
        end;

end;
end;
end;
end;

procedure TfrmConsultaESerrada.BitBtn1Click(Sender: TObject);
begin
DM.QEssencia.Close;
TSERRADO.Caption := '';
TENTRADA1.Caption := '';
SERRADA.Caption := '';
DM.TEssencia.Cancel;
DM.TEssencia.Close;
DM.TPRODUCAO.Close;
DM.TsubPRODUTOs.Close;
DM.TSaida_Discriminacao.Close;
DM.TESDISCRIMINACAO.Close;
Tipo.ItemIndex := -1;
ESTOQUE.Caption := '';
produto.Enabled := false;
produto.ListFieldIndex := 0;
essencia.ListFieldIndex := 0;
Edit1.Clear;
Edit2.Clear;
Close;
end;





procedure TfrmConsultaESerrada.EssenciaEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmConsultaESerrada.produtoClick(Sender: TObject);
begin
EDIT2.Text := DM.TProduto['GRAUIND'];
end;

procedure TfrmConsultaESerrada.DBLookupComboBox1Enter(Sender: TObject);
begin
Produto.DropDown;
end;

procedure TfrmConsultaESerrada.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO'];
end;


procedure TfrmConsultaESerrada.Panel2Click(Sender: TObject);
begin
self.Visible := false;
end;



end.
