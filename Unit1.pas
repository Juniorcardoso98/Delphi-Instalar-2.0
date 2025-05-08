unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,ShellAPI, ComCtrls;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    bicaminho: TEdit;
    btnclick: TBitBtn;
    btninstall: TButton;
    Label1: TLabel;
    binome: TEdit;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Label3: TLabel;
    procedure btnclickClick(Sender: TObject);
    procedure btninstallClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnclickClick(Sender: TObject);
begin
 if OpenDialog1.execute then
  bicaminho.text:= OpenDialog1.FileName;
end;

procedure TForm1.btninstallClick(Sender: TObject);
var
  nome: string;
  caminho: string;
  comando: string;
  retorno: Integer;
begin
  ProgressBar1.Min := 0;
  ProgressBar1.Max := 100;
  ProgressBar1.Position := 0;
  nome := Trim(binome.Text);
  caminho := Trim(bicaminho.Text);

  if nome = '' then
  begin
    ShowMessage('O nome do arquivo não foi informado.');
    Exit;
  end;

  if caminho = '' then
  begin
    ShowMessage('O caminho do arquivo não foi informado.');
    Exit;
  end;

  if not FileExists(caminho) then
  begin
    ShowMessage('O arquivo especificado não foi encontrado: ' + caminho);
    Exit;
  end;

  comando := Format('"%s" -%s /install', [caminho, nome]);
  ProgressBar1.Position := ProgressBar1.Position + 30;

  retorno := ShellExecute(0, 'open', PChar('cmd.exe'), PChar('/c ' + comando), nil, SW_HIDE);
  ProgressBar1.Position := ProgressBar1.Position + 30;

  if retorno <= 32 then
  begin
    case retorno of
      0: ShowMessage('O sistema está sem memória ou recursos.');
      ERROR_FILE_NOT_FOUND: ShowMessage('O arquivo especificado não foi encontrado.');
      ERROR_PATH_NOT_FOUND: ShowMessage('O caminho especificado não foi encontrado.');
      ERROR_ACCESS_DENIED: ShowMessage('Acesso negado ao executar o comando, execute como Administrador.');
    else
      ShowMessage('Erro ao executar o comando. Código de erro: ' + IntToStr(retorno));
      ProgressBar1.Position := ProgressBar1.Position + 30;
    end;
  end
  else
  begin
    Label3.Caption := 'Instalação em Andamento...';
    ProgressBar1.Position := ProgressBar1.Position + 40;
  end;
end;

end.
