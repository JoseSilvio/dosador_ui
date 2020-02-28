unit frm1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls
  , fphttpclient;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    function FPHTTPClientDownload(URL: string; SaveToFile: boolean=false;
      Filename: string=''): string;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

function TForm1.FPHTTPClientDownload(URL: string; SaveToFile: boolean = false; Filename: string = ''): string;
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  memo1.Text := FPHTTPClientDownload(Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  memo1.Text := FPHTTPClientDownload(Edit1.Text, True, 'test.txt');
end;

end.

