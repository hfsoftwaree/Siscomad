object frmLimparBD: TfrmLimparBD
  Left = 358
  Top = 94
  Width = 457
  Height = 433
  BorderIcons = [biSystemMenu]
  Caption = 'Limpeza de Banco de Dados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 397
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 355
      Width = 439
      Height = 41
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 0
        Top = 2
        Width = 225
        Height = 37
        Cursor = crHandPoint
        Caption = 'Processar'
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 224
        Top = 2
        Width = 217
        Height = 37
        Cursor = crHandPoint
        Caption = 'Retornar'
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333333333333333333333333333333333FF333333333333
          3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
          E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
          E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
          E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
          000033333373FF77777733333330003333333333333777333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 425
      Height = 337
      Caption = 'Selecione a tabela que deseja excluir os registros'
      TabOrder = 1
      object CheckBox1: TCheckBox
        Left = 8
        Top = 48
        Width = 97
        Height = 17
        Caption = 'Ess'#234'ncia'
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 8
        Top = 72
        Width = 97
        Height = 17
        Caption = 'Produtos'
        TabOrder = 1
      end
      object CheckBox3: TCheckBox
        Left = 8
        Top = 96
        Width = 97
        Height = 17
        Caption = 'Sub-produtos'
        TabOrder = 2
      end
      object CheckBox4: TCheckBox
        Left = 8
        Top = 120
        Width = 97
        Height = 17
        Caption = 'Munic'#237'pio'
        TabOrder = 3
      end
      object CheckBox5: TCheckBox
        Left = 8
        Top = 144
        Width = 97
        Height = 17
        Caption = 'Fornecedores'
        TabOrder = 4
      end
      object CheckBox6: TCheckBox
        Left = 8
        Top = 168
        Width = 97
        Height = 17
        Caption = 'Clientes'
        TabOrder = 5
      end
      object CheckBox7: TCheckBox
        Left = 8
        Top = 192
        Width = 97
        Height = 17
        Caption = 'Entrada Toros'
        TabOrder = 6
      end
      object CheckBox8: TCheckBox
        Left = 8
        Top = 216
        Width = 97
        Height = 17
        Caption = 'Entrada Serrada'
        TabOrder = 7
      end
      object CheckBox9: TCheckBox
        Left = 8
        Top = 240
        Width = 97
        Height = 17
        Caption = 'Produ'#231#227'o'
        TabOrder = 8
      end
      object CheckBox10: TCheckBox
        Left = 8
        Top = 264
        Width = 97
        Height = 17
        Caption = 'Sa'#237'da Serrada'
        TabOrder = 9
      end
      object CheckBox11: TCheckBox
        Left = 8
        Top = 288
        Width = 97
        Height = 17
        Caption = 'Romaneio Toros'
        TabOrder = 10
      end
      object CheckBox12: TCheckBox
        Left = 8
        Top = 312
        Width = 137
        Height = 17
        Caption = 'Romaneio Serrada'
        TabOrder = 11
      end
      object CheckBox13: TCheckBox
        Left = 8
        Top = 24
        Width = 281
        Height = 17
        Caption = 'Paramentros da Empresa'
        TabOrder = 12
      end
    end
  end
end
