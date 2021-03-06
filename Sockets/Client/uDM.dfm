object DM: TDM
  OldCreateOrder = False
  Height = 150
  Width = 293
  object conTeste: TSocketConnection
    Connected = True
    ServerGUID = '{A51279DE-9BA9-4BC1-BF47-D0BBBEF116E9}'
    ServerName = 'servidorTeste.Consulta'
    Host = '127.0.0.1'
    Left = 32
    Top = 16
  end
  object cds_Consulta: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CLIENTES'
    Params = <>
    ProviderName = 'dsp_Consulta'
    RemoteServer = conTeste
    Left = 120
    Top = 16
    object cds_Consultaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cds_Consultanome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object cds_Consultacpf: TStringField
      FieldName = 'cpf'
      Size = 15
    end
    object cds_Consultaendereco: TStringField
      FieldName = 'endereco'
      Size = 200
    end
    object cds_Consultatelefone: TStringField
      FieldName = 'telefone'
    end
  end
  object ds_Consulta: TDataSource
    DataSet = cds_Consulta
    Left = 208
    Top = 16
  end
  object cds_Eventos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Consulta'
    RemoteServer = conTeste
    Left = 120
    Top = 64
    object IntegerField1: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'cpf'
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'endereco'
      Size = 200
    end
    object StringField4: TStringField
      FieldName = 'telefone'
    end
  end
end
