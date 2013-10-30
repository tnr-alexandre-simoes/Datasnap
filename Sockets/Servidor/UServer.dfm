object FrmServer: TFrmServer
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CodeGear Delphi 2007 - Servidor de Aplica'#231#227'o'
  ClientHeight = 216
  ClientWidth = 462
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMinimized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 8
    Width = 465
    Height = 45
    Alignment = taCenter
    AutoSize = False
    Caption = 'Servidor de Aplica'#231#227'o'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 149
    Top = 108
    Width = 36
    Height = 16
    Caption = 'Data:'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 149
    Top = 133
    Width = 36
    Height = 16
    Caption = 'Hora:'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 149
    Top = 158
    Width = 67
    Height = 16
    Caption = 'Conex'#245'es:'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object LbData: TLabel
    Left = 234
    Top = 108
    Width = 80
    Height = 16
    Caption = '01/01/2000'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object LbHora: TLabel
    Left = 234
    Top = 133
    Width = 37
    Height = 16
    Caption = '00:00'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object LbConexoes: TLabel
    Left = 234
    Top = 158
    Width = 32
    Height = 16
    Caption = '0000'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object BtDerrubarServer: TButton
    Left = 331
    Top = 182
    Width = 121
    Height = 25
    Caption = 'Derrubar Servidor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BtDerrubarServerClick
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 112
  end
  object TrayIcon1: TTrayIcon
    Hint = 'BorCon2006'
    BalloonHint = 'BorCon2006'
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF009999
      999999999999999999999999999994444F00F40F444444444444444444499C44
      4F00F40F444444444444444444499CC44F0F0F0F444444440000004444499CCC
      4F0F0F0F444440008888880044499CCCCF04F00F444008888888888804499CCC
      CF00000F4008F8F8F8F8888804499CCCCF04F00F0F8F88888888800004499CCC
      CF0F0040F8F8F8F8F800078804499CCCCCF0040F8F888F880077787804499CCC
      CCCFC0F8F8F8F8F00787878044499CCCCCCC0F8F8F8F80070878788044499CCC
      CCC0F8F8F8F807770787880444499CCCCCC0FFFF8F8077780878780444499CCC
      CC08F8F8F80F77870787804444499CCCCC0FFF8F80F0F7780878044444499CCC
      C0F8F8F8078F0F870787044444499CCCC0FF8FF07777F0F80880444444499CCC
      C0F8F8F077878F0F0804444444499CCC0FFFFF07777878F00044444444499CCC
      0FF8F000000000000F4F444444499CCC0FFFF07778787880F0F0F44444499CCC
      0FF807878787870CCF00F44444499CCC0FFF0778787870CCF000F44444499CCC
      0FF8078787800CCCCFFF0F4444499CCC0FF07878780CCCCCCCCCFF4444499CCC
      C0F0777700CCCCCCCCCCCC4444499CCCC0F07700CCCCCCCCCCCCCCC444499CCC
      CC0000CCCCCCCCCCCCCCCCCC44499CCCCCCCCCCCCCCCCCCCCCCCCCCCC4499CCC
      CCCCCCCCCCCCCCCCCCCCCCCCCC49999999999999999999999999999999990000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
    PopupMenu = PopupMenu1
    Left = 416
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 128
    object Derrubar1: TMenuItem
      Caption = 'Derrubar'
      OnClick = BtDerrubarServerClick
    end
    object Maximizar1: TMenuItem
      Caption = 'Maximizar'
    end
    object Minimizar1: TMenuItem
      Caption = 'Minimizar'
    end
  end
  object conTeste: TSQLConnection
    ConnectionName = 'teste'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbxmss30.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=MSSQL'
      'schemaoverride=%.dbo'
      'HostName=TNRSRV06'
      'Database=teste'
      'User_Name=usernaja'
      'Password=coral'
      'blobsize=-1'
      'localecode=0000'
      'mssql transisolation=ReadCommited'
      'os authentication=False'
      'prepare sql=False')
    VendorLib = 'oledb'
    Left = 72
    Top = 112
  end
end
