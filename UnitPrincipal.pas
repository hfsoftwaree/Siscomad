unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, EKeyNav, EOneInst, EFocCol, EHintBal, EAppProt,
  StdCtrls, Menus, ExtCtrls, ComCtrls, jpeg, UrlMon, RXShell, Shellapi, Registry, ShlObj,
  CJVScrollLabel, RxGIF, MSNPopUp, WinSkinData,
  dbAleNavegador, Buttons, xCalcltr, XPMenu, Mask, DBCtrls, Sockets,
  OleCtrls, SHDocVw;

type
  TfrmPrincipal = class(TForm)
    EvHintBalloon1: TEvHintBalloon;
    EvFocusColor1: TEvFocusColor;
    EvOneInstance1: TEvOneInstance;
    EvKeyNavigator1: TEvKeyNavigator;
    MainMenu1: TMainMenu;
    Parametros1: TMenuItem;
    Manuteno1: TMenuItem;
    Cadastro1: TMenuItem;
    Essncia1: TMenuItem;
    Fornecedores1: TMenuItem;
    Clientes1: TMenuItem;
    Sair1: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Lanamento1: TMenuItem;
    Entrada1: TMenuItem;
    oros2: TMenuItem;
    Fretero1: TMenuItem;
    Municpio1: TMenuItem;
    Porduto1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ContaCorrente1: TMenuItem;
    Fretero2: TMenuItem;
    Clientes2: TMenuItem;
    Sada1: TMenuItem;
    MadeiraSerrada1: TMenuItem;
    Requisio1: TMenuItem;
    Consulta1: TMenuItem;
    ContasPagar1: TMenuItem;
    ContasReceber1: TMenuItem;
    N6: TMenuItem;
    Requisio2: TMenuItem;
    EntradadeMademToros1: TMenuItem;
    SadadeMadSerrada1: TMenuItem;
    N7: TMenuItem;
    Relatrio1: TMenuItem;
    Cadastro2: TMenuItem;
    Essncia2: TMenuItem;
    Produto1: TMenuItem;
    Municpio2: TMenuItem;
    Fornecedor1: TMenuItem;
    Cliente1: TMenuItem;
    EntradadeMademToros2: TMenuItem;
    SadadeMadSerrada2: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Requizio1: TMenuItem;
    PrFornecedorePerodo1: TMenuItem;
    PrFornecedor1: TMenuItem;
    PrPerodo3: TMenuItem;
    Utilitrio1: TMenuItem;
    CalculadoraM31: TMenuItem;
    OutrasOpes1: TMenuItem;
    CpiadeSegurana1: TMenuItem;
    GravarCpiadeSegurana1: TMenuItem;
    RestaurarCpiadeSegurana1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobreosistema1: TMenuItem;
    N12: TMenuItem;
    Supore1: TMenuItem;
    web1: TMenuItem;
    N5: TMenuItem;
    SaldodaDVPF1: TMenuItem;
    EstoquePatio1: TMenuItem;
    ContasPagar2: TMenuItem;
    ContasReceber2: TMenuItem;
    UltimasAtualizaes1: TMenuItem;
    RxTrayIcon1: TRxTrayIcon;
    EnviaremailparaSuporte1: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    ConfigurarBancodeDados1: TMenuItem;
    VerificarAtualizaes1: TMenuItem;
    CJVScrollLabel1: TCJVScrollLabel;
    Calculator: TCalculator;
    Image1: TImage;
    MSN: tAleMSNPopUp;
    Timer2: TTimer;
    Produo1: TMenuItem;
    MadeirasemToros1: TMenuItem;
    Produo2: TMenuItem;
    N18: TMenuItem;
    RelaodeComprasVendas1: TMenuItem;
    Produo3: TMenuItem;
    XPMenu1: TXPMenu;
    SKIN: TSkinData;
    Skin1: TMenuItem;
    N19: TMenuItem;
    EstoqueInicial2: TMenuItem;
    MadeiraemToros1: TMenuItem;
    MadeiraSerrada2: TMenuItem;
    MadeiraemToro1: TMenuItem;
    MadeiraSerrada3: TMenuItem;
    Lanamento2: TMenuItem;
    PrNotaFiscal1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    Lancamento1: TMenuItem;
    Detalhado1: TMenuItem;
    Lanamento3: TMenuItem;
    Detalhado2: TMenuItem;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton7: TSpeedButton;
    N14: TMenuItem;
    ManutenodeUsurios1: TMenuItem;
    ImageList1: TImageList;
    EvAppProtect1: TEvAppProtect;
    N11: TMenuItem;
    Funrural1: TMenuItem;
    N22: TMenuItem;
    LINKSMT1: TMenuItem;
    SEMA1: TMenuItem;
    FIEMT1: TMenuItem;
    SEFAZ1: TMenuItem;
    MinistriodoMeioAmbiente1: TMenuItem;
    N23: TMenuItem;
    IBAMA2: TMenuItem;
    PautadaMadeira1: TMenuItem;
    PautaFrete1: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    AcessorpidoaoSISFLORA1: TMenuItem;
    OutrosLinks1: TMenuItem;
    MadeiraSerrada4: TMenuItem;
    EntradadeMadSerrada1: TMenuItem;
    Lanamento4: TMenuItem;
    Detalhado3: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    SadadeMadToros1: TMenuItem;
    Lanamento5: TMenuItem;
    Detalhado4: TMenuItem;
    N28: TMenuItem;
    RomaneiodeSada1: TMenuItem;
    oros4: TMenuItem;
    Serrada3: TMenuItem;
    MadeiraemToroporNotaFiscal1: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    ClientesCompleto1: TMenuItem;
    N33: TMenuItem;
    ConfiguraodoSistema1: TMenuItem;
    N34: TMenuItem;
    Romaneio1: TMenuItem;
    Romaneio2: TMenuItem;
    N35: TMenuItem;
    SubProdutos1: TMenuItem;
    SubProduto1: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    MadeiraSerrada5: TMenuItem;
    MadeiraemToro2: TMenuItem;
    N38: TMenuItem;
    LimparBancodeDados1: TMenuItem;
    LanamentoporEssncia1: TMenuItem;
    N1: TMenuItem;
    procedure Essncia1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Manuteno1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Fretero1Click(Sender: TObject);
    procedure Municpio1Click(Sender: TObject);
    procedure Porduto1Click(Sender: TObject);
    procedure Supore1Click(Sender: TObject);
    procedure web1Click(Sender: TObject);
    procedure UltimasAtualizaes1Click(Sender: TObject);
    procedure EnviaremailparaSuporte1Click(Sender: TObject);
    procedure ConfigurarBancodeDados1Click(Sender: TObject);
    procedure CJVScrollLabel1Click(Sender: TObject);
    procedure VerificarAtualizaes1Click(Sender: TObject);
    procedure CalculadoraM31Click(Sender: TObject);
    procedure GravarCpiadeSegurana1Click(Sender: TObject);
    procedure RestaurarCpiadeSegurana1Click(Sender: TObject);
    procedure Essncia2Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Municpio2Click(Sender: TObject);
    procedure oros2Click(Sender: TObject);
    procedure MadeiraSerrada1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure EntradadeMademToros1Click(Sender: TObject);
    procedure SadadeMadSerrada1Click(Sender: TObject);
    procedure Fretero2Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Requisio1Click(Sender: TObject);
    procedure ContasPagar1Click(Sender: TObject);
    procedure ContasReceber1Click(Sender: TObject);
    procedure Requisio2Click(Sender: TObject);
    procedure ContasPagar2Click(Sender: TObject);
    procedure ContasReceber2Click(Sender: TObject);
    procedure PrFornecedorePerodo1Click(Sender: TObject);
    procedure PrFornecedor1Click(Sender: TObject);
    procedure PrPerodo3Click(Sender: TObject);
    procedure Sobreosistema1Click(Sender: TObject);
    procedure MadeirasemToros1Click(Sender: TObject);
    procedure Produo2Click(Sender: TObject);
    procedure RelaodeComprasVendas1Click(Sender: TObject);
    procedure Skin1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Lanamento2Click(Sender: TObject);
    procedure PrNotaFiscal1Click(Sender: TObject);
    procedure Lancamento1Click(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure Lanamento3Click(Sender: TObject);
    procedure Detalhado2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ManutenodeUsurios1Click(Sender: TObject);
    procedure MadeiraemToros1Click(Sender: TObject);
    procedure MadeiraSerrada2Click(Sender: TObject);
    procedure MadeiraemToro1Click(Sender: TObject);
    procedure MadeiraSerrada3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Funrural1Click(Sender: TObject);
    procedure FIEMT1Click(Sender: TObject);
    procedure FOMATO1Click(Sender: TObject);
    procedure SEDER1Click(Sender: TObject);
    procedure SEFAZ1Click(Sender: TObject);
    procedure SEMA1Click(Sender: TObject);
    procedure PautadaMadeira1Click(Sender: TObject);
    procedure IBAMA2Click(Sender: TObject);
    procedure MinistriodoMeioAmbiente1Click(Sender: TObject);
    procedure PautaFrete1Click(Sender: TObject);
    procedure AcessorpidoaoSISFLORA1Click(Sender: TObject);
    procedure MadeiraSerrada4Click(Sender: TObject);
    procedure Lanamento4Click(Sender: TObject);
    procedure Detalhado3Click(Sender: TObject);
    procedure Lanamento5Click(Sender: TObject);
    procedure Detalhado4Click(Sender: TObject);
    procedure RomaneiodeToros1Click(Sender: TObject);
    procedure Serrada3Click(Sender: TObject);
    procedure MadeiraemToroporNotaFiscal1Click(Sender: TObject);
    procedure ClientesCompleto1Click(Sender: TObject);
    procedure Romaneio1Click(Sender: TObject);
    procedure SubProdutos1Click(Sender: TObject);
    procedure SubProduto1Click(Sender: TObject);
    procedure MadeiraSerrada5Click(Sender: TObject);
    procedure MadeiraemToro2Click(Sender: TObject);
    procedure oros4Click(Sender: TObject);
    procedure LimparBancodeDados1Click(Sender: TObject);
    procedure LanamentoporEssncia1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  procedure ValidarBasedeDados1;

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses UnitCredor, UnitEssencia, UnitFornecedor, UnitManutencao,
  UnitEInicial, UnitFretero, UnitMunicipio, UnitProdutos, UnitSobre,
  Unitdvpf, UnitDVPF1, UnitDM, UnitInfo, UnitCalculator, UnitCalculator1,
  UnitRepEssencia, UnitRepCredores, UnitRepFornecedores, UnitRepFretero,
  UnitRepProduto, UnitRepMunicipio, UnitBackup, UnitRestore,
  UnitEntradaToros, UnitSaidaMadeiras, UnitConsultaEPatio, UnitEInicial1,
  UnitConsultaESerrada, UnitProducao, UnitConsultaProducao, UnitDemo,
  Unitskin, UnitREntrada, UnitREntrada1, UnitRSaida, UnitRSaida1,
  UnitRProducao, UnitRProducao1, UnitREstoque, UnitREstoque1,
  UnitManutencao1, UnitAtualizacao, UnitUsuario, UnitfrmFunrural,
  UnitEntradaSerrada, UnitREntrada2, UnitREntrada3, UnitRRomaneioToros,
  UnitEntradaTorosNF, UnitRepCredoresCompleto, UnitRepRomaneioSerrada,
  Unitromaneioserrada, Unitsubprodutos, Unitrepsubprodutos,
  Unitromaneiotoro, UnitLimparBD, UnitPesquisaEntrada, Unitconsultaproduto,
  Unit1, UnitRepEstoque, Unitconfgbd;

{$R *.dfm}

Procedure TfrmPrincipal.ValidarBasedeDados1;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Siscomad','CaminhoSkin',chave);
    SKIN.SkinFile := (Chave);
end;

procedure ExecutePrograma(Nome, Parametros: String);
Var
 Comando: Array[0..1024] of Char;
 Parms: Array[0..1024] of Char;
begin
  StrPCopy (Comando, Nome);
  StrPCopy (Parms, Parametros);
  ShellExecute (0, Nil, Comando, Parms, Nil, SW_ShowNormal);
end;

procedure TfrmPrincipal.PrNotaFiscal1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QEntrada_Discriminacao.Open;
if DM.QEntrada_Discriminacao.RecordCount = 0 then
begin
DM.QEntrada_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Entrada(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QEntrada_Discriminacao.Close;
frmREntrada1.ShowModal;
end;
end;
end;

procedure TfrmPrincipal.Essncia1Click(Sender: TObject);
begin
    frmessencia.ShowModal;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
frmCREDOR.ShowModal;
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
    frmFornecedores.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
//     DM.IBDatabase1.Connected := False;
     Application.Terminate;
     end
     else
end;

procedure TfrmPrincipal.Manuteno1Click(Sender: TObject);
begin
frmManutencao1.ShowModal;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[2].Text:=DateToStr(now);
  StatusBar1.Panels[3].Text:=TimeToStr(now);
end;


procedure TfrmPrincipal.Fretero1Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.Municpio1Click(Sender: TObject);
begin
    frmMunicipio.ShowModal;
end;

procedure TfrmPrincipal.Porduto1Click(Sender: TObject);
begin
    frmProdutos.ShowModal;
end;

procedure TfrmPrincipal.Supore1Click(Sender: TObject);
begin
frmSobre.ShowModal;
end;

procedure TfrmPrincipal.web1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.hfinformatica.net');
end
end;

procedure TfrmPrincipal.UltimasAtualizaes1Click(Sender: TObject);
begin
frmInfo.ShowModal;
end;

procedure TfrmPrincipal.EnviaremailparaSuporte1Click(Sender: TObject);
var Mail: String;
begin
    Mail := 'mailto:hfinformatica@bol.com.br';
    ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil, sw_ShowNormal);
end;


procedure TfrmPrincipal.ConfigurarBancodeDados1Click(Sender: TObject);
begin
SKIN.SkinFile := '';
frmconfigbd.ShowModal;
end;

procedure TfrmPrincipal.CJVScrollLabel1Click(Sender: TObject);
begin
frmSobre.ShowModal;
end;

procedure TfrmPrincipal.VerificarAtualizaes1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
frmAtualizacao.showmodal;
end
end;

procedure TfrmPrincipal.CalculadoraM31Click(Sender: TObject);
begin
Calculator.Execute;
end;

procedure TfrmPrincipal.GravarCpiadeSegurana1Click(Sender: TObject);
begin
SKIN.SkinFile := '';
frmbackup.showmodal;
end;

procedure TfrmPrincipal.RestaurarCpiadeSegurana1Click(Sender: TObject);
begin
DM.IBDatabase1.Connected := False;
SKIN.SkinFile := '';
frmRestore.showmodal;
end;

procedure TfrmPrincipal.Essncia2Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
  DM.QEssencia.Close;
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount = 0 then
begin
  DM.QEssencia.Close;
  Application.MessageBox('Não há Essência cadastrada!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QEssencia.Close;
//  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Essencia Order by ESSENCIA');
               Open;
               RepEssencia.QuickRep1.Preview;
    end
end;
end;
end
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
  DM.QCredor.Close;
  DM.QCredor.Open;
  if DM.QCredor.RecordCount = 0 then
begin
  DM.QCredor.Close;
  Application.MessageBox('Não há Cliente(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QCredor.Close;
//  DM.QCredor.Open;
  if DM.QCredor.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from CREDOR Order by NOMECREDOR');
               Open;
               RepCredores.QuickRep1.Preview;
    end
end;
end;
end;
end;

procedure TfrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
  DM.QFornecedor.Close;
  DM.QFornecedor.Open;
  if DM.QFornecedor.RecordCount = 0 then
begin
  DM.QFornecedor.Close;
  Application.MessageBox('Não há Fornecedor(es) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QCredor.Close;
//  DM.QCredor.Open;
  if DM.QFornecedor.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from FORNECEDOR Order by NOMEFORNECEDOR');
               Open;
               RepFornecedores.QuickRep1.Preview;
    end
end;
end;
end;
end;


procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
  DM.QProduto.Close;
  DM.QProduto.Open;
  if DM.QProduto.RecordCount = 0 then
begin
  DM.QProduto.Close;
  Application.MessageBox('Não há Produto(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QEssencia.Close;
//  DM.QEssencia.Open;
  if DM.QProduto.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QProduto do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Produto Order by NOMEGRAU');
               Open;
               RepProduto.QuickRep1.Preview;
    end
end;
end;
end;
end;

procedure TfrmPrincipal.Municpio2Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
  DM.QMunicipio.Close;
  DM.QMunicipio.Open;
  if DM.QMunicipio.RecordCount = 0 then
begin
  DM.QMunicipio.Close;
  Application.MessageBox('Não há Produto(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QEssencia.Close;
//  DM.QEssencia.Open;
  if DM.QMunicipio.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QMunicipio do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Municipio Order by NOM_MUNIC');
               Open;
               RepMunicipio.QuickRep1.Preview;
    end
end;
end;
end;
end;

procedure TfrmPrincipal.oros2Click(Sender: TObject);
begin
frmEntradaToros.ShowModal;
end;

procedure TfrmPrincipal.MadeiraSerrada1Click(Sender: TObject);
begin
frmSaidaMadeiras.ShowModal;
end;

procedure TfrmPrincipal.Timer2Timer(Sender: TObject);
begin
if not fileexists('C:\HF-Software\GDHF\GDHF.exe') then
begin
Timer2.Enabled := False;
msn.MostraPopUp;
end;
end;


procedure TfrmPrincipal.EntradadeMademToros1Click(Sender: TObject);
begin
frmConsultaEPatio.ShowModal;
end;


procedure TfrmPrincipal.SadadeMadSerrada1Click(Sender: TObject);
begin
frmConsultaESerrada.ShowModal;
end;

procedure TfrmPrincipal.Fretero2Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.Clientes2Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.Requisio1Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.ContasPagar1Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.ContasReceber1Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.Requisio2Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.ContasPagar2Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.ContasReceber2Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.PrFornecedorePerodo1Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.PrFornecedor1Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.PrPerodo3Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.Sobreosistema1Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.MadeirasemToros1Click(Sender: TObject);
begin
DM.QEntrada_Discriminacao.Open;
if DM.QEntrada_Discriminacao.RecordCount = 0 then
begin
DM.QEntrada_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Entrada(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QEntrada_Discriminacao.Close;
frmproducao.ShowModal;
end
end;

procedure TfrmPrincipal.Produo2Click(Sender: TObject);
begin
frmConsultaProducao.ShowModal;
end;

procedure TfrmPrincipal.RelaodeComprasVendas1Click(Sender: TObject);
begin
frmDemo.ShowModal;
end;

procedure TfrmPrincipal.Skin1Click(Sender: TObject);
begin
if directoryexists('C:\HF-Software\Siscomad\Skin') then
begin
frmSkin.ShowModal;
end
else
begin
Application.MessageBox('O sistema não foi capaz de localizar a pasta SKIN, provavelmente ela foi movida ou removida, Verífique!', 'Informação', mb_Ok + mb_IconError);
end
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
ValidarBasedeDados1;
end;

procedure TfrmPrincipal.Lanamento2Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QEntrada_Discriminacao.Open;
if DM.QEntrada_Discriminacao.RecordCount = 0 then
begin
DM.QEntrada_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Entrada(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QEntrada_Discriminacao.Close;
frmREntrada.ShowModal;
end;
end;
end;

procedure TfrmPrincipal.Lancamento1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QSaida_Discriminacao.Open;
if DM.QSaida_Discriminacao.RecordCount = 0 then
begin
DM.QSaida_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Saída(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QSaida_Discriminacao.Close;
frmRSaida.ShowModal;
end;
end;
end;

procedure TfrmPrincipal.Detalhado1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QSaida_Discriminacao.Open;
if DM.QSaida_Discriminacao.RecordCount = 0 then
begin
DM.QSaida_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Saída(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QSaida_Discriminacao.Close;
frmRSaida1.ShowModal;
end;
end;
end;

procedure TfrmPrincipal.Lanamento3Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
frmRProducao.ShowModal;
end;
end;

procedure TfrmPrincipal.Detalhado2Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
frmRProducao1.ShowModal;
end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
frmEntradaToros.ShowModal;
end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
DM.QEntrada.Open;
if DM.QEntrada.RecordCount = 0 then
begin
DM.QEntrada.Close;
Application.MessageBox('Não há lançamentos de Entrada, por favor Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QEntrada.Close;
frmproducao.ShowModal;
end;
end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
frmSaidaMadeiras.ShowModal;
end;

procedure TfrmPrincipal.SpeedButton5Click(Sender: TObject);
begin
frmConsultaEPatio.ShowModal;
end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
frmConsultaProducao.ShowModal;
end;

procedure TfrmPrincipal.SpeedButton8Click(Sender: TObject);
begin
frmConsultaESerrada.ShowModal;
end;

procedure TfrmPrincipal.SpeedButton9Click(Sender: TObject);
begin
SKIN.SkinFile := '';
frmbackup.showmodal;
end;

procedure TfrmPrincipal.SpeedButton7Click(Sender: TObject);
begin
DM.IBDatabase1.Connected := False;
SKIN.SkinFile := '';
frmRestore.showmodal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
//     DM.IBDatabase1.Connected := False;
     Application.Terminate;
     end
     else
     Application.Run;
end;

procedure TfrmPrincipal.SpeedButton6Click(Sender: TObject);
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
//     DM.IBDatabase1.Connected := False;
     Application.Terminate;
     end
     else
end;


procedure TfrmPrincipal.ManutenodeUsurios1Click(Sender: TObject);
begin
frmUsuario.showmodal;
end;

procedure TfrmPrincipal.MadeiraemToros1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
frmREstoque.ShowModal;
end;
end;

procedure TfrmPrincipal.MadeiraSerrada2Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
frmREstoque1.ShowModal;
end;
end;

procedure TfrmPrincipal.MadeiraemToro1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QEntrada_Discriminacao.Open;
if DM.QEntrada_Discriminacao.RecordCount = 0 then
begin
DM.QEntrada_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Entrada(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  RepEstoque.TENTRADA.Filtered:=False;
  RepEstoque.TENTRADA.Close;
  RepEstoque.TENTRADA.Filter := 'SITUACAO = ' + '0';
  RepEstoque.TENTRADA.Filtered:=True;
  RepEstoque.TENTRADA.Open;
  DM.QManutencao.Open;
  REPESTOQUE.TENTRADA.IndexFieldNames := 'ESSENCIA';
  RepEstoque.QuickRep1.Preview;
end;
end;
end;

procedure TfrmPrincipal.MadeiraSerrada3Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
DM.QManutencao.Open;
if DM.QManutencao.RecordCount = 0 then
begin
DM.QManutencao.Close;
Application.MessageBox('Como ésta é a primeira vez que o Sistema está sendo acessado é necessário informar os Parametros da Empresa, os quais serão necessários para o perfeito funcionamento do Sistema!', 'Informação', mb_Ok + mb_IconInformation);
frmManutencao1.ShowModal;
end
else
begin
DM.QManutencao.Close;
end;
end;

procedure TfrmPrincipal.Funrural1Click(Sender: TObject);
begin
DM.QEntrada.Open;
if DM.QEntrada.RecordCount = 0 then
begin
DM.QEntrada.Close;
Application.MessageBox('Não há lançamentos de Entrada, por favor Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QEntrada.Close;
frmFunRural.ShowModal;
end;
end;


procedure TfrmPrincipal.FIEMT1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.fiemt.com.br');
end
end;

procedure TfrmPrincipal.FOMATO1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em Sim para continuar?', 'Confirmação',
mb_YesNo + mb_ICONExclamation) = idYes then
begin

end
end;

procedure TfrmPrincipal.SEDER1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em Sim para continuar?', 'Confirmação',
mb_YesNo + mb_ICONExclamation) = idYes then
begin

end
end;

procedure TfrmPrincipal.SEFAZ1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.sefaz.mt.gov.br');
end
end;

procedure TfrmPrincipal.SEMA1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.sema.mt.gov.br');
end
end;

procedure TfrmPrincipal.PautadaMadeira1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.sefaz.mt.gov.br/portal/leg/leg.php?flag=1&destino=http://app1.sefaz.mt.gov.br/Sistema/Legislacao/legislacaotribut.nsf/b627c5d8a24d8a5003256730004d2e96/0ea4b5a8d76b48560425705b006719e1?OpenDocument');
end
end;

procedure TfrmPrincipal.IBAMA2Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.ibama.gov.br');
end
end;

procedure TfrmPrincipal.MinistriodoMeioAmbiente1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.mma.gov.br/');
end
end;

procedure TfrmPrincipal.PautaFrete1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.sefaz.mt.gov.br/portal/leg/leg.php?flag=1&destino=http://app1.sefaz.mt.gov.br/Sistema/Legislacao/legislacaotribut.nsf/b627c5d8a24d8a5003256730004d2e96/58d25ac9e22aae2f04256fe00066bce1?OpenDocument');
end
end;

procedure TfrmPrincipal.AcessorpidoaoSISFLORA1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://monitoramento.sema.mt.gov.br/sisflora/default.aspx');
end
end;

procedure TfrmPrincipal.MadeiraSerrada4Click(Sender: TObject);
begin
frmEntradaSerrada.ShowModal;
end;

procedure TfrmPrincipal.Lanamento4Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QSERRADA_Discriminacao.Open;
if DM.QSERRADA_Discriminacao.RecordCount = 0 then
begin
DM.QSERRADA_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Entrada(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QSERRADA_Discriminacao.Close;
frmREntrada2.ShowModal;
end;
end;
end;

procedure TfrmPrincipal.Detalhado3Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QSERRADA_Discriminacao.Open;
if DM.QSERRADA_Discriminacao.RecordCount = 0 then
begin
DM.QSERRADA_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Entrada(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QSERRADA_Discriminacao.Close;
frmREntrada3.ShowModal;
end;
end;
end;

procedure TfrmPrincipal.Lanamento5Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.Detalhado4Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.RomaneiodeToros1Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.Serrada3Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QROMANEIOSERRADADISC.Open;
if DM.QROMANEIOSERRADADISC.RecordCount = 0 then
begin
DM.QROMANEIOSERRADADISC.Close;
Application.MessageBox('Não há lançamento(s) de Romaneio de Madeira Serrada, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QROMANEIOSERRADADISC.Close;
frmRRomaneioSerrada.ShowModal;
end;
end;
end;

procedure TfrmPrincipal.MadeiraemToroporNotaFiscal1Click(Sender: TObject);
begin
frmEntradaTorosNF.ShowModal;
end;

procedure TfrmPrincipal.ClientesCompleto1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
  DM.QCredor.Close;
  DM.QCredor.Open;
  if DM.QCredor.RecordCount = 0 then
begin
  DM.QCredor.Close;
  Application.MessageBox('Não há Cliente(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QCredor.Close;
//  DM.QCredor.Open;
  if DM.QCredor.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from CREDOR Order by NOMECREDOR');
               Open;
               RepCredores1.QuickRep1.Preview;
    end
end;
end;
end;
end;


procedure TfrmPrincipal.Romaneio1Click(Sender: TObject);
begin
    frmRomaneioserrada.ShowModal;
end;

procedure TfrmPrincipal.SubProdutos1Click(Sender: TObject);
begin
    frmsubProdutos.ShowModal;
end;

procedure TfrmPrincipal.SubProduto1Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
  DM.TSUBProdutoS.Close;
  DM.TSUBProdutoS.Open;
  if DM.TSUBProdutoS.RecordCount = 0 then
begin
  DM.TSUBProdutoS.Close;
  Application.MessageBox('Não há Produto(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QEssencia.Close;
//  DM.QEssencia.Open;
  if DM.TSUBProdutoS.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
DM.TsubProdutos.IndexName := ('SUBPRODUTO');
RepsubProduto.QuickRep1.Preview;
end;
end;
end;
end;

procedure TfrmPrincipal.MadeiraSerrada5Click(Sender: TObject);
begin
    frmRomaneioserrada.ShowModal;
end;

procedure TfrmPrincipal.MadeiraemToro2Click(Sender: TObject);
begin
    frmRomaneiotoro.showModal;
end;

procedure TfrmPrincipal.oros4Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QROMANEIOTORO.Open;
if DM.QROMANEIOTORO.RecordCount = 0 then
begin
DM.QROMANEIOTORO.Close;
Application.MessageBox('Não há lançamento(s) de Romaneio de Madeira Serrada, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QROMANEIOTORO.Close;
frmRRomaneiotoros.ShowModal;
end;
end;
end;

procedure TfrmPrincipal.LimparBancodeDados1Click(Sender: TObject);
begin
frmlimparbd.showmodal;
end;

procedure TfrmPrincipal.LanamentoporEssncia1Click(Sender: TObject);
begin
frmconsultaproduto.showmodal;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
form1.tentrada.open;
form1.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
form1.TENTRADA.IndexFieldNames := 'ESSENCIA';
form1.QuickRep1.Preview;
end;

end.
