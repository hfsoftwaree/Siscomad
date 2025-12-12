unit UnitEntradaSerradaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  EDBDate;

type
  TfrmEntradaSerradaProdutos = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    QUANTIDADE: TEvDBNumEdit;
    VALUNITARIO: TEvDBNumEdit;
    VALTOTAL: TEvDBNumEdit;
    ESSENCIA: TDBLookupComboBox;
    DBEDIT1: TEvDBZeroEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SITUACAO: TDBEdit;
    EDITDATA: TEvDBDateEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    ESSENCIATIPO: TDBLookupComboBox;
    Panel13: TPanel;
    DBEdit9: TDBEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VALUNITARIOExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ESSENCIAClick(Sender: TObject);
    procedure ESSENCIAEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESSENCIATIPOClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaSerradaProdutos: TfrmEntradaSerradaProdutos;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, UnitEntradaSerrada;

{$R *.dfm}

procedure TfrmEntradaSerradaProdutos.BitBtn3Click(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmEntradaSerradaProdutos.BitBtn1Click(Sender: TObject);
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
begin
	if QUANTIDADE.Text='0,0000' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         QUANTIDADE.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '') and (QUANTIDADE.Text <> '0,0000') and (VALUNITARIO.Text <> '0,00')  then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
        SITUACAO.Text := '0';
        DM.TESDISCRIMINACAO.Post;
        If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TESDISCRIMINACAO.Append;
        EDITDATA.Text := frmEntradaSerrada.data.Text;
        DBEDIT3.Text := frmEntradaSerrada.DBEDit6.Text;
        DBEDIT4.Text := frmEntradaSerrada.nota.Text;
        DBEDIT6.Text := frmEntradaSerrada.FORNECEDOR.Text;
        DBEDIT7.Text := frmEntradaSerrada.DBEDIT1.Text;
        DBEDIT8.Text := frmEntradaSerrada.INSCRICAO.Text;
        DBEDIT1.SetFocus;
        end
        else
        begin
        close;
        end;
        end;
        end;
end;

procedure TfrmEntradaSerradaProdutos.VALUNITARIOExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= QUANTIDADE.Value;
      vn2:= VALUNITARIO.Value;
      vsoma := vn1 * vn2;
      VALTOTAL.Text := FloatToStr(vsoma);
      bitbtn1.Click; 
end;

procedure TfrmEntradaSerradaProdutos.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmEntradaSerradaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var total, total1 : Real;
begin
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO.Filter := 'NFNUMERO = ' + (frmEntradaSerrada.nota.Text);
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;

begin
   if DM.TESDISCRIMINACAO.RecordCount <> 0 then
   begin
   frmEntradaSerrada.DBGrid3.Visible := False;
   frmEntradaSerrada.DBGrid2.Visible := True;
   frmEntradaSerrada.BitBtn10.Enabled := True;
   frmEntradaSerrada.BitBtn11.Enabled := True;

   total := 0;
   total1 := 0;
   DM.TESDISCRIMINACAO.First;
   while not DM.TESDISCRIMINACAO.Eof do
     begin
        total := DM.TESDISCRIMINACAO['VALTOTAL'] + total ;
        total1 := DM.TESDISCRIMINACAO['QUANTIDADE'] + total1 ;
        DM.TESDISCRIMINACAO.Next;
     end;
    frmEntradaSerrada.totalproduto.caption := FormatCurr('#0.00',total);
    frmEntradaSerrada.quantidade.caption := FormatCurr('#0.000',total1);
   frmEntradaSerrada.g.Caption := 'Produtos > ' + intTostr(DM.TESDISCRIMINACAO.RecordCount);      
   end;
end;
end;

procedure TfrmEntradaSerradaProdutos.ESSENCIAClick(Sender: TObject);
begin
DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmEntradaSerradaProdutos.ESSENCIAEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmEntradaSerradaProdutos.FormShow(Sender: TObject);
begin
EDITDATA.Text := frmEntradaSerrada.data.Text;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
    end;

with DM.QSUBPRODUTOS do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from SUBPRODUTO Order by NOMEGRAU');
               Open;
    end;


end;

procedure TfrmEntradaSerradaProdutos.ESSENCIATIPOClick(Sender: TObject);
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
end;


end.
