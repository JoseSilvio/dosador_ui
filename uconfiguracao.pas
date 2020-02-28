unit uConfiguracao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls;

type

  { TfConfiguracao }

  TfConfiguracao = class(TForm)
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
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
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
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
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
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
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
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

  Edit17.Text := Dm.NomeCAG1 ;
  Edit18.Text := Dm.NomeCAG2 ;
  Edit19.Text := Dm.NomeCAG3 ;
  Edit20.Text := Dm.NomeCAG4 ;

end;

procedure TfConfiguracao.DBEdit17Exit(Sender: TObject);
begin
 TestarConteudo(StrToInt(DbEdit17.Text), StrToInt(DbEdit7.Text), Edit17, DbEdit17) ;
end;

procedure TfConfiguracao.DBEdit18Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit18.Text), StrToInt(DbEdit10.Text), Edit18, DbEdit18) ;
end;

procedure TfConfiguracao.DBEdit19Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit19.Text), StrToInt(DbEdit13.Text), Edit19, DbEdit19) ;
end;

procedure TfConfiguracao.DBEdit20Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit20.Text), StrToInt(DbEdit16.Text), Edit20, DbEdit20) ;
end;

procedure TfConfiguracao.DBEdit21Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit21.Text), StrToInt(DbEdit7.Text), Edit17, DbEdit21) ;
end;

procedure TfConfiguracao.DBEdit22Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit22.Text), StrToInt(DbEdit10.Text), Edit18, DbEdit22) ;
end;

procedure TfConfiguracao.DBEdit23Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit23.Text), StrToInt(DbEdit13.Text), Edit19, DbEdit23) ;
end;

procedure TfConfiguracao.DBEdit24Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit24.Text), StrToInt(DbEdit16.Text), Edit20, DbEdit24) ;
end;

procedure TfConfiguracao.DBEdit25Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit25.Text), StrToInt(DbEdit7.Text), Edit17, DbEdit25) ;
end;

procedure TfConfiguracao.DBEdit26Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit26.Text), StrToInt(DbEdit10.Text), Edit18, DbEdit26) ;
end;

procedure TfConfiguracao.DBEdit27Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit27.Text), StrToInt(DbEdit13.Text), Edit19, DbEdit27) ;
end;

procedure TfConfiguracao.DBEdit28Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit28.Text), StrToInt(DbEdit16.Text), Edit20, DbEdit28) ;
end;

procedure TfConfiguracao.DBEdit29Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit29.Text), StrToInt(DbEdit7.Text), Edit17, DbEdit29) ;
end;

procedure TfConfiguracao.DBEdit30Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit30.Text), StrToInt(DbEdit10.Text), Edit18, DbEdit30) ;
end;

procedure TfConfiguracao.DBEdit31Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit31.Text), StrToInt(DbEdit13.Text), Edit19, DbEdit31) ;
end;

procedure TfConfiguracao.DBEdit32Exit(Sender: TObject);
begin
  TestarConteudo(StrToInt(DbEdit32.Text), StrToInt(DbEdit16.Text), Edit20, DbEdit32) ;
end;

procedure TfConfiguracao.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  //Dm.TCAGS.Post ;
  fPrincipal.OnActivate(Self);
end;

end.

