unit UnitEntradaTorosProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  EDBDate, SSBaseXP, SSEdit, ENumEd;

type
  TfrmEntradaTorosProdutos = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    QUANTIDADE: TEvDBNumEdit;
    VALUNITARIO: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
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
    Panel13: TPanel;
    Panel14: TPanel;
    COMPRIMENTO: TEvDBNumEdit;
    DIAMETRO: TEvDBNumEdit;
    DIAMETRO1: TEvDBNumEdit;
    Panel16: TPanel;
    DIAMETROMEDIA: TEvDBNumEdit;
    INDICE: TEditCurrencyXP;
    Panel10: TPanel;
    m3: TEditCurrencyXP;
    desconto: TEditCurrencyXP;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VALUNITARIOExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ESSENCIAClick(Sender: TObject);
    procedure ESSENCIAEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure INDICEExit(Sender: TObject);
    procedure INDICEEnter(Sender: TObject);
    procedure VALUNITARIOEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaTorosProdutos: TfrmEntradaTorosProdutos;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras;

{$R *.dfm}

procedure TfrmEntradaTorosProdutos.BitBtn3Click(Sender: TObject);
begin
indice.Value := 0;
Close;
end;

procedure TfrmEntradaTorosProdutos.BitBtn1Click(Sender: TObject);
begin
	if DBEDIT1.Text='000000' then
   	begin
         Application.MessageBox('Código do Produto deve ser informao!', 'Lançamento', mb_Ok + mb_IconInformation);
         DBEDIT1.SetFocus;
    end
    else
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if DBComboBox1.Text='' then
   	begin
         Application.MessageBox('Unidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         DBComboBox1.SetFocus;
    end
    else
begin
	if COMPRIMENTO.Text='0,00' then
   	begin
         Application.MessageBox('Comprimento deve ser informao!', 'Lançamento', mb_Ok + mb_IconInformation);
         COMPRIMENTO.SetFocus;
    end
    else
begin
	if DIAMETRO.Text='0,00' then
   	begin
         Application.MessageBox('Diametro[x] deve ser informao!', 'Lançamento', mb_Ok + mb_IconInformation);
         DIAMETRO.SetFocus;
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
    end;
    end;
    end;
    end;
    end;
    end;
    end;

if (DBEDIT1.Text <> '000000') and (ESSENCIA.Text <> '') and (DBComboBox1.Text <> '') and (QUANTIDADE.Text <> '0,0000') and (VALUNITARIO.Text <> '0,00') and (COMPRIMENTO.Text <> '0,00')and (DIAMETRO.Text <> '0,00') then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
        SITUACAO.Text := '0';
        DM.TEntrada_discriminacao.Post;
          If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
          mb_YesNo + mb_ICONQUESTION) = idYes then
          begin
          DM.TEntrada_discriminacao.Append;
          EDITDATA.Text := frmEntradaToros.data.Text;
          DBEDIT3.Text := frmEntradaToros.DBEDit6.Text;
          DBEDIT4.Text := frmEntradaToros.nota.Text;
          DBEDIT6.Text := frmEntradaToros.FORNECEDOR.Text;
          DBEDIT7.Text := frmEntradaToros.DBEDIT1.Text;
          DBEDIT8.Text := frmEntradaToros.INSCRICAO.Text;
          DBEDIT1.SetFocus;
          end
          else
          begin
          close;
          end;
        end;
        end;
end;

procedure TfrmEntradaTorosProdutos.VALUNITARIOExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= QUANTIDADE.Value;
      vn2:= VALUNITARIO.Value;
      vsoma := vn1 * vn2;
      VALTOTAL.Text := FloatToStr(vsoma);
end;

procedure TfrmEntradaTorosProdutos.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmEntradaTorosProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var total, total1 : Real;
begin
   DM.TEntrada_Discriminacao.Filtered := False;
   DM.TEntrada_Discriminacao.Close;
   DM.TEntrada_Discriminacao.Filter := 'NFNUMERO = ' + (frmEntradaToros.nota.Text);
   DM.TEntrada_Discriminacao.Filtered := True;
   DM.TEntrada_Discriminacao.Open;

begin
   if DM.TEntrada_Discriminacao.RecordCount <> 0 then
   begin
   frmEntradaToros.DBGrid3.Visible := False;
   frmEntradaToros.DBGrid2.Visible := True;
   frmEntradaToros.BitBtn9.Enabled := True;
   frmEntradaToros.BitBtn10.Enabled := True;
   frmEntradaToros.BitBtn11.Enabled := True;

   total := 0;
   total1 := 0;
   DM.TEntrada_discriminacao.First;
   while not DM.TEntrada_discriminacao.Eof do
     begin
        total := DM.TEntrada_discriminacao['VALTOTAL'] + total ;
        total1 := DM.TEntrada_discriminacao['QUANTIDADE'] + total1 ;
        DM.TEntrada_discriminacao.Next;
     end;
    frmEntradaToros.totalproduto.text := FormatCurr('#0.00',total);
    frmEntradaToros.quantidade.text := FormatCurr('#0.000',total1);
   end;
end;
end;

procedure TfrmEntradaTorosProdutos.ESSENCIAClick(Sender: TObject);
begin
DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmEntradaTorosProdutos.ESSENCIAEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmEntradaTorosProdutos.FormShow(Sender: TObject);
begin
EDITDATA.Text := frmEntradaToros.data.Text;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
    end
end;


procedure TfrmEntradaTorosProdutos.INDICEExit(Sender: TObject);
var vn1, vn2, vn3,  vn4, vsoma, vsoma1: Real;
begin
if INDICE.Text <> '0,000' then
begin
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vsoma:=0;
      vsoma1:=0;

      vn2:= INDICE.Value;
      vn3:= m3.Value;
      vn4:= desconto.value;
      vsoma := vn3 * vn2;
      vsoma1 := vn3 - vn4;

      desconto.Value  := (vsoma/100);
      QUANTIDADE.Text := FloatToStr(vsoma1);
      end
      else
begin
if INDICE.Text = '0,000' then
begin
desconto.Value :=0;
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vsoma:=0;
      vn1:= COMPRIMENTO.Value;
      vn2:= DIAMETRO.Value;
      vn3:= DIAMETRO1.Value;
      vsoma := vn1 * vn2 * vn3;
      QUANTIDADE.Text := FloatToStr(vsoma);
      end;
end;
end;

procedure TfrmEntradaTorosProdutos.INDICEEnter(Sender: TObject);
var vn1, vn2, vn3, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vsoma:=0;
      vn1:= COMPRIMENTO.Value;
      vn2:= DIAMETRO.Value;
      vn3:= DIAMETRO1.Value;
      vsoma := vn1 * vn2 * vn3;
      m3.Value  := (vsoma);
end;



procedure TfrmEntradaTorosProdutos.VALUNITARIOEnter(Sender: TObject);
var vn1, vn2, vn3,  vn4, vsoma, vsoma1: Real;
begin
      vn3:=0;
      vn4:=0;
      vsoma1:=0;

      vn3:= m3.Value;
      vn4:= desconto.value;
      vsoma1 := vn3 - vn4;

      QUANTIDADE.Text := FloatToStr(vsoma1);

end;

end.
