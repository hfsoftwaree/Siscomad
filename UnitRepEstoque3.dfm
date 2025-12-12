object RepEstoque3: TRepEstoque3
  Left = 262
  Top = 117
  Width = 836
  Height = 503
  Caption = 'RepEstoque3'
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
  object QuickRep: TQuickRep
    Left = 2
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = essencia
    Description.Strings = (
      
        'This is a basic master/detail report showing all orders for each' +
        ' customer. It adds the master/detail functionallity to the simpl' +
        'e list repor. You can see how to:'
      '- Set up the datasets in a master/detail relationship'
      '- Use QRDetailLink to print detail data'
      '- Attach a group header band to a QRDetailLink'
      
        '- Use the Mask property to format the output of a QRDBText compo' +
        'nent'
      '- Use TQRExpr components to calculate totals and count records')
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
    Options = [LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = First
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
    PrintIfEmpty = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    object QRBand3: TQRBand
      Left = 38
      Top = 147
      Width = 740
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        1957.916666666667000000)
      BandType = rbPageFooter
      object QRShape5: TQRShape
        Left = -8
        Top = 6
        Width = 740
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          -21.166666666666670000
          15.875000000000000000
          1957.916666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 241
        Top = 10
        Width = 257
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          637.645833333333300000
          26.458333333333330000
          679.979166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'HF - Software/Fone: 66-3425-2686'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 16
        Top = 0
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          0.000000000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 664
        Top = 0
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1756.833333333333000000
          0.000000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
    end
    object QRChildBand1: TQRChildBand
      Left = 38
      Top = 109
      Width = 740
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        1957.916666666667000000)
      ParentBand = GroupFooterBand1
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 125
      Width = 740
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clSilver
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        1957.916666666667000000)
      BandType = rbSummary
      object QRExpr3: TQRExpr
        Left = 576
        Top = 2
        Width = 161
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1524.000000000000000000
          5.291666666666667000
          425.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'sum(ENTRADA.QUANTIDADE)'
        Mask = '0.0000'
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 4
        Top = 4
        Width = 202
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          10.583333333333330000
          534.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TOTAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    object GroupFooterBand1: TQRBand
      Left = 38
      Top = 84
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = 16776176
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        1957.916666666667000000)
      BandType = rbGroupFooter
      object QRExpr1: TQRExpr
        Left = 636
        Top = 2
        Width = 101
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1682.750000000000000000
          5.291666666666667000
          267.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'sum(QUANTIDADE)'
        Mask = '0.0000'
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 528
        Top = 2
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1397.000000000000000000
          5.291666666666667000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sub-Total'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 59
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        1957.916666666667000000)
      Master = QuickRep
      DataSet = entrada
      FooterBand = GroupFooterBand1
      PrintBefore = False
      PrintIfEmpty = False
      object QRDBText5: TQRDBText
        Left = 112
        Top = 0
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          0.000000000000000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = entrada
        DataField = 'CODIGOPRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Mask = '000000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 296
        Top = 0
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          783.166666666666700000
          0.000000000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = entrada
        DataField = 'COMPRIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 440
        Top = 0
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          0.000000000000000000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = entrada
        DataField = 'DIAMETRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 544
        Top = 0
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          0.000000000000000000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = entrada
        DataField = 'DIAMETRO1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 656
        Top = 0
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1735.666666666667000000
          0.000000000000000000
          214.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = entrada
        DataField = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Mask = '0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clMoneyGreen
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 8
        Top = 0
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = entrada
        DataField = 'ESSENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Mask = '000000'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Heder\Desktop\Clientes Siscomad\Inez\BDSISCOMAD.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 146
    Top = 14
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 186
    Top = 14
  end
  object essencia: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'ESSENCIA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ETOROS'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TENTRADA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TSAIDA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ESERRADA'
        DataType = ftFloat
      end
      item
        Name = 'EINICIAL'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'INDESSENCIA'
        Fields = 'ESSENCIA'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'ESSENCIA'
    StoreDefs = True
    TableName = 'ESSENCIA'
    Left = 2
    Top = 14
    object essenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object essenciaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object essenciaETOROS: TFloatField
      FieldName = 'ETOROS'
    end
    object essenciaTENTRADA: TFloatField
      FieldName = 'TENTRADA'
    end
    object essenciaTSAIDA: TFloatField
      FieldName = 'TSAIDA'
    end
    object essenciaESERRADA: TFloatField
      FieldName = 'ESERRADA'
    end
    object essenciaEINICIAL: TFloatField
      FieldName = 'EINICIAL'
    end
  end
  object entrada: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
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
    IndexFieldNames = 'CODIGOESSENCIA'
    MasterFields = 'CODIGO'
    MasterSource = DataSource1
    StoreDefs = True
    TableName = 'ENTRADA_TOROS_DISCRIMINACAO'
    Left = 2
    Top = 54
    object entradaCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object entradaCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object entradaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object entradaUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object entradaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object entradaVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
    end
    object entradaVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object entradaALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object entradaCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object entradaSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object entradaTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object entradaDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object entradaNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object entradaESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object entradaCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object entradaTRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object entradaTORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object entradaSITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object entradaSITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object entradaSITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object entradaFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object entradaCPF: TFloatField
      FieldName = 'CPF'
    end
    object entradaINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
    object entradaCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object entradaDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object entradaDIAMETRO1: TFloatField
      FieldName = 'DIAMETRO1'
    end
    object entradaQUALIDADE: TIBStringField
      FieldName = 'QUALIDADE'
      Size = 30
    end
    object entradaDIAMETROMEDIA: TFloatField
      FieldName = 'DIAMETROMEDIA'
    end
    object entradaOBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = essencia
    Left = 42
    Top = 14
  end
end
