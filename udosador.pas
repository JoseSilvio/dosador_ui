unit UDosador;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, uRESTDWBase, uRESTDWServerEvents, ZConnection, ZDataset, fphttpclient, uConfiguracao , Types;

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
    SpeedButton1: TSpeedButton;
    procedure btnLiq1_doseA1Click(Sender: TObject);
    procedure btnLiq1_doseA2Click(Sender: TObject);
    procedure btnLiq1_doseA3Click(Sender: TObject);
    procedure btnLiq1_doseA4Click(Sender: TObject);
    procedure btnLiq1_doseAClick(Sender: TObject);
    procedure btnLiq1_doseB1Click(Sender: TObject);
    procedure btnLiq1_doseB2Click(Sender: TObject);
    procedure btnLiq1_doseB3Click(Sender: TObject);
    procedure btnLiq1_doseB4Click(Sender: TObject);
    procedure btnLiq1_doseBContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
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
    function ConverteVolume(Vol : Double) : String ;
    function SomarConteudo(Vol1, Vol2, Vol3, Vol4 : String) : String ;
  private
    function EnviarComandoDosador(URL: string; SaveToFile: boolean=false;
      Filename: string=''): string;

    function EnviarDadosDosador(URL: string; SaveToFile: boolean=false;
      Filename: string=''): string;
  public

  end;

var
  fPrincipal: TfPrincipal;
  Link      : String = '?centilitros=';
  Url       : String = '' ;
  UrlEnvio  : String = 'https://recifemecatron.com/dosador/admin/api/add-dosagem.php';

implementation

 uses UDM ;

{$R *.lfm}

function TFPrincipal.ConverteVolume(Vol : Double) : String ;
Begin
 Vol    := Vol * 0.1 ;
 If Vol = 15 Then // 150 ml
   Vol := Vol + 1 ;
 If Vol = 20 Then // 200 ml
   Vol := Vol + 2;
 If Vol = 25 Then // 250 ml
   Vol := Vol + 3;
 If Vol = 30 Then // 300 ml
   Vol := Vol + 5;
 If Vol = 35 Then // 350 ml
   Vol := Vol + 5;
 If Vol = 40 Then // 400 ml
   Vol := Vol + 7;
 If Vol = 45 Then // 450 ml
   Vol := Vol + 7;
 If Vol = 50 Then // 500 ml
   Vol := Vol + 9;

 Result := CurrToStr(Vol) ;
end;

function TFPrincipal.SomarConteudo(Vol1, Vol2, Vol3, Vol4 : String) : String ;
Begin
 Result := IntToStr( StrtoInt(Vol1) + StrtoInt(Vol2) + StrtoInt(Vol3) + StrtoInt(Vol4) ) ;
end;

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

function TFPrincipal.EnviarDadosDosador(URL: string; SaveToFile: boolean = false; Filename: string = ''): string;
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
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag1' + Link + ConverteVolume(StrToCurr(Dm.Contcag1Botao1)));
end;

procedure TfPrincipal.btnLiq1_doseA1Click(Sender: TObject);
begin
  // CAG 2 BOTAO 1
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag2' + Link + ConverteVolume(StrToCurr(Dm.ContCAG2Botao1)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '2' + '&mililitros=' + Dm.ContCAG2Botao1 ;
  EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseA2Click(Sender: TObject);
begin
  // CAG 3 BOTAO 1
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag3' + Link + ConverteVolume(StrToCurr(Dm.ContCAG3Botao1)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '3' + '&mililitros=' + Dm.ContCAG3Botao1 ;
  EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseA3Click(Sender: TObject);
begin
  // CAG 4 BOTAO 1
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag4' + Link + ConverteVolume(StrToCurr(Dm.ContCAG4Botao1)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '4' + '&mililitros=' + Dm.ContCAG4Botao1 ;
  EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseA4Click(Sender: TObject);
