unit UnitRestore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ToolEdit, Mask, Buttons, IBServices, registry;

type
  TfrmRestore = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label2: TLabel;
    feRestaurar: TFilenameEdit;
    Label6: TLabel;
    mmRestaurar: TMemo;
    Label1: TLabel;
    Panel2: TPanel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    IBRestoreService1: TIBRestoreService;
    IBBackupService1: TIBBackupService;
    feRestBanco: TFilenameEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  procedure ValidarBasedeDados1;
  public
    { Public declarations }
  end;

var
  frmRestore: TfrmRestore;

implementation

uses UnitPrincipal, Unitskin, UnitDM;

{$R *.dfm}

Procedure Tfrmrestore.ValidarBasedeDados1;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Siscomad','CaminhoSkin',chave);
    frmprincipal.SKIN.SkinFile := (Chave);
end;

procedure TfrmRestore.BitBtn1Click(Sender: TObject);
begin
 if feRestaurar.FileName = '' then
 begin
    Application.MessageBox('Arquivo de Backup deve ser informado!', 'Restore', mb_Ok + mb_IconError);
    feRestaurar.SetFocus;
    Abort;
 end;
 if feRestBanco.Text = '' then
 begin
    Application.MessageBox('Banco de dados deve ser informado!', 'Restore', mb_Ok + mb_IconError);
    feRestBanco.SetFocus;
    Abort;
 end;
 with IBRestoreService1 do
  begin
    Params.Clear;
    BackupFile.Clear;
    ServerName := 'localhost';
    LoginPrompt := False;
    Params.Add('user_name=SYSDBA');
    Params.Add('password=masterkey');
    Active := True;
    try
      Verbose := True;
      Options := [Replace, UseAllSpace];
      PageBuffers := 3000;
      PageSize := 4096;
      DatabaseName.Add(feRestBanco.FileName);
      BackupFile.Add(feRestaurar.FileName);
      ServiceStart;
      While not Eof do
        mmRestaurar.Lines.Add(GetNextLine);
    finally
      Active := False;
    end;
  end;
    Application.MessageBox('Restauração realizada com sucesso!', 'Restore', mb_Ok + mb_IconInformation);
    DM.IBDatabase1.Connected := true;
DM.IBDatabase1.Connected := true;        
//    feRestaurar.Clear;
//    feRestBanco.Clear;
    mmRestaurar.Clear;   
end;

procedure TfrmRestore.BitBtn2Click(Sender: TObject);
begin
validarbasededados1;
close;
end;


end.
