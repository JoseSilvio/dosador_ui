unit UDosador;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, uRESTDWBase, uRESTDWServerEvents, ZConnection, ZDataset, fphttpclient, uConfiguracao;

type

  { TfPrincipal }

  TfPrincipal = class(TForm)
    btnLiq1_doseA: TBitBtn;
    btnLiq1_doseA1: TBitBtn;
    btnLiq1_doseA2: TBitBtn;
    btnLiq1_doseA3: TBitBtn;
    btnLiq1_doseA4: TBitBtn;
    btnLiq1_doseB: TBitBtn;
    btnLiq1_doseB1: TBitBtn;
    btnLiq1_doseB2: TBitBtn;
    btnLiq1_doseB3: TBitBtn;
    btnLiq1_doseB4: TBitBtn;
    btnLiq1_doseC: TBitBtn;
    btnLiq1_doseC1: TBitBtn;
    btnLiq1_doseC2: TBitBtn;
    btnLiq1_doseC3: TBitBtn;
    btnLiq1_doseC4: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    grpLiquido1: TGroupBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure btnLiq1_doseAClick(Sender: TObject);
    procedure btnLiq1_doseBClick(Sender: TObject);
    procedure btnLiq1_doseCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    function EnviarComandoDosador(URL: string; SaveToFile: boolean=false;
      Filename: string=''): string;
  public

  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.lfm}

function TFPrincipal.EnviarComandoDosador(URL: string; SaveToFile: boolean = false; Filename: string = ''): string;
begin
  // Result will be:
  // - empty ('') when it has failed
  // - filename when the file has been downloaded successfully
  // - content when the content SaveToFile is set to False

  Result := '';
  With TFPHttpClient.Create(Nil) do
  try
    try
      if SaveToFile then begin
        Get(URL, Filename);
        Result := Filename;
      end else begin
        Result := Get(URL);
      end;
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
  finally
    Free;
  end;
end;


{ TfPrincipal }

procedure TfPrincipal.FormCreate(Sender: TObject);
begin

end;

procedure TfPrincipal.Panel1Click(Sender: TObject);
begin

end;

procedure TfPrincipal.SpeedButton1Click(Sender: TObject);
begin
   fConfiguracao.ShowModal ;
end;

procedure TfPrincipal.btnLiq1_doseAClick(Sender: TObject);
begin
   EnviarComandoDosador('http://192.168.0.130/abre?canal=8');
end;

procedure TfPrincipal.btnLiq1_doseBClick(Sender: TObject);
begin
  EnviarComandoDosador('http://192.168.0.130/abre?canal=10');
end;

procedure TfPrincipal.btnLiq1_doseCClick(Sender: TObject);
begin
  EnviarComandoDosador('http://192.168.0.130/abre?canal=20');
end;

end.

