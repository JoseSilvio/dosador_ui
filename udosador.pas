unit UDosador;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, uRESTDWBase, uRESTDWServerEvents, ZConnection, ZDataset, fphttpclient, uConfiguracao ;

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
    grpLiquido2: TGroupBox;
    grpLiquido3: TGroupBox;
    grpLiquido4: TGroupBox;
    grpReceitas: TGroupBox;
    grpLiquido1: TGroupBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure btnLiq1_doseA1Click(Sender: TObject);
    procedure btnLiq1_doseA2Click(Sender: TObject);
    procedure btnLiq1_doseA3Click(Sender: TObject);
    procedure btnLiq1_doseA4Click(Sender: TObject);
    procedure btnLiq1_doseB1Click(Sender: TObject);
    procedure btnLiq1_doseB2Click(Sender: TObject);
    procedure btnLiq1_doseB3Click(Sender: TObject);
    procedure btnLiq1_doseB4Click(Sender: TObject);
    procedure btnLiq1_doseC1Click(Sender: TObject);
    procedure btnLiq1_doseC2Click(Sender: TObject);
    procedure btnLiq1_doseC3Click(Sender: TObject);
    procedure btnLiq1_doseC4Click(Sender: TObject);
    procedure hhhh(Sender: TObject);
    procedure btnLiq1_doseBClick(Sender: TObject);
    procedure btnLiq1_doseCClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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
  Link      : String = '?centrilitros=';

implementation

 uses UDM ;

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

procedure TfPrincipal.hhhh(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG1' + Link + Dm.TCAGSContCAG1Botao1.AsString);
end;

procedure TfPrincipal.btnLiq1_doseA1Click(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG2' + Link + Dm.TCAGSContCAG2Botao1.AsString);
end;

procedure TfPrincipal.btnLiq1_doseA2Click(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG3' + Link + Dm.TCAGSContCAG3Botao1.AsString);
end;

procedure TfPrincipal.btnLiq1_doseA3Click(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG4' + Link + Dm.TCAGSContCAG4Botao1.AsString);
end;

procedure TfPrincipal.btnLiq1_doseA4Click(Sender: TObject);
begin
 If Dm.TCAGSReceita1CAG1Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG1' + Link + Dm.TCAGSReceita1CAG1Ml.AsString);
 If Dm.TCAGSReceita1CAG2Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG2' + Link + Dm.TCAGSReceita1CAG2Ml.AsString);
 If Dm.TCAGSReceita1CAG3Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG3' + Link + Dm.TCAGSReceita1CAG3Ml.AsString);
 If Dm.TCAGSReceita1CAG4Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG4' + Link + Dm.TCAGSReceita1CAG4Ml.AsString);
end;

procedure TfPrincipal.btnLiq1_doseB1Click(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG2' + Link + Dm.TCAGSContCAG2Botao2.AsString);
end;

procedure TfPrincipal.btnLiq1_doseB2Click(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG3' + Link + Dm.TCAGSContCAG3Botao2.AsString);
end;

procedure TfPrincipal.btnLiq1_doseB3Click(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG4' + Link + Dm.TCAGSContCAG4Botao2.AsString);
end;

procedure TfPrincipal.btnLiq1_doseB4Click(Sender: TObject);
begin
  If Dm.TCAGSReceita2CAG1Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG1' + Link + Dm.TCAGSReceita2CAG1Ml.AsString);
  If Dm.TCAGSReceita2CAG2Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG2' + Link + Dm.TCAGSReceita2CAG2Ml.AsString);
  If Dm.TCAGSReceita2CAG3Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG3' + Link + Dm.TCAGSReceita2CAG3Ml.AsString);
  If Dm.TCAGSReceita2CAG4Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG4' + Link + Dm.TCAGSReceita2CAG4Ml.AsString);
end;

procedure TfPrincipal.btnLiq1_doseC1Click(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG2' + Link + Dm.TCAGSContCAG2Botao3.AsString);
end;

procedure TfPrincipal.btnLiq1_doseC2Click(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG3' + Link + Dm.TCAGSContCAG3Botao3.AsString);
end;

procedure TfPrincipal.btnLiq1_doseC3Click(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG4' + Link + Dm.TCAGSContCAG4Botao3.AsString);
end;

procedure TfPrincipal.btnLiq1_doseC4Click(Sender: TObject);
begin
  If Dm.TCAGSReceita3CAG1Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG1' + Link + Dm.TCAGSReceita3CAG1Ml.AsString);
  If Dm.TCAGSReceita3CAG2Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG2' + Link + Dm.TCAGSReceita3CAG2Ml.AsString);
  If Dm.TCAGSReceita3CAG3Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG3' + Link + Dm.TCAGSReceita3CAG3Ml.AsString);
  If Dm.TCAGSReceita3CAG4Ml.Value <> 0 Then
   EnviarComandoDosador(Dm.IpLink + '\CAG4' + Link + Dm.TCAGSReceita3CAG4Ml.AsString);
end;

procedure TfPrincipal.btnLiq1_doseBClick(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG1' + Link + Dm.TCAGSContCAG1Botao2.AsString);
end;

procedure TfPrincipal.btnLiq1_doseCClick(Sender: TObject);
begin
  EnviarComandoDosador(Dm.IpLink + '\CAG1' + Link + Dm.TCAGSContCAG1Botao3.AsString);
end;

procedure TfPrincipal.FormActivate(Sender: TObject);
begin

 grpLiquido1.Caption := '  ' + Dm.NomeCAG1 + '    ' ;
 grpLiquido2.Caption := '  ' + Dm.NomeCAG2 + '    ' ;
 grpLiquido3.Caption := '  ' + Dm.NomeCAG3 + '    ' ;
 grpLiquido4.Caption := '  ' + Dm.NomeCAG4 + '    ' ;

 btnLiq1_doseA.Caption := Dm.ContCAG1Botao1 + 'ml' ;
 btnLiq1_doseB.Caption := Dm.ContCAG1Botao2 + 'ml' ;
 btnLiq1_doseC.Caption := Dm.ContCAG1Botao3 + 'ml';

 btnLiq1_doseA1.Caption := Dm.ContCAG2Botao1 + 'ml' ;
 btnLiq1_doseB1.Caption := Dm.ContCAG2Botao2 + 'ml' ;
 btnLiq1_doseC1.Caption := Dm.ContCAG2Botao3 + 'ml' ;

 btnLiq1_doseA2.Caption := Dm.ContCAG3Botao1 + 'ml' ;
 btnLiq1_doseB2.Caption := Dm.ContCAG3Botao2 + 'ml' ;
 btnLiq1_doseC2.Caption := Dm.ContCAG3Botao3 + 'ml';

 btnLiq1_doseA3.Caption := Dm.ContCAG4Botao1 + 'ml';
 btnLiq1_doseB3.Caption := Dm.ContCAG4Botao2 + 'ml';
 btnLiq1_doseC3.Caption := Dm.ContCAG4Botao3 + 'ml';

 btnLiq1_doseA4.Caption := Dm.NomeReceitaB1 ;
 btnLiq1_doseB4.Caption := Dm.NomeReceitaB2 ;
 btnLiq1_doseC4.Caption := Dm.NomeReceitaB3 ;

end;

end.

