object Consulta: TConsulta
  OldCreateOrder = False
  Height = 347
  Width = 282
  object sds_Consulta: TSQLDataSet
    CommandText = 'select * from clientes'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmServer.conTeste
    Left = 64
    Top = 16
  end
  object dsp_Consulta: TDataSetProvider
    DataSet = sds_Consulta
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 152
    Top = 16
  end
end
