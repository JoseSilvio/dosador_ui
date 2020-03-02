unit uConfiguracao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls, MaskEdit,
  IniFiles ;

type

  { TfConfiguracao }

  TfConfiguracao = class(TForm)
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit2: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit3: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit4: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit5: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure GroupBox1Click(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
    Function TestarConteudo(VolReceita : Integer ; VolMaximo : Integer ; ObjDesc : TObject ; ObjFoco : TObject): string;
    procedure GravarTexto(Destino, Origem : String);
  private

  public

  end;

var
  fConfiguracao: TfConfiguracao;

implementation

Uses UDm, UDosador ;

{$R *.lfm}


{ TfConfiguracao }

Function TfConfiguracao.TestarConteudo(VolReceita : Integer ; VolMaximo : Integer ; ObjDesc : TObject ; ObjFoco : TObject): string;
Begin
  If VolReceita > VolMaximo Then
   Begin
    ShowMessage('Quantidade informada é superior ao volume máximo contido em ' + TDbEdit(ObjDesc).Caption) ;
    TDbEdit(ObjFoco).SetFocus;
   end;

End;

procedure TfConfiguracao.GravarTexto(Destino,Origem : String);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WRITESTRING( 'CONFIG', DESTINO,  ORIGEM );
  finally
    Ini.Free;
  end;
end;

procedure TfConfiguracao.GroupBox1Click(Sender: TObject);
begin

end;

procedure TfConfiguracao.GroupBox2Click(Sender: TObject);
begin

end;

procedure TfConfiguracao.FormKeyPress(Sender: TObject; var Key: char);
begin
    if key=#13 then begin
     SelectNext(ActiveControl as TWinControl,True,True);
     key:=#0;
    end;
end;

procedure TfConfiguracao.FormCreate(Sender: TObject);
begin

end;

procedure TfConfiguracao.FormActivate(Sender: TObject);
begin

  // Ip de Envio
  Edit57.Text := Dm.IpLink ;

  // Descrição dos CAGS nas Receitas
  Edit1.Text := Dm.NomeCAG1 ;
  Edit3.Text := Dm.NomeCAG2 ;
  Edit4.Text := Dm.NomeCAG3 ;
  Edit5.Text := Dm.NomeCAG4 ;

  Edit2.Text := Dm.NomeCAG1 ;
  Edit6.Text := Dm.NomeCAG2 ;
  Edit7.Text := Dm.NomeCAG3 ;
  Edit8.Text := Dm.NomeCAG4 ;

  Edit9.Text  := Dm.NomeCAG1 ;
  Edit10.Text := Dm.NomeCAG2 ;
  Edit11.Text := Dm.NomeCAG3 ;
  Edit12.Text := Dm.NomeCAG4 ;

  Edit13.Text := Dm.NomeCAG1 ;
  Edit14.Text := Dm.NomeCAG2 ;
  Edit15.Text := Dm.NomeCAG3 ;
  Edit16.Text := Dm.NomeCAG4 ;

  // Descrição dos CAGS nos Botões
  Edit17.Text := Dm.NomeCAG1 ;
  Edit18.Text := Dm.NomeCAG2 ;
  Edit19.Text := Dm.NomeCAG3 ;
  Edit20.Text := Dm.NomeCAG4 ;

  // Conteúdo dos CAGS
  Edit21.Text := Dm.ContCAG1Botao1 ;
  Edit22.Text := Dm.ContCAG1Botao2 ;
  Edit23.Text := Dm.ContCAG1Botao3 ;

  Edit24.Text := Dm.ContCAG2Botao1 ;
  Edit25.Text := Dm.ContCAG2Botao2 ;
  Edit26.Text := Dm.ContCAG2Botao3 ;

  Edit27.Text := Dm.ContCAG3Botao1 ;
  Edit28.Text := Dm.ContCAG3Botao2 ;
  Edit29.Text := Dm.ContCAG3Botao3 ;

  Edit30.Text := Dm.ContCAG4Botao1 ;
  Edit31.Text := Dm.ContCAG4Botao2 ;
  Edit32.Text := Dm.ContCAG4Botao3 ;

  // Contéudo das Receitas
  Edit33.Text := Dm.Receita1CAG1Ml ;
  Edit34.Text := Dm.Receita1CAG2Ml ;
  Edit35.Text := Dm.Receita1CAG3Ml ;
  Edit36.Text := Dm.Receita1CAG4Ml ;

  Edit37.Text := Dm.Receita2CAG1Ml ;
  Edit38.Text := Dm.Receita2CAG2Ml ;
  Edit39.Text := Dm.Receita2CAG3Ml ;
  Edit40.Text := Dm.Receita2CAG4Ml ;

  Edit41.Text := Dm.Receita3CAG1Ml ;
  Edit42.Text := Dm.Receita3CAG2Ml ;
  Edit43.Text := Dm.Receita3CAG3Ml ;
  Edit44.Text := Dm.Receita3CAG4Ml ;

  Edit45.Text := Dm.Receita4CAG1Ml ;
  Edit46.Text := Dm.Receita4CAG2Ml ;
  Edit47.Text := Dm.Receita4CAG3Ml ;
  Edit48.Text := Dm.Receita4CAG4Ml ;

  // Descrição das Receitas
  Edit49.Text := Dm.NomeReceitaB1 ;
  Edit50.Text := Dm.ContReceitaB1 ;

  Edit51.Text := Dm.NomeReceitaB2 ;
  Edit52.Text := Dm.ContReceitaB2 ;

  Edit53.Text := Dm.NomeReceitaB3 ;
  Edit54.Text := Dm.ContReceitaB3 ;

  //Edit55.Text := Dm.NomeReceitaB4 ;
  //Edit56.Text := Dm.ContReceitaB4 ;
end;

procedure TfConfiguracao.DBEdit17Exit(Sender: TObject);
begin
 //TestarConteudo(StrToInt(DbEdit17.Text), StrToInt(DbEdit7.Text), Edit17, DbEdit17) ;
end;

procedure TfConfiguracao.DBEdit18Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit18.Text), StrToInt(DbEdit10.Text), Edit18, DbEdit18) ;
end;

