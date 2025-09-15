unit Biblioteca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    painelLivro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    btnEditar: TLabel;
    painelCadastrar: TPanel;
    Panel3: TPanel;
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery1Nome_Livro: TWideStringField;
    FDQuery1Ano_Lancamento: TIntegerField;
    FDQuery1Genero: TWideStringField;
    FDQuery1Autor: TWideStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Button1: TButton;
    btnListar: TButton;
    Label3: TLabel;
    painelEditar: TPanel;
    Panel4: TPanel;
    Button2: TButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBGrid2: TDBGrid;
    btnDeletar: TButton;
    Image1: TImage;
    Label8: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.btnDeletarClick(Sender: TObject);
begin
    FDQuery1.Delete;
end;

procedure TForm1.btnEditarClick(Sender: TObject);
begin
    painelLivro.Visible := False;
    painelCadastrar.Visible := False;
    painelEditar.Visible :=True;
    FDQuery1.Close;
    FDQuery1.Open;
    FDQuery1.Edit;
end;

procedure TForm1.btnEditarMouseEnter(Sender: TObject);
begin
     btnEditar.Font.Color := $00936300;
end;

procedure TForm1.btnEditarMouseLeave(Sender: TObject);
begin
       btnEditar.Font.Color := $00D28E00;
end;

procedure TForm1.btnListarClick(Sender: TObject);
begin
  FDQuery1.Close;
  FDQuery1.Open;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDQuery1.Post;
end;






procedure TForm1.Label1Click(Sender: TObject);
begin
        FDQuery1.Close;
       painelCadastrar.Visible := False;
       painelEditar.Visible := False;
       painelLivro.Visible := True;
end;

procedure TForm1.Label1MouseEnter(Sender: TObject);
begin
    Label1.Font.Color := $00936300;
end;


procedure TForm1.Label1MouseLeave(Sender: TObject);
begin
  Label1.Font.Color := $00D28E00;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
  painelLivro.Visible := False;
  painelEditar.Visible := False;
  painelCadastrar.Visible := True;
  FDQuery1.Append;
end;


procedure TForm1.Label2MouseEnter(Sender: TObject);
begin
     Label2.Font.Color := $00936300;
end;



procedure TForm1.Label2MouseLeave(Sender: TObject);
begin
    Label2.Font.Color := $00D28E00;
end;



end.
