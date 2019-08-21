object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 311
  Width = 640
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 48
    Top = 32
  end
  object FDCon: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Diego\Documents\money\DB\database.db'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 160
    Top = 32
  end
  object qry_categoria: TFDQuery
    IndexesActive = False
    Connection = FDCon
    SQL.Strings = (
      'Select * from tbl_categoria'
      'order by cat_descriao')
    Left = 232
    Top = 32
    object qry_categoriacat_codigo: TIntegerField
      FieldName = 'cat_codigo'
      Origin = 'cat_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_categoriacat_descriao: TStringField
      FieldName = 'cat_descriao'
      Origin = 'cat_descriao'
      Size = 50
    end
  end
  object qry_lancamento: TFDQuery
    OnCalcFields = qry_lancamentoCalcFields
    IndexesActive = False
    Connection = FDCon
    Left = 312
    Top = 32
    object qry_lancamentolan_codigo: TIntegerField
      FieldName = 'lan_codigo'
      Origin = 'lan_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_lancamentolan_valor: TBCDField
      FieldName = 'lan_valor'
      Origin = 'lan_valor'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 8
      Size = 2
    end
    object qry_lancamentolan_data: TDateTimeField
      FieldName = 'lan_data'
      Origin = 'lan_data'
    end
    object qry_lancamentolan_descricao: TStringField
      FieldName = 'lan_descricao'
      Origin = 'lan_descricao'
      Size = 100
    end
    object qry_lancamentolan_catCodigo: TIntegerField
      FieldName = 'lan_catCodigo'
      Origin = 'lan_catCodigo'
    end
    object qry_lancamentolan_tipo: TStringField
      FieldName = 'lan_tipo'
      Origin = 'lan_tipo'
      Size = 1
    end
    object qry_lancamentoCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'cat_descriao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qry_lancamentoICONE: TLargeintField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'ICONE'
      Origin = 'ICONE'
      ProviderFlags = []
      ReadOnly = True
      Calculated = True
    end
  end
  object qry_geral: TFDQuery
    Connection = FDCon
    Left = 184
    Top = 152
  end
  object qry_perfil: TFDQuery
    Connection = FDCon
    SQL.Strings = (
      'select * from tbl_usuario')
    Left = 320
    Top = 152
  end
end
