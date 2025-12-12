unit UnitLimparBD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CJVBlinkLabel, ExtCtrls, DB, ComCtrls, Gauges,
  DBCtrls, Grids, DBGrids;

type
  TfrmLimparBD = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLimparBD: TfrmLimparBD;

implementation

uses UnitDM;

{$R *.dfm}
procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;

procedure TfrmLimparBD.BitBtn2Click(Sender: TObject);
begin
checkbox1.Checked := false;
checkbox2.Checked := false;
checkbox3.Checked := false;
checkbox4.Checked := false;
checkbox5.Checked := false;
checkbox6.Checked := false ;
checkbox7.Checked := false;
checkbox8.Checked := false;
checkbox9.Checked := false;
checkbox10.Checked := false;
checkbox11.Checked := false;
checkbox12.Checked := false;
checkbox13.Checked := false;
close;
end;

procedure TfrmLimparBD.BitBtn1Click(Sender: TObject);
begin
if (checkbox1.Checked = false) and (checkbox2.Checked = false)and (checkbox3.Checked = false)and (checkbox4.Checked = false)and (checkbox5.Checked = false)and (checkbox6.Checked = false)and (checkbox7.Checked = false)and (checkbox8.Checked = false)and (checkbox9.Checked = false)and (checkbox10.Checked = false)and (checkbox11.Checked = false)and (checkbox12.Checked = false)and (checkbox13.Checked = false) then
  begin
  Application.MessageBox('Selecione pelo menos uma das opções!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
  begin
If Application.MessageBox('Ao confirmar, todos os lançamentos registrados até a presente data serão excluídos, Confirma?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
if checkbox13.Checked = true then
begin
   DM.TManutencao.Open;
   tbDBDeleteAll(DM.Tmanutencao);
   IF dm.Tmanutencao.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela Manutenção limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox1.Checked = true then
begin
   DM.Tessencia.Open;
   tbDBDeleteAll(DM.Tessencia);
   IF dm.Tessencia.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela essência limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox2.Checked = true then
begin
   DM.Tproduto.Open;
   tbDBDeleteAll(DM.Tproduto);
   IF dm.Tproduto.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela produtos limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox3.Checked = true then
begin
   DM.Tsubprodutos.Open;
   tbDBDeleteAll(DM.Tsubprodutos);
   IF dm.Tsubprodutos.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela Sub-produtos limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox4.Checked = true then
begin
   DM.Tmunicipio.Open;
   tbDBDeleteAll(DM.Tmunicipio);
   IF dm.Tmunicipio.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela município limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox5.Checked = true then
begin
   DM.TFornecedor.Open;
   tbDBDeleteAll(DM.Tfornecedor);
   IF dm.TFornecedor.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela fornecedor limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox6.Checked = true then
begin
   DM.Tcredor.Open;
   tbDBDeleteAll(DM.Tcredor);
   IF dm.Tcredor.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela clientes limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox7.Checked = true then
begin
   DM.Tentrada.Open;
   DM.TEntrada_discriminacao.Open;
   tbDBDeleteAll(DM.Tentrada);
   tbDBDeleteAll(DM.Tentrada_discriminacao);
   IF dm.Tentrada.RecordCount = 0 then
   IF dm.Tentrada_discriminacao.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela entrada de madeiras em toros limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox8.Checked = true then
begin
   DM.Teserrada.Open;
   DM.Tesdiscriminacao.Open;
   tbDBDeleteAll(DM.Teserrada);
   tbDBDeleteAll(DM.Tesdiscriminacao);
   IF dm.Teserrada.RecordCount = 0 then
   IF dm.Tesdiscriminacao.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela entrada de madeira serrada limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox9.Checked = true then
begin
   DM.tproducao.Open;
   tbDBDeleteAll(DM.Tproducao);
   IF dm.Tproducao.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela produção limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox10.Checked = true then
begin
   DM.Tsaida.Open;
   DM.Tsaida_discriminacao.Open;
   tbDBDeleteAll(DM.Tsaida);
   tbDBDeleteAll(DM.Tsaida_discriminacao);
   IF dm.Tsaida.RecordCount = 0 then
   IF dm.Tsaida_discriminacao.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela saída de madeira serrada limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

if checkbox11.Checked = true then
begin
   DM.tromaneiotoro.Open;
   tbDBDeleteAll(DM.Tromaneiotoro);
   IF dm.Tromaneiotoro.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela romaneio de madeiras em toros limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;


if checkbox12.Checked = true then
begin
   DM.tromaneioserrada.Open;
   tbDBDeleteAll(DM.Tromaneioserrada);
   IF dm.Tromaneioserrada.RecordCount = 0 then
   begin
   Application.MessageBox('Tabela romaneio de madeira serrada limpa com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
   end;
   end;

end;
end;
end;



end.