procedure TfConfiguracao.DBEdit19Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit19.Text), StrToInt(DbEdit13.Text), Edit19, DbEdit19) ;
end;

procedure TfConfiguracao.DBEdit20Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit20.Text), StrToInt(DbEdit16.Text), Edit20, DbEdit20) ;
end;

procedure TfConfiguracao.DBEdit21Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit21.Text), StrToInt(DbEdit7.Text), Edit17, DbEdit21) ;
end;

procedure TfConfiguracao.DBEdit22Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit22.Text), StrToInt(DbEdit10.Text), Edit18, DbEdit22) ;
end;

procedure TfConfiguracao.DBEdit23Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit23.Text), StrToInt(DbEdit13.Text), Edit19, DbEdit23) ;
end;

procedure TfConfiguracao.DBEdit24Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit24.Text), StrToInt(DbEdit16.Text), Edit20, DbEdit24) ;
end;

procedure TfConfiguracao.DBEdit25Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit25.Text), StrToInt(DbEdit7.Text), Edit17, DbEdit25) ;
end;

procedure TfConfiguracao.DBEdit26Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit26.Text), StrToInt(DbEdit10.Text), Edit18, DbEdit26) ;
end;

procedure TfConfiguracao.DBEdit27Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit27.Text), StrToInt(DbEdit13.Text), Edit19, DbEdit27) ;
end;

procedure TfConfiguracao.DBEdit28Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit28.Text), StrToInt(DbEdit16.Text), Edit20, DbEdit28) ;
end;

procedure TfConfiguracao.DBEdit29Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit29.Text), StrToInt(DbEdit7.Text), Edit17, DbEdit29) ;
end;

procedure TfConfiguracao.DBEdit30Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit30.Text), StrToInt(DbEdit10.Text), Edit18, DbEdit30) ;
end;

procedure TfConfiguracao.DBEdit31Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit31.Text), StrToInt(DbEdit13.Text), Edit19, DbEdit31) ;
end;

procedure TfConfiguracao.DBEdit32Exit(Sender: TObject);
begin
  //TestarConteudo(StrToInt(DbEdit32.Text), StrToInt(DbEdit16.Text), Edit20, DbEdit32) ;
end;

