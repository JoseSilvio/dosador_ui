unit uDM;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, dbf, ZConnection, ZDataset, IniFiles, Windows,
  Messages, Variants, Graphics, Controls, Forms, Dialogs, ExtCtrls, ComCtrls,
  Menus, Buttons, StdCtrls, Grids, DBGrids, IdBaseComponent, IdComponent,
  IdIPWatch ;

type

  { TDm }

  TDm = class(TDataModule)
    Conexao: TZConnection;
    DSSQLCAGS: TDataSource;
    DSCAGS: TDataSource;
    TCAGSContCAG1Botao1: TLongintField;
    TCAGSContCAG1Botao2: TLongintField;
    TCAGSContCAG1Botao3: TLongintField;
    TCAGSContCAG2Botao1: TLongintField;
    TCAGSContCAG2Botao2: TLongintField;
    TCAGSContCAG2Botao3: TLongintField;
    TCAGSContCAG3Botao1: TLongintField;
    TCAGSContCAG3Botao2: TLongintField;
    TCAGSContCAG3Botao3: TLongintField;
    TCAGSContCAG4Botao1: TLongintField;
    TCAGSContCAG4Botao2: TLongintField;
    TCAGSContCAG4Botao3: TLongintField;
    TCAGSContReceitaB1: TLongintField;
    TCAGSContReceitaB2: TLongintField;
    TCAGSContReceitaB3: TLongintField;
    TCAGSContReceitaB4: TLongintField;
    TCAGSLink: TStringField;
    TCAGSNomeCAG1: TStringField;
    TCAGSNomeCAG2: TStringField;
    TCAGSNomeCAG3: TStringField;
    TCAGSNomeCAG4: TStringField;
    TCAGSNomeReceitaB1: TStringField;
    TCAGSNomeReceitaB2: TStringField;
    TCAGSNomeReceitaB3: TStringField;
    TCAGSNomeReceitaB4: TStringField;
    TCAGSReceita1CAG1Ml: TLongintField;
    TCAGSReceita1CAG2Ml: TLongintField;
    TCAGSReceita1CAG3Ml: TLongintField;
    TCAGSReceita1CAG4Ml: TLongintField;
    TCAGSReceita2CAG1Ml: TLongintField;
    TCAGSReceita2CAG2Ml: TLongintField;
    TCAGSReceita2CAG3Ml: TLongintField;
    TCAGSReceita2CAG4Ml: TLongintField;
    TCAGSReceita3CAG1Ml: TLongintField;
    TCAGSReceita3CAG2Ml: TLongintField;
    TCAGSReceita3CAG3Ml: TLongintField;
    TCAGSReceita3CAG4Ml: TLongintField;
    TCAGSReceita4CAG1Ml: TLongintField;
    TCAGSReceita4CAG2Ml: TLongintField;
    TCAGSReceita4CAG3Ml: TLongintField;
    TCAGSReceita4CAG4Ml: TLongintField;
    TSQLCAGS: TZQuery;
    TSQLCAGSContCAG1Botao1: TLongintField;
    TSQLCAGSContCAG1Botao2: TLongintField;
    TSQLCAGSContCAG1Botao3: TLongintField;
    TSQLCAGSContCAG2Botao1: TLongintField;
    TSQLCAGSContCAG2Botao2: TLongintField;
    TSQLCAGSContCAG2Botao3: TLongintField;
    TSQLCAGSContCAG3Botao1: TLongintField;
    TSQLCAGSContCAG3Botao2: TLongintField;
    TSQLCAGSContCAG3Botao3: TLongintField;
    TSQLCAGSContCAG4Botao1: TLongintField;
    TSQLCAGSContCAG4Botao2: TLongintField;
    TSQLCAGSContCAG4Botao3: TLongintField;
    TSQLCAGSContReceitaB1: TLongintField;
    TSQLCAGSContReceitaB2: TLongintField;
    TSQLCAGSContReceitaB3: TLongintField;
    TSQLCAGSContReceitaB4: TLongintField;
    TSQLCAGSLink: TStringField;
    TSQLCAGSNomeCAG1: TStringField;
    TSQLCAGSNomeCAG2: TStringField;
    TSQLCAGSNomeCAG3: TStringField;
    TSQLCAGSNomeCAG4: TStringField;
    TSQLCAGSNomeReceitaB1: TStringField;
    TSQLCAGSNomeReceitaB2: TStringField;
    TSQLCAGSNomeReceitaB3: TStringField;
    TSQLCAGSNomeReceitaB4: TStringField;
    TSQLCAGSReceita1CAG1Ml: TLongintField;
    TSQLCAGSReceita1CAG2Ml: TLongintField;
    TSQLCAGSReceita1CAG3Ml: TLongintField;
    TSQLCAGSReceita1CAG4Ml: TLongintField;
    TSQLCAGSReceita2CAG1Ml: TLongintField;
    TSQLCAGSReceita2CAG2Ml: TLongintField;
    TSQLCAGSReceita2CAG3Ml: TLongintField;
    TSQLCAGSReceita2CAG4Ml: TLongintField;
    TSQLCAGSReceita3CAG1Ml: TLongintField;
    TSQLCAGSReceita3CAG2Ml: TLongintField;
    TSQLCAGSReceita3CAG3Ml: TLongintField;
    TSQLCAGSReceita3CAG4Ml: TLongintField;
    TSQLCAGSReceita4CAG1Ml: TLongintField;
    TSQLCAGSReceita4CAG2Ml: TLongintField;
    TSQLCAGSReceita4CAG3Ml: TLongintField;
    TSQLCAGSReceita4CAG4Ml: TLongintField;
    procedure DataModuleCreate(Sender: TObject);
    FUNCTION LerTexto(Campo : String) : String ;
  private

  public
    IpLink         : String ;
    NomeCAG1       : String ;
    NomeCAG2       : String ;
    NomeCAG3       : String ;
    NomeCAG4       : String ;
    ContCAG1Botao1 : String ;
    ContCAG1Botao2 : String ;
    ContCAG1Botao3 : String ;
    ContCAG2Botao1 : String ;
    ContCAG2Botao2 : String ;
    ContCAG2Botao3 : String ;
    ContCAG3Botao1 : String ;
    ContCAG3Botao2 : String ;
    ContCAG3Botao3 : String ;
    ContCAG4Botao1 : String ;
    ContCAG4Botao2 : String ;
    ContCAG4Botao3 : String ;
    Receita1CAG1Ml : String ;
    Receita1CAG2Ml : String ;
    Receita1CAG3Ml : String ;
    Receita1CAG4Ml : String ;
    Receita2CAG1Ml : String ;
    Receita2CAG2Ml : String ;
    Receita2CAG3Ml : String ;
    Receita2CAG4Ml : String ;
    Receita3CAG1Ml : String ;
    Receita3CAG2Ml : String ;
    Receita3CAG3Ml : String ;
    Receita3CAG4Ml : String ;
    Receita4CAG1Ml : String ;
    Receita4CAG2Ml : String ;
    Receita4CAG3Ml : String ;
    Receita4CAG4Ml : String ;
    NomeReceitaB1  : String ;
    NomeReceitaB2  : String ;
    NomeReceitaB3  : String ;
    ContReceitaB1  : String ;
    ContReceitaB2  : String ;
    ContReceitaB3  : String ;
  end;

