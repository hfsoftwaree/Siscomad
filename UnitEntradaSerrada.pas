unit UnitEntradaSerrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, dbAleGrids, EDBNum, EDBDate, ToolEdit, CurrEdit,
  SSSpin, jpeg;

type
  TfrmEntradaSerrada = class(TForm)
    Panel2: TPanel;
    BitBtn111: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn115: TBitBtn;
    ImageList1: TImageList;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    data: TEvDBDateEdit;
    DBEdit1: TDBEdit;
    DBEDIT6: TEvDBZeroEdit;
    fornecedor: TDBEdit;
    inscricao: TDBEdit;
    g: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn14: TBitBtn;
    DBGrid3: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    quantidade: TLabel;
    Label6: TLabel;
    totalproduto: TLabel;
    nota: TSpinEditXP;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn115Click(Sender: TObject);
    procedure BitBtn111Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure TabSheet1Show(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure pesoliquidoExit(Sender: TObject);
    procedure EvDBNumEdit10Exit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure dataEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure notaExit(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaSerrada: TfrmEntradaSerrada;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaTorosProdutos, UnitSobre,
  UnitPesquisaEntrada, UnitEntradaToros, UnitEntradaSerradaProdutos;


{$R *.dfm}

procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;

procedure TfrmEntradaSerrada.BitBtn4Click(Sender: TObject);
begin
DM.QFornecedor.Open;
if DM.QFornecedor.RecordCount = 0 then
begin
DM.QFornecedor.Close;
Application.MessageBox('Não há Fornecedor(es) Cadastrado(s), Verifíque!', 'Entrada', mb_Ok + mb_IconExclamation);
end
else
begin
bitbtn4.Enabled := False;
DM.QFornecedor.Close;
DM.TESERRADA.Open;
DM.TESERRADA.Append;
DM.QMunicipio.Open;
frmPesquisa.ShowModal;
end;
end;

procedure TfrmEntradaSerrada.BitBtn115Click(Sender: TObject);
var total, total1 : Real;
begin
If Application.MessageBox('Deseja Excluir esse produto?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
   DM.TESDISCRIMINACAO.Delete;
   total := 0;
   total1 := 0;

   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;

   DM.TESDISCRIMINACAO.Prior;
   while not DM.TESDISCRIMINACAO.Eof do
     begin
        total := DM.TESDISCRIMINACAO['VALTOTAL'] + total ;
        total1 := DM.TESDISCRIMINACAO['QUANTIDADE'] + total1 ;
        DM.TESDISCRIMINACAO.Next;
     end;
    totalproduto.caption := FormatCurr('#0.00',total);
    quantidade.caption := FormatCurr('#0.000',total1);
     g.Caption := 'Produtos > ' + intTostr(DM.TESDISCRIMINACAO.RecordCount);
end
else

end;

procedure TfrmEntradaSerrada.BitBtn111Click(Sender: TObject);
begin
	if fornecedor.Text='' then
   	begin
         Application.MessageBox('Fornecedor deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         fornecedor.SetFocus;
    end
    else
begin
	if nota.Text='000000' then
   	begin
         Application.MessageBox('Numero da Nota Fiscal deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         nota.SetFocus;
    end
    else
begin
	if data.EditText = '' then
   	begin
         Application.MessageBox('Data de Emissão deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         data.SetFocus;
    end
    end;
    end;

if (fornecedor.Text <> '')and (nota.Text <> '') and (data.Text <> '')  then
begin
If Application.MessageBox('Confirma a Inclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
      DM.TESERRADA.Post;
      If Application.MessageBox('Continua Lançamento?', 'Confirmação',
      mb_YesNo + mb_ICONQUESTION) = idYes then
      begin

      bitbtn10.Enabled := false;
      bitbtn11.Enabled := false;
      bitbtn12.Enabled := false;
      DM.TESERRADA.Append;
      DBGrid2.Visible := False;
      DBGrid3.Visible := True;
      DM.TESDISCRIMINACAO.Close;
      frmPesquisa.ShowModal;
      end
      else
      begin
DM.TESERRADA.Close;
DM.TESDISCRIMINACAO.Close;
DM.TSERRADA1.Close;
DM.TESDISCRIMINACAO1.Close;
DM.QFornecedor.Close;
DM.QEssencia.Close;
DM.QMunicipio.Close;
BitBtn4.Enabled := True;
Close;
      end;
      end;
nota.SetFocus;
end;
end;

procedure TfrmEntradaSerrada.BitBtn2Click(Sender: TObject);
begin
DM.TESERRADA.Cancel;
DM.TESERRADA.Close;
DM.TESDISCRIMINACAO.Cancel;
DM.TESDISCRIMINACAO.Close;
DM.QFornecedor.Close;
DM.QMunicipio.Close;
g.Caption := 'Produtos ';
BitBtn4.Enabled := True;
BitBtn12.Enabled := false;
BitBtn10.Enabled := false;
BitBtn11.Enabled := false;
BitBtn14.Enabled := false;
Data.Clear;
DBGrid2.Visible := False;
DBGrid3.Visible := True;
nota.Text := '0';
end;

procedure TfrmEntradaSerrada.BitBtn3Click(Sender: TObject);
begin
g.Caption := 'Produtos ';
DM.TESERRADA.Close;
   DM.TESDISCRIMINACAO.Filtered := False;
DM.TESDISCRIMINACAO.Close;
DM.TSERRADA1.Close;
DM.TESDISCRIMINACAO1.Close;
DM.QFornecedor.Close;
DM.QEssencia.Close;
DM.QMunicipio.Close;
BitBtn12.Enabled := False;
BitBtn4.Enabled := True;
nota.Text := '0';
Close;

end;



procedure TfrmEntradaSerrada.FormShow(Sender: TObject);
begin
Self.Tag := 1;
DM.TESERRADA.Close;
bitbtn4.SetFocus; 
end;

procedure TfrmEntradaSerrada.TabSheet1Show(Sender: TObject);
begin
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
DM.QFornecedor.Close;
DM.TEntrada1.Close;
DM.TEntradaDiscriminacao1.Close;
end;

procedure TfrmEntradaSerrada.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmEntradaSerrada.MaskEdit4Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmEntradaSerrada.DBEdit4Exit(Sender: TObject);
begin
bitbtn111.Click;
end;

procedure TfrmEntradaSerrada.TabSheet2Show(Sender: TObject);
begin
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
DM.QFornecedor.Open;
DM.QFornecedor.Open;
  with DM.QFornecedor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
      Open;
    end;
end;

procedure TfrmEntradaSerrada.BitBtn10Click(Sender: TObject);
begin
DM.TESDISCRIMINACAO.Next;
end;

procedure TfrmEntradaSerrada.BitBtn11Click(Sender: TObject);
begin
DM.TESDISCRIMINACAO.Prior;
end;

procedure TfrmEntradaSerrada.pesoliquidoExit(Sender: TObject);
begin
if fornecedor.Text = '' then
   	begin
      exit;
    end
    else
if nota.text = '000000' then
    begin
      Application.MessageBox('Numero da Nota Fiscal deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
      nota.SetFocus;
    end;

if (fornecedor.Text <> '') and (nota.text <> '000000') then
begin
If Application.MessageBox('Deseja Inserir Produtos Agora?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.QProduto.Open;
DM.TESDISCRIMINACAO.Open;
DM.TESDISCRIMINACAO.Append;
frmEntradaSerradaProdutos.DBEDIT3.Text := DBEDit6.Text;
frmEntradaSerradaProdutos.DBEDIT4.Text := nota.Text;
frmEntradaSerradaProdutos.DBEDIT6.Text := fornecedor.Text;
frmEntradaSerradaProdutos.DBEDIT7.Text := DBEDIT1.Text;
frmEntradaSerradaProdutos.DBEDIT8.Text := inscricao.Text;
frmEntradaSerradaProdutos.Show;
frmEntradaSerradaProdutos.DBEDIT1.SetFocus;
end
else

end;
end;




procedure TfrmEntradaSerrada.EvDBNumEdit10Exit(Sender: TObject);
begin
DM.TESDISCRIMINACAO.Filtered := False;
DM.TESDISCRIMINACAO.Filter := 'NFNUMERO = ' + (nota.Text);
DM.TESDISCRIMINACAO.Filtered := True;

if DM.TESDISCRIMINACAO.RecordCount = 0 then
begin
Application.MessageBox('Deve-se informar pelo menos 01(um) produto para esta Nota Fiscal!', 'Informação', mb_Ok + mb_IconError);
end
else
BITBTN111.Click;
end;



procedure TfrmEntradaSerrada.BitBtn12Click(Sender: TObject);
begin
if fornecedor.Text = '' then
   	begin
      Application.MessageBox('Fornecedor deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
      frmPesquisa.ShowModal;
    end
    else
begin
if nota.text = '0' then
    begin
      Application.MessageBox('Numero da Nota Fiscal deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
      nota.SetFocus;
      end;
    end;

if (fornecedor.Text <> '') and (nota.text <> '0') then
begin
DM.QProduto.Open;
DM.TESDISCRIMINACAO.Open;
DM.TESDISCRIMINACAO.Append;
frmEntradaSerradaProdutos.DBEDIT3.Text := DBEDit6.Text;
frmEntradaSerradaProdutos.DBEDIT4.Text := nota.Text;
frmEntradaSerradaProdutos.DBEDIT6.Text := fornecedor.Text;
frmEntradaSerradaProdutos.DBEDIT7.Text := DBEDIT1.Text;
frmEntradaSerradaProdutos.DBEDIT8.Text := inscricao.Text;
frmEntradaSerradaProdutos.Show;
frmEntradaSerradaProdutos.DBEDIT1.SetFocus;
end
else
nota.SetFocus;
end;

procedure TfrmEntradaSerrada.dataEnter(Sender: TObject);
begin
Data.Text := DateToStr(now);
end;



procedure TfrmEntradaSerrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
end;



procedure TfrmEntradaSerrada.notaExit(Sender: TObject);
var total, total1 : Real;
begin
if dbedit6.Text = '' then bitbtn4.Click;
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;

begin
   if DM.TESDISCRIMINACAO.RecordCount <> 0 then
   begin
   DBGrid3.Visible := False;
   DBGrid2.Visible := True;
   BitBtn10.Enabled := True;
   BitBtn11.Enabled := True;
   BitBtn14.Enabled := True;

     total := 0;
     total1 := 0;
   DM.TESDISCRIMINACAO.First;
   while not DM.TESDISCRIMINACAO.Eof do
     begin
        total := DM.TESDISCRIMINACAO['VALTOTAL'] + total ;
        total1 := DM.TESDISCRIMINACAO['QUANTIDADE'] + total1 ;
        DM.TESDISCRIMINACAO.Next;
     end;
    totalproduto.caption := FormatCurr('#0.00',total);
    quantidade.caption := FormatCurr('#0.000',total1);
   g.Caption := 'Produtos > ' + intTostr(DM.TESDISCRIMINACAO.RecordCount);
     If Application.MessageBox('Já possui lançamento para o numero de Nota Fiscal informado, do Fornecedor selecionado, Deseja Continuar?', 'Confirmação',
     mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        exit;
        end
        else
        begin
        nota.SetFocus;
        end
   end;
end;
    g.Caption := 'Produtos > ' + intTostr(DM.TESDISCRIMINACAO.RecordCount);
    BitBtn10.Enabled := false;
    BitBtn11.Enabled := false;
    BitBtn14.Enabled := false;
end;



procedure TfrmEntradaSerrada.BitBtn14Click(Sender: TObject);
begin
DM.TESDISCRIMINACAO.EDIT;
frmEntradaSerradaProdutos.Show;
frmEntradaSerradaProdutos.DBEDIT1.SetFocus;
end;

end.
