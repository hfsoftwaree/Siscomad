unit UnitPesquisa3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmPesquisa3 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa3: TfrmPesquisa3;

implementation

uses UnitDM, UnitPrincipal, UnitSaidaMadeiras, UnitRSaida1, UnitREntrada1,
  UnitRepRomaneioSerrada, Unitromaneioserrada, Unitromaneiotoro,
  UnitRRomaneioToros, Unitconsultaproduto;

{$R *.dfm}

procedure TfrmPesquisa3.BitBtn2Click(Sender: TObject);
begin
if frmRomaneioserrada.Tag = 1 then
begin
      frmRomaneioSerrada.nota.Text := '0';
      frmromaneioserrada.BitBtn12.Enabled := false;
      DM.QCredor.Close;
      Close;
      end
      else
begin
if frmRomaneiotoro.Tag = 1 then
begin
      frmRomaneiotoro.nota.Text := '0';
      frmromaneiotoro.BitBtn12.Enabled := false;
      DM.QCredor.Close;
      Close;
      end
      else
end;
end;

procedure TfrmPesquisa3.Edit1Change(Sender: TObject);
begin
DM.QCredor.Locate('NOMECREDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmPesquisa3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa3.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
DM.QCredor.Open;
Edit1.SetFocus;
Edit1.Clear;
Panel2.Caption := '' + intTostr(DM.QCredor.RecordCount);
with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Credor Order by NOMECREDOR');
               Open;
    end
end;

procedure TfrmPesquisa3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
end;

procedure TfrmPesquisa3.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
    with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Credor Order by NOMECREDOR');
               Open;
               end;
               end;

begin
if ComboBox1.ItemIndex = 1 then
    begin
    with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Credor Order by CODIGOCREDOR');
               Open;
               end;
               end;
end;
end;

procedure TfrmPesquisa3.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa3.BitBtn1Click(Sender: TObject);
begin
if frmSaidaMadeiras.Tag = 1 then
begin
      frmSaidaMadeiras.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      frmSaidaMadeiras.inscricao.Text := DM.QCredor['IE'];
      frmSaidaMadeiras.DBEDIT1.Text := DM.QCredor['CNPJ'];
      frmSaidaMadeiras.DBEdit6.Text := DM.QCredor['CODIGOCREDOR'];
      Close;
      frmSaidaMadeiras.nota.SetFocus;
      end
      else

begin
if frmRSaida1.Tag = 1 then
begin
      frmRSaida1.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      frmRSaida1.EDIT1.Text := DM.QCredor['CODIGOCREDOR'];
      Close;
      frmRSaida1.nota1.SetFocus;
      end
      else

begin
if frmRRomaneioSerrada.Tag = 1 then
begin
      frmRRomaneioSerrada.EDIT1.Text := DM.QCredor['CODIGOCREDOR'];
      frmRRomaneioSerrada.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      frmRRomaneioSerrada.EDIT2.Text := DM.QCredor['ENDERECO'];
      frmRRomaneioSerrada.EDIT3.Text := DM.QCredor['BAIRRO'];
      frmRRomaneioSerrada.EDIT5.Text := DM.QCredor['CIDADE'];
      frmRRomaneioSerrada.EDIT6.Text := DM.QCredor['UF'];
      frmRRomaneioSerrada.EDIT7.Text := DM.QCredor['FONE'];
      frmRRomaneioSerrada.EDIT9.Text := DM.QCredor['CNPJ'];
      frmRRomaneioSerrada.EDIT10.Text := DM.QCredor['CPF'];
      frmRRomaneioSerrada.nota.SetFocus;
      Close;
      end
      else
begin
if frmRRomaneiotoros.Tag = 1 then
begin
      frmRRomaneiotoros.EDIT1.Text := DM.QCredor['CODIGOCREDOR'];
      frmRRomaneiotoros.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      frmRRomaneiotoros.EDIT2.Text := DM.QCredor['ENDERECO'];
      frmRRomaneiotoros.EDIT3.Text := DM.QCredor['BAIRRO'];
      frmRRomaneiotoros.EDIT5.Text := DM.QCredor['CIDADE'];
      frmRRomaneiotoros.EDIT6.Text := DM.QCredor['UF'];
      frmRRomaneiotoros.EDIT7.Text := DM.QCredor['FONE'];
      frmRRomaneiotoros.EDIT9.Text := DM.QCredor['CNPJ'];
      frmRRomaneiotoros.EDIT10.Text := DM.QCredor['CPF'];
      frmRRomaneiotoros.nota.SetFocus;
      Close;
      end
      else

begin
if frmRomaneioserrada.Tag = 1 then
begin
      frmRomaneioserrada.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      frmRomaneioserrada.inscricao.Text := DM.QCredor['CNPJ'];
      frmRomaneioSerrada.edit1.Text := DM.QCredor['CODIGOCREDOR'];
      frmRomaneioSerrada.nota.Enabled := true;
      frmRomaneioSerrada.data.Enabled := true;
      frmRomaneioSerrada.nota.SetFocus;
      Close;
      end
      else
begin
if frmRomaneiotoro.Tag = 1 then
begin
      frmRomaneiotoro.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      frmRomaneiotoro.inscricao.Text := DM.QCredor['CNPJ'];
      frmRomaneiotoro.edit1.Text := DM.QCredor['CODIGOCREDOR'];
      frmRomaneiotoro.nota.Enabled := true;
      frmRomaneiotoro.data.Enabled := true;
      frmRomaneiotoro.nota.SetFocus;
      Close;
      end
      else
begin
if frmconsultaproduto.Tag = 1 then
begin
      frmconsultaproduto.edit2.Text := DM.QCredor['CODIGOCREDOR'];
      frmconsultaproduto.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      Close;
      frmconsultaproduto.nota.SetFocus;
      end
      else
end;
end;
end;
end;
end;
end;
end;

end.