begin

 If Dm.Receita1CAG1Ml <> '' Then
   Begin
    EnviarComandoDosador('http://' + Dm.IpLink + '/cag1' + Link + ConverteVolume(StrToCurr(Dm.Receita1CAG1Ml)));
    Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '1' + '&mililitros=' + Dm.Receita1CAG1Ml ;
    EnviarDadosDosador(Url) ;
   End;

 If Dm.Receita1CAG2Ml <> '' Then
   Begin
     EnviarComandoDosador('http://' + Dm.IpLink + '/cag2' + Link + ConverteVolume(StrToCurr(Dm.Receita1CAG2Ml)));
     Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '2' + '&mililitros=' + Dm.Receita1CAG2Ml ;
     EnviarDadosDosador(Url) ;
   end;
 If Dm.Receita1CAG3Ml <> '' Then
   Begin
     EnviarComandoDosador('http://' + Dm.IpLink + '/cag3' + Link + ConverteVolume(StrToCurr(Dm.Receita1CAG3Ml)));
     Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '3' + '&mililitros=' + Dm.Receita1CAG3Ml ;
     EnviarDadosDosador(Url) ;
   end;
 If Dm.Receita2CAG4Ml <> '' Then
   Begin
    EnviarComandoDosador('http://' + Dm.IpLink + '/cag4' + Link + ConverteVolume(StrToCurr(Dm.Receita1CAG4Ml)));
    Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '4' + '&mililitros=' + Dm.Receita1CAG4Ml ;
    EnviarDadosDosador(Url) ;
   end;
end;

procedure TfPrincipal.btnLiq1_doseAClick(Sender: TObject);
begin
 // CAG1 BOTAO 1
 EnviarComandoDosador('http://' + Dm.IpLink + '/cag1' + Link + ConverteVolume(StrToCurr(Dm.ContCAG1Botao1)));
 Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '1' + '&mililitros=' + Dm.ContCAG1Botao1 ;
 EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseB1Click(Sender: TObject);
begin
  // CAG 2 BOTAO 2
 EnviarComandoDosador('http://' + Dm.IpLink + '/cag2' + Link + ConverteVolume(StrToCurr(Dm.ContCAG2Botao2)));
 Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '2' + '&mililitros=' + Dm.ContCAG2Botao2 ;
 EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseB2Click(Sender: TObject);
begin
  // CAG 3 BOTAO 2
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag3' + Link + ConverteVolume(StrToCurr(Dm.ContCAG3Botao2)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '3' + '&mililitros=' + Dm.ContCAG3Botao2 ;
  EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseB3Click(Sender: TObject);
begin
  // CAG 4 BOTAO 2
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag4' + Link + ConverteVolume(StrToCurr(Dm.ContCAG4Botao2)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '4' + '&mililitros=' + Dm.ContCAG4Botao2 ;
  EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseB4Click(Sender: TObject);
begin
  If Dm.Receita2CAG1Ml <> '' Then
   Begin
    EnviarComandoDosador('http://' + Dm.IpLink + '/cag1' + Link + ConverteVolume(StrToCurr(Dm.Receita2CAG1Ml)));
    Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '1' + '&mililitros=' + Dm.Receita2CAG1Ml ;
    EnviarDadosDosador(Url) ;
   end;
  If Dm.Receita2CAG2Ml <> '' Then
    Begin
     EnviarComandoDosador('http://' + Dm.IpLink + '/cag2' + Link + ConverteVolume(StrToCurr(Dm.Receita2CAG2Ml)));
     Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '2' + '&mililitros=' + Dm.Receita2CAG2Ml ;
     EnviarDadosDosador(Url) ;
    end;
  If Dm.Receita2CAG3Ml <> '' Then
   Begin
     EnviarComandoDosador('http://' + Dm.IpLink + '/cag3' + Link + ConverteVolume(StrToCurr(Dm.Receita2CAG3Ml)));
     Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '3' + '&mililitros=' + Dm.Receita2CAG3Ml ;
     EnviarDadosDosador(Url) ;
   end;
  If Dm.Receita2CAG4Ml <> '' Then
   Begin
     EnviarComandoDosador('http://' + Dm.IpLink + '/cag4' + Link + ConverteVolume(StrToCurr(Dm.Receita2CAG4Ml)));
     Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '4' + '&mililitros=' + Dm.Receita2CAG4Ml ;
     EnviarDadosDosador(Url) ;
   end;