var
  Dm: TDm;

implementation

{$R *.lfm}

Function TDm.LerTexto(Campo : String) : String ;
var
  Ini: TIniFile ;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    RESULT  := Ini.ReadSTRING( 'CONFIG', CAMPO,  '' );
  finally
    Ini.Free;
  end;
end;


{ TDm }

procedure TDm.DataModuleCreate(Sender: TObject);

begin
  IpLink         := LerTexto('IpLink');
  NomeCAG1       := LerTexto('NomeCAG1') ;
  NomeCAG2       := LerTexto('NomeCAG2') ;
  NomeCAG3       := LerTexto('NomeCAG3') ;
  NomeCAG4       := LerTexto('NomeCAG4') ;
  ContCAG1Botao1 := LerTexto('ContCAG1Botao1') ;
  ContCAG1Botao2 := LerTexto('ContCAG1Botao2') ;
  ContCAG1Botao3 := LerTexto('ContCAG1Botao3') ;
  ContCAG2Botao1 := LerTexto('ContCAG2Botao1') ;
  ContCAG2Botao2 := LerTexto('ContCAG2Botao2') ;
  ContCAG2Botao3 := LerTexto('ContCAG2Botao3') ;
  ContCAG3Botao1 := LerTexto('ContCAG3Botao1') ;
  ContCAG3Botao2 := LerTexto('ContCAG3Botao2') ;
  ContCAG3Botao3 := LerTexto('ContCAG3Botao3') ;
  ContCAG4Botao1 := LerTexto('ContCAG4Botao1') ;
  ContCAG4Botao2 := LerTexto('ContCAG4Botao2') ;
  ContCAG4Botao3 := LerTexto('ContCAG4Botao3') ;
  Receita1CAG1Ml := LerTexto('Receita1CAG1Ml') ;
  Receita1CAG2Ml := LerTexto('Receita1CAG2Ml') ;
  Receita1CAG3Ml := LerTexto('Receita1CAG3Ml') ;
  Receita1CAG4Ml := LerTexto('Receita1CAG4Ml') ;
  Receita2CAG1Ml := LerTexto('Receita2CAG1Ml') ;
  Receita2CAG2Ml := LerTexto('Receita2CAG2Ml') ;
  Receita2CAG3Ml := LerTexto('Receita2CAG3Ml') ;
  Receita2CAG4Ml := LerTexto('Receita2CAG4Ml') ;
  Receita3CAG1Ml := LerTexto('Receita3CAG1Ml') ;
  Receita3CAG2Ml := LerTexto('Receita3CAG2Ml') ;
  Receita3CAG3Ml := LerTexto('Receita3CAG3Ml') ;
  Receita3CAG4Ml := LerTexto('Receita3CAG4Ml') ;
  Receita4CAG1Ml := LerTexto('Receita4CAG1Ml') ;
  Receita4CAG2Ml := LerTexto('Receita4CAG2Ml') ;
  Receita4CAG3Ml := LerTexto('Receita4CAG3Ml') ;
  Receita4CAG4Ml := LerTexto('Receita4CAG4Ml') ;
  NomeReceitaB1  := LerTexto('NomeReceitaB1') ;
  NomeReceitaB2  := LerTexto('NomeReceitaB2') ;
  NomeReceitaB3  := LerTexto('NomeReceitaB3') ;
  ContReceitaB1  := LerTexto('ContReceitaB1') ;
  ContReceitaB2  := LerTexto('ContReceitaB2') ;
  ContReceitaB3  := LerTexto('ContReceitaB3') ;
end;






end.

