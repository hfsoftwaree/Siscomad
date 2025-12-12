unit Unitskin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FileCtrl, Mask, ToolEdit, WinSkinData, Registry,
  ExtCtrls;

type
  TfrmSkin = class(TForm)
    ListBox1: TFileListBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);

  private
  procedure  CapturarPatch(FCaption, FolderName: string);
  procedure ValidarBasedeDados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSkin: TfrmSkin;

implementation

uses UnitPrincipal;

{$R *.dfm}
procedure TfrmSkin.CapturarPatch(FCaption, FolderName: string);
var
  NameBuffer: array[0..MAX_PATH] of Char;
  WindowList: Pointer;
  IniFile: TRegIniFile;
  Result: boolean;
begin
  // Função lógica que recebe dois parâmetros um para o rótulo da caixa de seleção de
  // diretório presente na unit ShlObj declarada acima e o outro por referência retorna
  // uma String com o diretório novo e a escreve na chave correspondente no Registro,
  // mas apenas se selecionar OK na caixa de seleção de diretório.

    FolderName := (listbox1.FileName);
    try
      IniFile:=TRegIniFile.Create('Software\HF Softwares');
      IniFile.WriteString('Siscomad','CaminhoSkin',FolderName);
//      ValidarBasedeDados;
    finally
      IniFile.Free;
    end;
end;


Procedure TfrmSkin.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Siscomad','CaminhoSkin',chave);
    listbox1.FileName := (Chave);
end;




procedure TfrmSkin.FormShow(Sender: TObject);
begin
listbox1.Directory := ('C:\HF-Software\Siscomad\Skin');
validarbasededados;
end;

procedure TfrmSkin.BitBtn1Click(Sender: TObject);
var Patch: String;
begin
CapturarPatch('',Patch);
Close;
end;

procedure TfrmSkin.ListBox1Click(Sender: TObject);
var
  i : integer;
  CaminhoDasSkins, ss : string;
begin
  i := ListBox1.ItemIndex;
//  ss := Copy(CaminhoDasSkins,1,Pos('*.skn',CaminhoDasSkins)-2)+'\'+ListBox1.items.strings[i];
  Frmprincipal.SKIN.SkinFile := listbox1.FileName;
//  if not Form1.SKIN.Active Then Form1.SKIN.Active := True;

end;

end.
