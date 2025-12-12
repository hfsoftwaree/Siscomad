object RepEstoque1: TRepEstoque1
  Left = 288
  Top = 137
  Width = 797
  Height = 599
  HorzScrollBar.Position = 25
  Caption = 'RepEstoque1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -9
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      50.000000000000000000
      2794.000000000000000000
      50.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrintIfEmpty = True
    ReportTitle = 'Controle da Produ'#231#227'o e do Estoque'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
  end
  object DENTRADA: TDataSource
    DataSet = TENTRADA
    Left = 199
    Top = 312
  end
  object TENTRADA: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODDISCRIMINACAO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'VALUNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'VALTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'ALIQICMS'
        DataType = ftFloat
      end
      item
        Name = 'CODIGOPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'SITUACAO_TRIBUTARIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TOTALPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'DATALANCAMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'NFNUMERO'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIATIPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftFloat
      end
      item
        Name = 'TRANSFORMADO'
        DataType = ftFloat
      end
      item
        Name = 'TORALOTEESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SITUACAO'
        DataType = ftFloat
      end
      item
        Name = 'SITDATA'
        DataType = ftDateTime
      end
      item
        Name = 'SITHORA'
        DataType = ftDateTime
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CPF'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'INSCRICAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'DIAMETRO'
        DataType = ftFloat
      end
      item
        Name = 'DIAMETRO1'
        DataType = ftFloat
      end
      item
        Name = 'QUALIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DIAMETROMEDIA'
        DataType = ftFloat
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'INDCODPRODUTO'
        Fields = 'CODIGOPRODUTO'
      end>
    StoreDefs = True
    TableName = 'ENTRADA_TOROS_DISCRIMINACAO'
    Left = 239
    Top = 312
    object TENTRADACODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TENTRADACODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TENTRADAESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TENTRADAUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TENTRADAQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TENTRADAVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
    end
    object TENTRADAVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object TENTRADAALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object TENTRADACODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TENTRADASITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TENTRADATOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TENTRADADATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TENTRADANFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TENTRADAESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TENTRADACODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TENTRADATRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object TENTRADATORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object TENTRADASITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object TENTRADASITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object TENTRADASITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object TENTRADAFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TENTRADACPF: TFloatField
      FieldName = 'CPF'
    end
    object TENTRADAINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
    object TENTRADACOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TENTRADADIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object TENTRADADIAMETRO1: TFloatField
      FieldName = 'DIAMETRO1'
    end
    object TENTRADAQUALIDADE: TIBStringField
      FieldName = 'QUALIDADE'
      Size = 30
    end
    object TENTRADADIAMETROMEDIA: TFloatField
      FieldName = 'DIAMETROMEDIA'
    end
    object TENTRADAOBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
end
