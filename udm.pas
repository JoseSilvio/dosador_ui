unit uDM;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, ZConnection, ZDataset;

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
    TCAGSNomeCAG1: TStringField;
    TCAGSNomeCAG2: TStringField;
    TCAGSNomeCAG3: TStringField;
    TCAGSNomeCAG4: TStringField;
    TCAGSRceita1CAG1Ml: TLongintField;
    TCAGSRceita1CAG2Ml: TLongintField;
    TCAGSRceita1CAG3Ml: TLongintField;
    TCAGSRceita1CAG4Ml: TLongintField;
    TCAGSRceita2CAG1Ml: TLongintField;
    TCAGSRceita2CAG2Ml: TLongintField;
    TCAGSRceita2CAG3Ml: TLongintField;
    TCAGSRceita2CAG4Ml: TLongintField;
    TCAGSRceita3CAG1Ml: TLongintField;
    TCAGSRceita3CAG2Ml: TLongintField;
    TCAGSRceita3CAG3Ml: TLongintField;
    TCAGSRceita3CAG4Ml: TLongintField;
    TCAGSRceita4CAG1Ml: TLongintField;
    TCAGSRceita4CAG2Ml: TLongintField;
    TCAGSRceita4CAG3Ml: TLongintField;
    TCAGSRceita4CAG4Ml: TLongintField;
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
    TSQLCAGSNomeCAG1: TStringField;
    TSQLCAGSNomeCAG2: TStringField;
    TSQLCAGSNomeCAG3: TStringField;
    TSQLCAGSNomeCAG4: TStringField;
    TCAGS: TZTable;
    TSQLCAGSRceita1CAG1Ml: TLongintField;
    TSQLCAGSRceita1CAG2Ml: TLongintField;
    TSQLCAGSRceita1CAG3Ml: TLongintField;
    TSQLCAGSRceita1CAG4Ml: TLongintField;
    TSQLCAGSRceita2CAG1Ml: TLongintField;
    TSQLCAGSRceita2CAG2Ml: TLongintField;
    TSQLCAGSRceita2CAG3Ml: TLongintField;
    TSQLCAGSRceita2CAG4Ml: TLongintField;
    TSQLCAGSRceita3CAG1Ml: TLongintField;
    TSQLCAGSRceita3CAG2Ml: TLongintField;
    TSQLCAGSRceita3CAG3Ml: TLongintField;
    TSQLCAGSRceita3CAG4Ml: TLongintField;
    TSQLCAGSRceita4CAG1Ml: TLongintField;
    TSQLCAGSRceita4CAG2Ml: TLongintField;
    TSQLCAGSRceita4CAG3Ml: TLongintField;
    TSQLCAGSRceita4CAG4Ml: TLongintField;
  private

  public

  end;

var
  Dm: TDm;

implementation

{$R *.lfm}

end.