end;

procedure TfPrincipal.btnLiq1_doseBContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TfPrincipal.btnLiq1_doseC1Click(Sender: TObject);
begin
  // CAG 2 BOTAO 3
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag2' + Link + ConverteVolume(StrToCurr(Dm.ContCAG2Botao3)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '2' + '&mililitros=' + Dm.ContCAG2Botao3 ;
  EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseC2Click(Sender: TObject);
begin
  // CAG 3 BOTAO 3
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag3' + Link + ConverteVolume(StrToCurr(Dm.ContCAG3Botao3)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '3' + '&mililitros=' + Dm.ContCAG3Botao3 ;
  EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseC3Click(Sender: TObject);
begin
  // CAG 4 BOTAO 3
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag4' + Link + ConverteVolume(StrToCurr(Dm.ContCAG4Botao3)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '4' + '&mililitros=' + Dm.ContCAG4Botao3 ;
  EnviarDadosDosador(Url) ;

end;

procedure TfPrincipal.btnLiq1_doseC4Click(Sender: TObject);
begin
  If Dm.Receita3CAG1Ml <> '' Then
    Begin
     EnviarComandoDosador('http://' + Dm.IpLink + '/cag1' + Link + ConverteVolume(StrToCurr(Dm.Receita3CAG1Ml)));
     Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '1' + '&mililitros=' + Dm.Receita3CAG1Ml ;
     EnviarDadosDosador(Url) ;
    end;
  If Dm.Receita3CAG2Ml <> '' Then
    Begin
     EnviarComandoDosador('http://' + Dm.IpLink + '/cag2' + Link + ConverteVolume(StrToCurr(Dm.Receita3CAG2Ml)));
     Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '2' + '&mililitros=' + Dm.Receita3CAG2Ml ;
     EnviarDadosDosador(Url) ;
    end;
  If Dm.Receita3CAG3Ml <> '' Then
   Begin
    EnviarComandoDosador('http://' + Dm.IpLink + '/cag3' + Link + ConverteVolume(StrToCurr(Dm.Receita3CAG3Ml)));
    Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '3' + '&mililitros=' + Dm.Receita3CAG3Ml ;
    EnviarDadosDosador(Url) ;
   end;
  If Dm.Receita3CAG4Ml <> '' Then
    Begin
     EnviarComandoDosador('http://' + Dm.IpLink + '/cag4' + Link + ConverteVolume(StrToCurr(Dm.Receita3CAG4Ml)));
     Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '4' + '&mililitros=' + Dm.Receita3CAG4Ml ;
     EnviarDadosDosador(Url) ;
    end;

end;

procedure TfPrincipal.btnLiq1_doseBClick(Sender: TObject);
begin
  // CAG 1 BOTAO 2
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag1' + Link + ConverteVolume(StrToCurr(Dm.ContCAG1Botao2)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '1' + '&mililitros=' + Dm.ContCAG1Botao2 ;
  EnviarDadosDosador(Url) ;
end;

procedure TfPrincipal.btnLiq1_doseCClick(Sender: TObject);
begin
  // CAG 1 BOTAO 3
  EnviarComandoDosador('http://' + Dm.IpLink + '/cag1' + Link + ConverteVolume(StrToCurr(Dm.ContCAG1Botao3)));
  Url := UrlEnvio + '?id_dispositivo=' + '1' + '&reservatorio=' + '1' + '&mililitros=' + Dm.ContCAG1Botao3 ;
  EnviarDadosDosador(Url) ;
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

