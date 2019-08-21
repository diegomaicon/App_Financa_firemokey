unit DataModulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.FMXUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, System.IOUtils;


type
  Tdm = class(TDataModule)
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDCon: TFDConnection;
    qry_categoria: TFDQuery;
    qry_lancamento: TFDQuery;
    qry_categoriacat_codigo: TIntegerField;
    qry_categoriacat_descriao: TStringField;
    qry_lancamentolan_codigo: TIntegerField;
    qry_lancamentolan_valor: TBCDField;
    qry_lancamentolan_data: TDateTimeField;
    qry_lancamentolan_descricao: TStringField;
    qry_lancamentolan_catCodigo: TIntegerField;
    qry_lancamentolan_tipo: TStringField;
    qry_lancamentoCATEGORIA: TStringField;
    qry_lancamentoICONE: TLargeintField;
    qry_geral: TFDQuery;
    qry_perfil: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure qry_lancamentoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
   with FDCon do
        begin
                {$IFDEF IOS}
                Params.Values['DriverID'] := 'SQLite';
                try
                        Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'database.db');
                        Connected := true;
                except on E:Exception do
                        raise Exception.Create('Erro de conexão com o banco de dados: ' + E.Message);
                end;
                {$ENDIF}

                {$IFDEF ANDROID}
                Params.Values['DriverID'] := 'SQLite';
                try
                        Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'database.db');
                        Connected := true;
                except on E:Exception do
                        raise Exception.Create('Erro de conexão com o banco de dados: ' + E.Message);
                end;
                {$ENDIF}

                {$IFDEF MSWINDOWS}
                try
                        Params.Values['Database'] := 'C:\Users\Diego\Documents\money\DB\database.db';
                        Connected := true;
                except on E:Exception do
                        raise Exception.Create('Erro de conexão com o banco de dados: ' + E.Message);
                end;
                {$ENDIF}
        end;

end;

procedure Tdm.qry_lancamentoCalcFields(DataSet: TDataSet);
begin
      if dm.qry_lancamento.FieldByName('lan_tipo').AsString = 'C'
         then dm.qry_lancamento.FieldByName('lan_tipo').Value := 0
         else dm.qry_lancamento.FieldByName('lan_tipo').Value := 1;
end;

end.