procedure TfConfiguracao.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
Var
Cam     : String ;
Var Arq : TextFile;
begin

  // Gravando dados no arquivo .INI
  Cam :=  ExtractFilePath(Application.ExeName)+'Dosador.Ini';
  AssignFile(Arq,Cam);
  Rewrite(Arq);

  WriteLn(Arq,'[CONFIG]');

  // Ip para envio
  WriteLn(Arq,'IpLink='+Edit57.Text);

  // Descrição dos CAGS
  WriteLn(Arq,'NomeCAG1 = '+ Edit17.Text) ;
  WriteLn(Arq,'NomeCAG2 = '+ Edit18.Text) ;
  WriteLn(Arq,'NomeCAG3 = '+ Edit19.Text) ;
  WriteLn(Arq,'NomeCAG4 = '+ Edit20.Text) ;

  // Conteúdo dos CAGS
  WriteLn(Arq,'ContCAG1Botao1 = '+ Edit21.Text) ;
  WriteLn(Arq,'ContCAG1Botao2 = '+ Edit22.Text) ;
  WriteLn(Arq,'ContCAG1Botao3 = '+ Edit23.Text) ;

  WriteLn(Arq,'ContCAG2Botao1 = '+ Edit24.Text) ;
  WriteLn(Arq,'ContCAG2Botao2 = '+ Edit25.Text) ;
  WriteLn(Arq,'ContCAG2Botao3 = '+ Edit26.Text) ;

  WriteLn(Arq,'ContCAG3Botao1 = '+ Edit27.Text) ;
  WriteLn(Arq,'ContCAG3Botao2 = '+ Edit28.Text) ;
  WriteLn(Arq,'ContCAG3Botao3 = '+ Edit29.Text) ;

  WriteLn(Arq,'ContCAG4Botao1 = '+ Edit30.Text) ;
  WriteLn(Arq,'ContCAG4Botao2 = '+ Edit31.Text) ;
  WriteLn(Arq,'ContCAG4Botao3 = '+ Edit32.Text) ;

  // Contéudo das Receitas
  WriteLn(Arq,'Receita1CAG1Ml = '+ Edit33.Text) ;
  WriteLn(Arq,'Receita1CAG2Ml = '+ Edit34.Text) ;
  WriteLn(Arq,'Receita1CAG3Ml = '+ Edit35.Text) ;
  WriteLn(Arq,'Receita1CAG4Ml = '+ Edit36.Text) ;

  WriteLn(Arq,'Receita2CAG1Ml = '+ Edit37.Text) ;
  WriteLn(Arq,'Receita2CAG2Ml = '+ Edit38.Text) ;
  WriteLn(Arq,'Receita2CAG3Ml = '+ Edit39.Text) ;
  WriteLn(Arq,'Receita2CAG4Ml = '+ Edit40.Text) ;

  WriteLn(Arq,'Receita3CAG1Ml = '+ Edit41.Text) ;
  WriteLn(Arq,'Receita3CAG2Ml = '+ Edit42.Text) ;
  WriteLn(Arq,'Receita3CAG3Ml = '+ Edit43.Text) ;
  WriteLn(Arq,'Receita3CAG4Ml = '+ Edit44.Text) ;

  WriteLn(Arq,'Receita4CAG1Ml = '+ Edit45.Text) ;
  WriteLn(Arq,'Receita4CAG2Ml = '+ Edit46.Text) ;
  WriteLn(Arq,'Receita4CAG3Ml = '+ Edit47.Text) ;
  WriteLn(Arq,'Receita4CAG4Ml = '+ Edit48.Text) ;

  // Descrição das Receitas
  WriteLn(Arq,'NomeReceitaB1 = '+ Edit49.Text) ;
  WriteLn(Arq,'ContReceitaB1 = '+ Edit50.Text) ;

  WriteLn(Arq,'NomeReceitaB2 = '+ Edit51.Text) ;
  WriteLn(Arq,'ContReceitaB2 = '+ Edit52.Text) ;

  WriteLn(Arq,'NomeReceitaB3 = '+ Edit53.Text) ;
  WriteLn(Arq,'ContReceitaB3 = '+ Edit54.Text) ;

  ShowMessage('Dados Salvos com Sucesso !');

  CloseFile(Arq) ;

  Dm.OnCreate(Self) ;
  fPrincipal.OnActivate(Self);
end;

end.

