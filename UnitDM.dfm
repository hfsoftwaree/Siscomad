object DM: TDM
  OldCreateOrder = False
  Left = 233
  Top = 27
  Height = 622
  Width = 976
  object DManutencao: TDataSource
    DataSet = TManutencao
    Left = 72
    Top = 1238
  end
  object DEssencia: TDataSource
    DataSet = TEssencia
    Left = 72
    Top = 1342
  end
  object DFornecedor: TDataSource
    DataSet = TFornecedor
    Left = 72
    Top = 1494
  end
  object DQEssencia: TDataSource
    DataSet = QEssencia
    Left = 72
    Top = 1390
  end
  object DQFornecedor: TDataSource
    DataSet = QFornecedor
    Left = 72
    Top = 1446
  end
  object TEssencia: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ETOROS'
        DataType = ftFloat
      end
      item
        Name = 'TENTRADA'
        DataType = ftFloat
      end
      item
        Name = 'TSAIDA'
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
    StoreDefs = True
    TableName = 'ESSENCIA'
    Left = 152
    Top = 1342
    object TEssenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object TEssenciaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TEssenciaETOROS: TFloatField
      FieldName = 'ETOROS'
    end
    object TEssenciaTENTRADA: TFloatField
      FieldName = 'TENTRADA'
    end
    object TEssenciaTSAIDA: TFloatField
      FieldName = 'TSAIDA'
    end
    object TEssenciaESERRADA: TFloatField
      FieldName = 'ESERRADA'
    end
    object TEssenciaEINICIAL: TFloatField
      FieldName = 'EINICIAL'
    end
  end
  object IBDatabase1: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 8
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 88
    Top = 6
  end
  object TFornecedor: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftInteger
      end
      item
        Name = 'NOMEFORNECEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMEFANTASIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CX'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIDADEUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WEB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'INSCESTADUAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CONTATO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CONTATOFONE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CONTATOFAX'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CONTATORAMAL'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CONTATOEMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TIPOCLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'RG'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'INDNOMEFORNECEDOR'
        Fields = 'INSCESTADUAL'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'FORNECEDOR'
    Left = 152
    Top = 1494
    object TFornecedorCODIGOFORNECEDOR: TIntegerField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TFornecedorNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object TFornecedorNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object TFornecedorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object TFornecedorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object TFornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object TFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Size = 9
    end
    object TFornecedorCX: TIBStringField
      FieldName = 'CX'
      Size = 6
    end
    object TFornecedorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TFornecedorCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Size = 2
    end
    object TFornecedorFONE: TIBStringField
      FieldName = 'FONE'
      Size = 11
    end
    object TFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Size = 11
    end
    object TFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object TFornecedorWEB: TIBStringField
      FieldName = 'WEB'
      Size = 50
    end
    object TFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object TFornecedorCONTATOFONE: TIBStringField
      FieldName = 'CONTATOFONE'
      Size = 50
    end
    object TFornecedorCONTATOFAX: TIBStringField
      FieldName = 'CONTATOFAX'
      Size = 50
    end
    object TFornecedorCONTATORAMAL: TIBStringField
      FieldName = 'CONTATORAMAL'
      Size = 4
    end
    object TFornecedorCONTATOEMAIL: TIBStringField
      FieldName = 'CONTATOEMAIL'
      Size = 50
    end
    object TFornecedorTIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
    end
    object TFornecedorRG: TIBStringField
      FieldName = 'RG'
      Size = 30
    end
    object TFornecedorCPF: TIBStringField
      FieldName = 'CPF'
    end
    object TFornecedorOBS: TIBStringField
      FieldName = 'OBS'
      Size = 255
    end
    object TFornecedorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object TFornecedorINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
    end
  end
  object TManutencao: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'NOMEEMPRESA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMEFANTASIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOGRADOURO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CX'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIDADEUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WEB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'INSCESTADUAL'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'REGIBAMA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INSCMUNICIPAL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INSCJUNTA'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATAREGJUNTA'
        DataType = ftDateTime
      end
      item
        Name = 'INIATIVIDADE'
        DataType = ftDateTime
      end
      item
        Name = 'CAPITALSOCIAL'
        DataType = ftFloat
      end
      item
        Name = 'CANE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CNAEDESCRICAO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NATESTABELECIMENTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RESPONSAVELEMPRESA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CPFRESPONSAVEL'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONTADOR'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CPFCONTADOR'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CRCCONTADOR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NOMEFILIAL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJFILIAL'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNAE'
        DataType = ftString
        Size = 9
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY5'
        Fields = 'NOMEEMPRESA'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'MANUTENCAO_CODIGOEMPRESA'
        Fields = 'CODIGOEMPRESA'
      end
      item
        Name = 'MANUTENCAO_NOMEEMPRESA'
        Fields = 'NOMEEMPRESA'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'MANUTENCAO'
    Left = 152
    Top = 1238
    object TManutencaoCODIGOEMPRESA: TIntegerField
      FieldName = 'CODIGOEMPRESA'
    end
    object TManutencaoNOMEEMPRESA: TIBStringField
      FieldName = 'NOMEEMPRESA'
      Size = 50
    end
    object TManutencaoNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object TManutencaoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object TManutencaoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object TManutencaoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object TManutencaoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TManutencaoCEP: TIBStringField
      FieldName = 'CEP'
      Size = 9
    end
    object TManutencaoCX: TIBStringField
      FieldName = 'CX'
      Size = 5
    end
    object TManutencaoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TManutencaoCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Size = 2
    end
    object TManutencaoFONE: TIBStringField
      FieldName = 'FONE'
      Size = 11
    end
    object TManutencaoFAX: TIBStringField
      FieldName = 'FAX'
      Size = 11
    end
    object TManutencaoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object TManutencaoWEB: TIBStringField
      FieldName = 'WEB'
      Size = 50
    end
    object TManutencaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object TManutencaoINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
      Size = 12
    end
    object TManutencaoREGIBAMA: TIBStringField
      FieldName = 'REGIBAMA'
      Size = 10
    end
    object TManutencaoINSCMUNICIPAL: TIBStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 10
    end
    object TManutencaoINSCJUNTA: TIBStringField
      FieldName = 'INSCJUNTA'
      Size = 12
    end
    object TManutencaoCAPITALSOCIAL: TFloatField
      FieldName = 'CAPITALSOCIAL'
    end
    object TManutencaoCANE: TIBStringField
      FieldName = 'CANE'
      Size = 9
    end
    object TManutencaoCNAEDESCRICAO: TIBStringField
      FieldName = 'CNAEDESCRICAO'
      Size = 255
    end
    object TManutencaoNATESTABELECIMENTO: TIBStringField
      FieldName = 'NATESTABELECIMENTO'
      Size = 50
    end
    object TManutencaoRESPONSAVELEMPRESA: TIBStringField
      FieldName = 'RESPONSAVELEMPRESA'
      Size = 40
    end
    object TManutencaoCPFRESPONSAVEL: TIBStringField
      FieldName = 'CPFRESPONSAVEL'
      Size = 14
    end
    object TManutencaoCONTADOR: TIBStringField
      FieldName = 'CONTADOR'
      Size = 40
    end
    object TManutencaoCPFCONTADOR: TIBStringField
      FieldName = 'CPFCONTADOR'
      Size = 14
    end
    object TManutencaoCRCCONTADOR: TIBStringField
      FieldName = 'CRCCONTADOR'
      Size = 15
    end
    object TManutencaoNOMEFILIAL: TIBStringField
      FieldName = 'NOMEFILIAL'
      Size = 50
    end
    object TManutencaoCNPJFILIAL: TIBStringField
      FieldName = 'CNPJFILIAL'
      Size = 18
    end
    object TManutencaoNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object TManutencaoCNAE: TIBStringField
      FieldName = 'CNAE'
      Size = 9
    end
    object TManutencaoDATAREGJUNTA: TDateTimeField
      FieldName = 'DATAREGJUNTA'
    end
    object TManutencaoINIATIVIDADE: TDateTimeField
      FieldName = 'INIATIVIDADE'
    end
    object TManutencaoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
    end
  end
  object QEssencia: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ESSENCIA')
    Left = 152
    Top = 1390
    object QEssenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ESSENCIA.CODIGO'
    end
    object QEssenciaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ESSENCIA.ESSENCIA'
      Required = True
      Size = 30
    end
    object QEssenciaETOROS: TFloatField
      FieldName = 'ETOROS'
      Origin = 'ESSENCIA.ETOROS'
      Required = True
    end
    object QEssenciaTENTRADA: TFloatField
      FieldName = 'TENTRADA'
      Origin = 'ESSENCIA.TENTRADA'
      Required = True
    end
    object QEssenciaTSAIDA: TFloatField
      FieldName = 'TSAIDA'
      Origin = 'ESSENCIA.TSAIDA'
      Required = True
    end
    object QEssenciaESERRADA: TFloatField
      FieldName = 'ESERRADA'
      Origin = 'ESSENCIA.ESERRADA'
    end
    object QEssenciaEINICIAL: TFloatField
      FieldName = 'EINICIAL'
      Origin = 'ESSENCIA.EINICIAL'
    end
  end
  object QFornecedor: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FORNECEDOR')
    Left = 152
    Top = 1446
    object QFornecedorCODIGOFORNECEDOR: TIntegerField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'FORNECEDOR.CODIGOFORNECEDOR'
    end
    object QFornecedorNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Origin = 'FORNECEDOR.NOMEFORNECEDOR'
      Size = 50
    end
    object QFornecedorNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'FORNECEDOR.NOMEFANTASIA'
      Size = 50
    end
    object QFornecedorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'FORNECEDOR.ENDERECO'
      Size = 40
    end
    object QFornecedorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'FORNECEDOR.NUMERO'
      Size = 6
    end
    object QFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'FORNECEDOR.BAIRRO'
      Size = 30
    end
    object QFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'FORNECEDOR.CEP'
      Size = 9
    end
    object QFornecedorCX: TIBStringField
      FieldName = 'CX'
      Origin = 'FORNECEDOR.CX'
      Size = 6
    end
    object QFornecedorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'FORNECEDOR.CIDADE'
      Size = 30
    end
    object QFornecedorCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Origin = 'FORNECEDOR.CIDADEUF'
      Size = 2
    end
    object QFornecedorFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'FORNECEDOR.FONE'
      Size = 11
    end
    object QFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'FORNECEDOR.FAX'
      Size = 11
    end
    object QFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'FORNECEDOR.EMAIL'
      Size = 50
    end
    object QFornecedorWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'FORNECEDOR.WEB'
      Size = 50
    end
    object QFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'FORNECEDOR.CNPJ'
      Size = 18
    end
    object QFornecedorCONTATOFONE: TIBStringField
      FieldName = 'CONTATOFONE'
      Origin = 'FORNECEDOR.CONTATOFONE'
      Size = 50
    end
    object QFornecedorCONTATOFAX: TIBStringField
      FieldName = 'CONTATOFAX'
      Origin = 'FORNECEDOR.CONTATOFAX'
      Size = 50
    end
    object QFornecedorCONTATORAMAL: TIBStringField
      FieldName = 'CONTATORAMAL'
      Origin = 'FORNECEDOR.CONTATORAMAL'
      Size = 4
    end
    object QFornecedorCONTATOEMAIL: TIBStringField
      FieldName = 'CONTATOEMAIL'
      Origin = 'FORNECEDOR.CONTATOEMAIL'
      Size = 50
    end
    object QFornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'FORNECEDOR.COMPLEMENTO'
      Size = 30
    end
    object QFornecedorTIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
      Origin = 'FORNECEDOR.TIPOCLIENTE'
    end
    object QFornecedorRG: TIBStringField
      FieldName = 'RG'
      Origin = 'FORNECEDOR.RG'
      Size = 30
    end
    object QFornecedorCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'FORNECEDOR.CPF'
    end
    object QFornecedorOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'FORNECEDOR.OBS'
      Size = 255
    end
    object QFornecedorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'FORNECEDOR.CONTATO'
      Size = 50
    end
    object QFornecedorINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
      Origin = 'FORNECEDOR.INSCESTADUAL'
    end
  end
  object QManutencao: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DManutencao
    SQL.Strings = (
      'select * from MANUTENCAO')
    Left = 152
    Top = 1286
    object QManutencaoCODIGOEMPRESA: TIntegerField
      FieldName = 'CODIGOEMPRESA'
      Origin = 'MANUTENCAO.CODIGOEMPRESA'
    end
    object QManutencaoNOMEEMPRESA: TIBStringField
      FieldName = 'NOMEEMPRESA'
      Origin = 'MANUTENCAO.NOMEEMPRESA'
      Required = True
      Size = 50
    end
    object QManutencaoNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'MANUTENCAO.NOMEFANTASIA'
      Size = 50
    end
    object QManutencaoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'MANUTENCAO.ENDERECO'
      Size = 40
    end
    object QManutencaoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'MANUTENCAO.NUMERO'
      Size = 6
    end
    object QManutencaoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'MANUTENCAO.COMPLEMENTO'
      Size = 30
    end
    object QManutencaoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'MANUTENCAO.BAIRRO'
      Size = 30
    end
    object QManutencaoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'MANUTENCAO.CEP'
      Size = 9
    end
    object QManutencaoCX: TIBStringField
      FieldName = 'CX'
      Origin = 'MANUTENCAO.CX'
      Size = 5
    end
    object QManutencaoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'MANUTENCAO.CIDADE'
      Size = 30
    end
    object QManutencaoCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Origin = 'MANUTENCAO.CIDADEUF'
      Size = 2
    end
    object QManutencaoFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'MANUTENCAO.FONE'
      Size = 11
    end
    object QManutencaoFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'MANUTENCAO.FAX'
      Size = 11
    end
    object QManutencaoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'MANUTENCAO.EMAIL'
      Size = 50
    end
    object QManutencaoWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'MANUTENCAO.WEB'
      Size = 50
    end
    object QManutencaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'MANUTENCAO.CNPJ'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 18
    end
    object QManutencaoINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
      Origin = 'MANUTENCAO.INSCESTADUAL'
      EditMask = '99.999.999-9;0;_'
      Size = 12
    end
    object QManutencaoREGIBAMA: TIBStringField
      FieldName = 'REGIBAMA'
      Origin = 'MANUTENCAO.REGIBAMA'
      Size = 10
    end
    object QManutencaoINSCMUNICIPAL: TIBStringField
      FieldName = 'INSCMUNICIPAL'
      Origin = 'MANUTENCAO.INSCMUNICIPAL'
      Size = 10
    end
    object QManutencaoINSCJUNTA: TIBStringField
      FieldName = 'INSCJUNTA'
      Origin = 'MANUTENCAO.INSCJUNTA'
      Size = 12
    end
    object QManutencaoCAPITALSOCIAL: TFloatField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'MANUTENCAO.CAPITALSOCIAL'
    end
    object QManutencaoCANE: TIBStringField
      FieldName = 'CANE'
      Origin = 'MANUTENCAO.CANE'
      Size = 9
    end
    object QManutencaoCNAEDESCRICAO: TIBStringField
      FieldName = 'CNAEDESCRICAO'
      Origin = 'MANUTENCAO.CNAEDESCRICAO'
      Size = 255
    end
    object QManutencaoNATESTABELECIMENTO: TIBStringField
      FieldName = 'NATESTABELECIMENTO'
      Origin = 'MANUTENCAO.NATESTABELECIMENTO'
      Size = 50
    end
    object QManutencaoRESPONSAVELEMPRESA: TIBStringField
      FieldName = 'RESPONSAVELEMPRESA'
      Origin = 'MANUTENCAO.RESPONSAVELEMPRESA'
      Size = 40
    end
    object QManutencaoCPFRESPONSAVEL: TIBStringField
      FieldName = 'CPFRESPONSAVEL'
      Origin = 'MANUTENCAO.CPFRESPONSAVEL'
      Size = 14
    end
    object QManutencaoCONTADOR: TIBStringField
      FieldName = 'CONTADOR'
      Origin = 'MANUTENCAO.CONTADOR'
      Size = 40
    end
    object QManutencaoCPFCONTADOR: TIBStringField
      FieldName = 'CPFCONTADOR'
      Origin = 'MANUTENCAO.CPFCONTADOR'
      Size = 14
    end
    object QManutencaoCRCCONTADOR: TIBStringField
      FieldName = 'CRCCONTADOR'
      Origin = 'MANUTENCAO.CRCCONTADOR'
      Size = 15
    end
    object QManutencaoNOMEFILIAL: TIBStringField
      FieldName = 'NOMEFILIAL'
      Origin = 'MANUTENCAO.NOMEFILIAL'
      Size = 50
    end
    object QManutencaoCNPJFILIAL: TIBStringField
      FieldName = 'CNPJFILIAL'
      Origin = 'MANUTENCAO.CNPJFILIAL'
      Size = 18
    end
    object QManutencaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'MANUTENCAO.NOME'
      Size = 50
    end
    object QManutencaoCNAE: TIBStringField
      FieldName = 'CNAE'
      Origin = 'MANUTENCAO.CNAE'
      Size = 9
    end
    object QManutencaoDATAREGJUNTA: TDateTimeField
      FieldName = 'DATAREGJUNTA'
      Origin = 'MANUTENCAO.DATAREGJUNTA'
    end
    object QManutencaoINIATIVIDADE: TDateTimeField
      FieldName = 'INIATIVIDADE'
      Origin = 'MANUTENCAO.INIATIVIDADE'
    end
    object QManutencaoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = 'MANUTENCAO.LOGRADOURO'
    end
  end
  object DQManutencao: TDataSource
    DataSet = QManutencao
    Left = 72
    Top = 1286
  end
  object DCredor: TDataSource
    DataSet = TCredor
    Left = 232
    Top = 1237
  end
  object TCredor: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOCREDOR'
        DataType = ftInteger
      end
      item
        Name = 'NOMECREDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'WEB'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONTATO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CX'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPOCLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FANTASIA'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'IND_CREDOR'
        Fields = 'NOMECREDOR'
        Options = [ixUnique]
      end
      item
        Name = 'IND_CIDADE'
        Fields = 'CIDADE'
      end>
    StoreDefs = True
    TableName = 'CREDOR'
    Left = 288
    Top = 1238
    object TCredorCODIGOCREDOR: TIntegerField
      FieldName = 'CODIGOCREDOR'
    end
    object TCredorNOMECREDOR: TIBStringField
      FieldName = 'NOMECREDOR'
      Size = 50
    end
    object TCredorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object TCredorCEP: TIBStringField
      FieldName = 'CEP'
      Size = 15
    end
    object TCredorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
    end
    object TCredorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TCredorUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object TCredorFONE: TIBStringField
      FieldName = 'FONE'
      Size = 15
    end
    object TCredorFAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object TCredorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object TCredorWEB: TIBStringField
      FieldName = 'WEB'
      Size = 60
    end
    object TCredorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object TCredorCX: TIBStringField
      FieldName = 'CX'
      Size = 6
    end
    object TCredorCNPJ: TIBStringField
      FieldName = 'CNPJ'
    end
    object TCredorCPF: TIBStringField
      FieldName = 'CPF'
    end
    object TCredorTIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
    end
    object TCredorIE: TIBStringField
      FieldName = 'IE'
    end
    object TCredorFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object DQCredor: TDataSource
    DataSet = QCredor
    Left = 232
    Top = 1285
  end
  object QCredor: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CREDOR order by NOMECREDOR')
    Left = 288
    Top = 1286
    object QCredorCODIGOCREDOR: TIntegerField
      FieldName = 'CODIGOCREDOR'
      Origin = 'CREDOR.CODIGOCREDOR'
    end
    object QCredorNOMECREDOR: TIBStringField
      FieldName = 'NOMECREDOR'
      Origin = 'CREDOR.NOMECREDOR'
      Size = 50
    end
    object QCredorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CREDOR.ENDERECO'
      Size = 50
    end
    object QCredorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CREDOR.CEP'
      EditMask = '00000\-9999;0;_'
      Size = 15
    end
    object QCredorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CREDOR.BAIRRO'
    end
    object QCredorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CREDOR.CIDADE'
      Size = 30
    end
    object QCredorUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CREDOR.UF'
      Size = 2
    end
    object QCredorFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'CREDOR.FONE'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object QCredorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'CREDOR.FAX'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object QCredorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CREDOR.EMAIL'
      Size = 60
    end
    object QCredorWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'CREDOR.WEB'
      Size = 60
    end
    object QCredorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'CREDOR.CONTATO'
      Size = 50
    end
    object QCredorCX: TIBStringField
      FieldName = 'CX'
      Origin = 'CREDOR.CX'
      Size = 6
    end
    object QCredorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'CREDOR.CNPJ'
      EditMask = '!00.000.000/0000-00;0;_'
    end
    object QCredorCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'CREDOR.CPF'
      EditMask = '000.000.000-00;0;_'
    end
    object QCredorTIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
      Origin = 'CREDOR.TIPOCLIENTE'
    end
    object QCredorIE: TIBStringField
      FieldName = 'IE'
      Origin = 'CREDOR.IE'
    end
    object QCredorFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = 'CREDOR.FANTASIA'
      Size = 30
    end
  end
  object DMunicipio: TDataSource
    DataSet = TMunicipio
    Left = 232
    Top = 1334
  end
  object DProduto: TDataSource
    DataSet = TProduto
    Left = 232
    Top = 1398
  end
  object TMunicipio: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'COD_MUNIC'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NOM_MUNIC'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COD_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIG_UF'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'IND_MUNICIPIO1'
        Fields = 'COD_MUNIC'
        Options = [ixUnique]
      end
      item
        Name = 'IND_MUNICIPIO'
        Fields = 'NOM_MUNIC'
      end>
    StoreDefs = True
    TableName = 'MUNICIPIO'
    Left = 288
    Top = 1334
    object TMunicipioCOD_MUNIC: TIBStringField
      FieldName = 'COD_MUNIC'
      Size = 7
    end
    object TMunicipioNOM_MUNIC: TIBStringField
      FieldName = 'NOM_MUNIC'
      Size = 40
    end
    object TMunicipioCOD_UF: TIBStringField
      FieldName = 'COD_UF'
      Size = 2
    end
    object TMunicipioSIG_UF: TIBStringField
      FieldName = 'SIG_UF'
      Size = 2
    end
  end
  object TProduto: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'GRAUIND'
        DataType = ftInteger
      end
      item
        Name = 'NOMEGRAU'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FATOR'
        DataType = ftFloat
      end
      item
        Name = 'CODPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'PRODORIGEM'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FATOREXP'
        DataType = ftFloat
      end
      item
        Name = 'TIPOPROD'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PRODDESTINO'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'PRODUTO'
        Fields = 'NOMEGRAU'
      end
      item
        Name = 'PRODUTO0'
        Fields = 'GRAUIND'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'PRODUTO'
    Left = 288
    Top = 1398
    object TProdutoNOMEGRAU: TIBStringField
      FieldName = 'NOMEGRAU'
      Size = 50
    end
    object TProdutoFATOR: TFloatField
      FieldName = 'FATOR'
      DisplayFormat = '###,#0.00'
    end
    object TProdutoGRAUIND: TIntegerField
      FieldName = 'GRAUIND'
    end
    object TProdutoCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
    end
    object TProdutoPRODORIGEM: TIBStringField
      FieldName = 'PRODORIGEM'
      Size = 100
    end
    object TProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TProdutoFATOREXP: TFloatField
      FieldName = 'FATOREXP'
    end
    object TProdutoTIPOPROD: TIBStringField
      FieldName = 'TIPOPROD'
      Size = 30
    end
    object TProdutoPRODDESTINO: TIBStringField
      FieldName = 'PRODDESTINO'
      Size = 100
    end
  end
  object DTOTAL: TDataSource
    DataSet = TTOTAL
    Left = 368
    Top = 1238
  end
  object TTOTAL: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'NOMEVENDEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end>
    IndexFieldNames = 'NOMEVENDEDOR'
    MasterFields = 'NOMEVENDEDOR'
    StoreDefs = True
    TableName = 'DVPF_TOTAL'
    Left = 432
    Top = 1238
    object TTOTALNOMEVENDEDOR: TIBStringField
      FieldName = 'NOMEVENDEDOR'
      Size = 50
    end
    object TTOTALTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DQProduto: TDataSource
    DataSet = QProduto
    Left = 360
    Top = 1398
  end
  object QProduto: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRODUTO')
    Left = 424
    Top = 1398
    object QProdutoNOMEGRAU: TIBStringField
      FieldName = 'NOMEGRAU'
      Size = 50
    end
    object QProdutoFATOR: TFloatField
      FieldName = 'FATOR'
      DisplayFormat = '###,#0.00'
    end
    object QProdutoGRAUIND: TIntegerField
      FieldName = 'GRAUIND'
      Origin = 'PRODUTO.GRAUIND'
    end
    object QProdutoCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
      Origin = 'PRODUTO.CODPRODUTO'
    end
    object QProdutoPRODORIGEM: TIBStringField
      FieldName = 'PRODORIGEM'
      Origin = 'PRODUTO.PRODORIGEM'
      Size = 100
    end
    object QProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTO.UNIDADE'
      Size = 5
    end
    object QProdutoFATOREXP: TFloatField
      FieldName = 'FATOREXP'
      Origin = 'PRODUTO.FATOREXP'
    end
    object QProdutoTIPOPROD: TIBStringField
      FieldName = 'TIPOPROD'
      Origin = 'PRODUTO.TIPOPROD'
      Size = 30
    end
    object QProdutoPRODDESTINO: TIBStringField
      FieldName = 'PRODDESTINO'
      Origin = 'PRODUTO.PRODDESTINO'
      Size = 100
    end
  end
  object QMunicipio: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From Municipio')
    Left = 448
    Top = 1334
    object QMunicipioCOD_MUNIC: TIBStringField
      FieldName = 'COD_MUNIC'
      Size = 7
    end
    object QMunicipioNOM_MUNIC: TIBStringField
      FieldName = 'NOM_MUNIC'
      Size = 40
    end
    object QMunicipioCOD_UF: TIBStringField
      FieldName = 'COD_UF'
      Size = 2
    end
    object QMunicipioSIG_UF: TIBStringField
      FieldName = 'SIG_UF'
      Size = 2
    end
  end
  object DQMunicipio: TDataSource
    DataSet = QMunicipio
    Left = 368
    Top = 1334
  end
  object DSEntrada: TDataSource
    DataSet = TEntrada
    Left = 72
    Top = 1614
  end
  object DSQEntrada: TDataSource
    DataSet = QEntrada
    Left = 232
    Top = 1614
  end
  object QEntrada: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ENTRADA_TOROS')
    Left = 296
    Top = 1614
    object QEntradaCODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
      Origin = 'ENTRADA_TOROS.CODIGOENTRADA'
    end
    object QEntradaNF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
      Origin = 'ENTRADA_TOROS.NF_NUMERO'
    end
    object QEntradaNATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Origin = 'ENTRADA_TOROS.NATUREZA_OPERACAO'
      Size = 50
    end
    object QEntradaCFOP: TFloatField
      FieldName = 'CFOP'
      Origin = 'ENTRADA_TOROS.CFOP'
    end
    object QEntradaIE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Origin = 'ENTRADA_TOROS.IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object QEntradaRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'ENTRADA_TOROS.RAZAO_SOCIAL'
      Size = 100
    end
    object QEntradaCGC: TFloatField
      FieldName = 'CGC'
      Origin = 'ENTRADA_TOROS.CGC'
    end
    object QEntradaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'ENTRADA_TOROS.ENDERECO'
      Size = 80
    end
    object QEntradaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'ENTRADA_TOROS.BAIRRO'
      Size = 30
    end
    object QEntradaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'ENTRADA_TOROS.CEP'
      Size = 4
    end
    object QEntradaMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Origin = 'ENTRADA_TOROS.MUNICIPIO'
      Size = 30
    end
    object QEntradaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'ENTRADA_TOROS.TELEFONE'
      Size = 11
    end
    object QEntradaUF: TIBStringField
      FieldName = 'UF'
      Origin = 'ENTRADA_TOROS.UF'
      Size = 2
    end
    object QEntradaDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      Origin = 'ENTRADA_TOROS.DATA_EMISSAO'
    end
    object QEntradaDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
      Origin = 'ENTRADA_TOROS.DATA_SAIDA'
    end
    object QEntradaHORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      Origin = 'ENTRADA_TOROS.HORA_SAIDA'
      Size = 8
    end
    object QEntradaCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'ENTRADA_TOROS.CODIGOFORNECEDOR'
    end
    object QEntradaBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'ENTRADA_TOROS.BASE_CALCULO_ICMS'
    end
    object QEntradaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Origin = 'ENTRADA_TOROS.VALOR_ICMS'
    end
    object QEntradaBASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
      Origin = 'ENTRADA_TOROS.BASE_CALCULO_ICMS_SUBST'
    end
    object QEntradaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'ENTRADA_TOROS.VALOR_ICMS_SUBST'
    end
    object QEntradaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      Origin = 'ENTRADA_TOROS.VALOR_FRETE'
    end
    object QEntradaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      Origin = 'ENTRADA_TOROS.VALOR_SEGURO'
    end
    object QEntradaOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      Origin = 'ENTRADA_TOROS.OUTRAS_DESPESAS'
    end
    object QEntradaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Origin = 'ENTRADA_TOROS.VALOR_IPI'
    end
    object QEntradaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      Origin = 'ENTRADA_TOROS.VALOR_TOTAL_NOTA'
    end
    object QEntradaVALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'ENTRADA_TOROS.VALOR_TOTAL_PRODUTOS'
    end
    object QEntradaNOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROS.NOME_TRANSPORTADOR'
      Size = 80
    end
    object QEntradaFRETE: TIBStringField
      FieldName = 'FRETE'
      Origin = 'ENTRADA_TOROS.FRETE'
      Size = 30
    end
    object QEntradaPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'ENTRADA_TOROS.PLACA'
    end
    object QEntradaPLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Origin = 'ENTRADA_TOROS.PLACA_UF'
      Size = 2
    end
    object QEntradaCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'ENTRADA_TOROS.CNPJ_CPF'
    end
    object QEntradaENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROS.ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object QEntradaMUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROS.MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object QEntradaUF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROS.UF_TRANSPORTADOR'
      Size = 2
    end
    object QEntradaIE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROS.IE_TRANSPORTADOR'
    end
    object QEntradaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADA_TOROS.QUANTIDADE'
    end
    object QEntradaESPECIE: TIBStringField
      FieldName = 'ESPECIE'
      Origin = 'ENTRADA_TOROS.ESPECIE'
    end
    object QEntradaMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'ENTRADA_TOROS.MARCA'
    end
    object QEntradaNUMERO: TFloatField
      FieldName = 'NUMERO'
      Origin = 'ENTRADA_TOROS.NUMERO'
    end
    object QEntradaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
      Origin = 'ENTRADA_TOROS.PESO_BRUTO'
    end
    object QEntradaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'ENTRADA_TOROS.PESO_LIQUIDO'
    end
    object QEntradaDADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Origin = 'ENTRADA_TOROS.DADOS_ADICIONAIS'
      Size = 200
    end
    object QEntradaDATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = 'ENTRADA_TOROS.DATA_RECEBIMENTO'
    end
    object QEntradaALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
      Origin = 'ENTRADA_TOROS.ALIQ_FUNRURAL'
    end
    object QEntradaVALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
      Origin = 'ENTRADA_TOROS.VALOR_FUNRURAL'
    end
    object QEntradaALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ENTRADA_TOROS.ALIQ_ICMS'
    end
    object QEntradaBASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
      Origin = 'ENTRADA_TOROS.BASE_CALCULO_FUNRURAL'
    end
    object QEntradaINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'ENTRADA_TOROS.INSC_ESTADUAL'
    end
  end
  object TEntrada: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOENTRADA'
        DataType = ftInteger
      end
      item
        Name = 'NF_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'NATUREZA_OPERACAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CFOP'
        DataType = ftFloat
      end
      item
        Name = 'IE_SUBST_TRIBUTARIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RAZAO_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CGC'
        DataType = ftFloat
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MUNICIPIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'INSC_ESTADUAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATA_EMISSAO'
        DataType = ftDateTime
      end
      item
        Name = 'DATA_SAIDA'
        DataType = ftDateTime
      end
      item
        Name = 'HORA_SAIDA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftFloat
      end
      item
        Name = 'BASE_CALCULO_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_CALCULO_ICMS_SUBST'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_ICMS_SUBST'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_FRETE'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_SEGURO'
        DataType = ftFloat
      end
      item
        Name = 'OUTRAS_DESPESAS'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_IPI'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_TOTAL_NOTA'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_TOTAL_PRODUTOS'
        DataType = ftFloat
      end
      item
        Name = 'NOME_TRANSPORTADOR'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'FRETE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PLACA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PLACA_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO_TRANSPORTADOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MUNICIPIO_TRANSPORTADOR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF_TRANSPORTADOR'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IE_TRANSPORTADOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'ESPECIE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'PESO_BRUTO'
        DataType = ftFloat
      end
      item
        Name = 'PESO_LIQUIDO'
        DataType = ftFloat
      end
      item
        Name = 'DADOS_ADICIONAIS'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DATA_RECEBIMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'ALIQ_FUNRURAL'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_FUNRURAL'
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_CALCULO_FUNRURAL'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'ENTRADA_TOROS'
    Left = 152
    Top = 1614
    object TEntradaCODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object TEntradaNF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
      DisplayFormat = '000000'
    end
    object TEntradaNATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object TEntradaCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object TEntradaIE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object TEntradaRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object TEntradaCGC: TFloatField
      FieldName = 'CGC'
    end
    object TEntradaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object TEntradaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TEntradaCEP: TIBStringField
      FieldName = 'CEP'
      Size = 4
    end
    object TEntradaMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object TEntradaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object TEntradaUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object TEntradaDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object TEntradaDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object TEntradaHORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      Size = 8
    end
    object TEntradaCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TEntradaBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
    end
    object TEntradaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object TEntradaBASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
    end
    object TEntradaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object TEntradaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object TEntradaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object TEntradaOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object TEntradaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object TEntradaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object TEntradaVALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
    end
    object TEntradaNOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Size = 80
    end
    object TEntradaFRETE: TIBStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object TEntradaPLACA: TIBStringField
      FieldName = 'PLACA'
    end
    object TEntradaPLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object TEntradaCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object TEntradaENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object TEntradaMUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object TEntradaUF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Size = 2
    end
    object TEntradaIE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
    end
    object TEntradaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TEntradaESPECIE: TIBStringField
      FieldName = 'ESPECIE'
    end
    object TEntradaMARCA: TIBStringField
      FieldName = 'MARCA'
    end
    object TEntradaNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object TEntradaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object TEntradaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object TEntradaDADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 200
    end
    object TEntradaDATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object TEntradaALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TEntradaVALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TEntradaALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object TEntradaBASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TEntradaINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
    end
  end
  object DSEntrada_Discriminacao: TDataSource
    DataSet = TEntrada_discriminacao
    Left = 72
    Top = 1678
  end
  object DSQEntrada_Discriminacao: TDataSource
    DataSet = QEntrada_Discriminacao
    Left = 232
    Top = 1678
  end
  object TEntrada_discriminacao: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
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
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'ENTRADA_TOROS_DISCRIMINACAO'
    Left = 504
    Top = 905
    object TEntrada_discriminacaoCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TEntrada_discriminacaoCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TEntrada_discriminacaoESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TEntrada_discriminacaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TEntrada_discriminacaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TEntrada_discriminacaoVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object TEntrada_discriminacaoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object TEntrada_discriminacaoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00%'
    end
    object TEntrada_discriminacaoCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TEntrada_discriminacaoSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TEntrada_discriminacaoTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
      DisplayFormat = '0.00'
    end
    object TEntrada_discriminacaoDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TEntrada_discriminacaoNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TEntrada_discriminacaoESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TEntrada_discriminacaoCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TEntrada_discriminacaoTRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object TEntrada_discriminacaoTORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object TEntrada_discriminacaoSITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object TEntrada_discriminacaoSITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object TEntrada_discriminacaoSITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object TEntrada_discriminacaoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TEntrada_discriminacaoCPF: TFloatField
      FieldName = 'CPF'
    end
    object TEntrada_discriminacaoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TEntrada_discriminacaoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object TEntrada_discriminacaoDIAMETRO1: TFloatField
      FieldName = 'DIAMETRO1'
    end
    object TEntrada_discriminacaoQUALIDADE: TIBStringField
      FieldName = 'QUALIDADE'
      Size = 30
    end
    object TEntrada_discriminacaoDIAMETROMEDIA: TFloatField
      FieldName = 'DIAMETROMEDIA'
    end
    object TEntrada_discriminacaoOBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
    object TEntrada_discriminacaoINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
  end
  object QEntrada_Discriminacao: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ENTRADA_TOROS_DISCRIMINACAO')
    Left = 376
    Top = 1678
    object QEntrada_DiscriminacaoCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.CODDISCRIMINACAO'
    end
    object QEntrada_DiscriminacaoCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.CODIGOFORNECEDOR'
    end
    object QEntrada_DiscriminacaoESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.ESSENCIA'
      Size = 30
    end
    object QEntrada_DiscriminacaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.UNIDADE'
      Size = 5
    end
    object QEntrada_DiscriminacaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object QEntrada_DiscriminacaoVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object QEntrada_DiscriminacaoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.VALTOTAL'
      DisplayFormat = '0.00'
    end
    object QEntrada_DiscriminacaoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.ALIQICMS'
      DisplayFormat = '0.00%'
    end
    object QEntrada_DiscriminacaoCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.CODIGOPRODUTO'
    end
    object QEntrada_DiscriminacaoSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.SITUACAO_TRIBUTARIA'
    end
    object QEntrada_DiscriminacaoTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.TOTALPRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object QEntrada_DiscriminacaoDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.DATALANCAMENTO'
    end
    object QEntrada_DiscriminacaoNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.NFNUMERO'
      DisplayFormat = '000000'
    end
    object QEntrada_DiscriminacaoESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.ESSENCIATIPO'
      Size = 30
    end
    object QEntrada_DiscriminacaoCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.CODIGOESSENCIA'
    end
    object QEntrada_DiscriminacaoTRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.TRANSFORMADO'
    end
    object QEntrada_DiscriminacaoTORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.TORALOTEESSENCIA'
      Size = 30
    end
    object QEntrada_DiscriminacaoSITDATA: TDateTimeField
      FieldName = 'SITDATA'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.SITDATA'
    end
    object QEntrada_DiscriminacaoSITHORA: TDateTimeField
      FieldName = 'SITHORA'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.SITHORA'
    end
    object QEntrada_DiscriminacaoSITUACAO: TFloatField
      FieldName = 'SITUACAO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.SITUACAO'
    end
    object QEntrada_DiscriminacaoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.FORNECEDOR'
      Size = 50
    end
    object QEntrada_DiscriminacaoCPF: TFloatField
      FieldName = 'CPF'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.CPF'
      DisplayFormat = '999999999-99'
    end
    object QEntrada_DiscriminacaoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.COMPRIMENTO'
    end
    object QEntrada_DiscriminacaoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.DIAMETRO'
    end
    object QEntrada_DiscriminacaoDIAMETRO1: TFloatField
      FieldName = 'DIAMETRO1'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.DIAMETRO1'
    end
    object QEntrada_DiscriminacaoQUALIDADE: TIBStringField
      FieldName = 'QUALIDADE'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.QUALIDADE'
      Size = 30
    end
    object QEntrada_DiscriminacaoDIAMETROMEDIA: TFloatField
      FieldName = 'DIAMETROMEDIA'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.DIAMETROMEDIA'
    end
    object QEntrada_DiscriminacaoOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.OBS'
      Size = 200
    end
    object QEntrada_DiscriminacaoINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
      Origin = 'ENTRADA_TOROS_DISCRIMINACAO.INSCRICAO'
    end
  end
  object DSEntrada1: TDataSource
    DataSet = TEntrada1
    Left = 576
    Top = 1238
  end
  object DSEntradaDiscriminacao1: TDataSource
    DataSet = TEntradaDiscriminacao1
    Left = 576
    Top = 1302
  end
  object TEntrada1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_TOROS'
    Left = 704
    Top = 1238
    object TEntrada1CODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object TEntrada1NF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
      DisplayFormat = '000000'
    end
    object TEntrada1NATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object TEntrada1CFOP: TFloatField
      FieldName = 'CFOP'
    end
    object TEntrada1IE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object TEntrada1RAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object TEntrada1CGC: TFloatField
      FieldName = 'CGC'
    end
    object TEntrada1ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object TEntrada1BAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TEntrada1CEP: TIBStringField
      FieldName = 'CEP'
      Size = 4
    end
    object TEntrada1MUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object TEntrada1TELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object TEntrada1UF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object TEntrada1DATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object TEntrada1DATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object TEntrada1HORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      EditMask = '00:00;0;_'
      Size = 8
    end
    object TEntrada1CODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TEntrada1BASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
    end
    object TEntrada1VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '0.00'
    end
    object TEntrada1BASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
    end
    object TEntrada1VALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      DisplayFormat = '0.00'
    end
    object TEntrada1VALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object TEntrada1VALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object TEntrada1OUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object TEntrada1VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object TEntrada1VALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      DisplayFormat = '0.00'
    end
    object TEntrada1VALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      DisplayFormat = '0.00'
    end
    object TEntrada1NOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Size = 80
    end
    object TEntrada1FRETE: TIBStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object TEntrada1PLACA: TIBStringField
      FieldName = 'PLACA'
    end
    object TEntrada1PLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object TEntrada1CNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object TEntrada1ENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object TEntrada1MUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object TEntrada1UF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Size = 2
    end
    object TEntrada1IE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
    end
    object TEntrada1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TEntrada1ESPECIE: TIBStringField
      FieldName = 'ESPECIE'
    end
    object TEntrada1MARCA: TIBStringField
      FieldName = 'MARCA'
    end
    object TEntrada1NUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object TEntrada1PESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object TEntrada1PESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object TEntrada1DADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 200
    end
    object TEntrada1DATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object TEntrada1ALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
    end
    object TEntrada1VALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TEntrada1ALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      DisplayFormat = '0.00'
    end
    object TEntrada1BASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
    end
    object TEntrada1INSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
    end
  end
  object TEntradaDiscriminacao1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'NFNUMERO'
    MasterFields = 'NF_NUMERO'
    MasterSource = DSEntrada1
    TableName = 'ENTRADA_TOROS_DISCRIMINACAO'
    Left = 704
    Top = 1302
    object TEntradaDiscriminacao1CODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TEntradaDiscriminacao1CODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TEntradaDiscriminacao1ESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TEntradaDiscriminacao1UNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TEntradaDiscriminacao1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TEntradaDiscriminacao1VALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object TEntradaDiscriminacao1VALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object TEntradaDiscriminacao1ALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00'
    end
    object TEntradaDiscriminacao1CODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TEntradaDiscriminacao1SITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TEntradaDiscriminacao1TOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TEntradaDiscriminacao1DATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TEntradaDiscriminacao1NFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TEntradaDiscriminacao1ESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TEntradaDiscriminacao1CODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TEntradaDiscriminacao1TRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object TEntradaDiscriminacao1TORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object TEntradaDiscriminacao1SITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object TEntradaDiscriminacao1SITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object TEntradaDiscriminacao1SITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object TEntradaDiscriminacao1FORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TEntradaDiscriminacao1CPF: TFloatField
      FieldName = 'CPF'
    end
    object TEntradaDiscriminacao1INSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
    object TEntradaDiscriminacao1COMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TEntradaDiscriminacao1DIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object TEntradaDiscriminacao1DIAMETRO1: TFloatField
      FieldName = 'DIAMETRO1'
    end
    object TEntradaDiscriminacao1QUALIDADE: TIBStringField
      FieldName = 'QUALIDADE'
      Size = 30
    end
    object TEntradaDiscriminacao1DIAMETROMEDIA: TFloatField
      FieldName = 'DIAMETROMEDIA'
    end
    object TEntradaDiscriminacao1OBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object DSSaida: TDataSource
    DataSet = TSaida
    Left = 576
    Top = 1414
  end
  object DSSaida_Discriminacao: TDataSource
    DataSet = TSaida_Discriminacao
    Left = 576
    Top = 1486
  end
  object DSQSaida: TDataSource
    DataSet = QSaida
    Left = 576
    Top = 1566
  end
  object TSaida: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOSAIDA'
        DataType = ftInteger
      end
      item
        Name = 'NF_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'NATUREZA_OPERACAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CFOP'
        DataType = ftFloat
      end
      item
        Name = 'IE_SUBST_TRIBUTARIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RAZAO_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CGC'
        DataType = ftFloat
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MUNICIPIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'INSC_ESTADUAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATA_EMISSAO'
        DataType = ftDateTime
      end
      item
        Name = 'DATA_SAIDA'
        DataType = ftDateTime
      end
      item
        Name = 'HORA_SAIDA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftFloat
      end
      item
        Name = 'BASE_CALCULO_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_CALCULO_ICMS_SUBST'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_ICMS_SUBST'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_FRETE'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_SEGURO'
        DataType = ftFloat
      end
      item
        Name = 'OUTRAS_DESPESAS'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_IPI'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_TOTAL_NOTA'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_TOTAL_PRODUTOS'
        DataType = ftFloat
      end
      item
        Name = 'NOME_TRANSPORTADOR'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'FRETE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PLACA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PLACA_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO_TRANSPORTADOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MUNICIPIO_TRANSPORTADOR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF_TRANSPORTADOR'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IE_TRANSPORTADOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'ESPECIE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'PESO_BRUTO'
        DataType = ftFloat
      end
      item
        Name = 'PESO_LIQUIDO'
        DataType = ftFloat
      end
      item
        Name = 'DADOS_ADICIONAIS'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DATA_RECEBIMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'ALIQ_FUNRURAL'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_FUNRURAL'
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_CALCULO_FUNRURAL'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'IND_NFSAIDANUMERO'
        Fields = 'NF_NUMERO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'SAIDA_MADEIRAS'
    Left = 704
    Top = 1414
    object TSaidaCODIGOSAIDA: TIntegerField
      FieldName = 'CODIGOSAIDA'
    end
    object TSaidaNF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
    end
    object TSaidaNATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object TSaidaCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object TSaidaIE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object TSaidaRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object TSaidaCGC: TFloatField
      FieldName = 'CGC'
    end
    object TSaidaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object TSaidaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TSaidaCEP: TIBStringField
      FieldName = 'CEP'
      Size = 4
    end
    object TSaidaMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object TSaidaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object TSaidaUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object TSaidaDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object TSaidaDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object TSaidaHORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      Size = 8
    end
    object TSaidaCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TSaidaBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
    end
    object TSaidaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object TSaidaBASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
    end
    object TSaidaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object TSaidaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object TSaidaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object TSaidaOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object TSaidaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object TSaidaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object TSaidaVALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
    end
    object TSaidaNOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Size = 80
    end
    object TSaidaFRETE: TIBStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object TSaidaPLACA: TIBStringField
      FieldName = 'PLACA'
    end
    object TSaidaPLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object TSaidaCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object TSaidaENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object TSaidaMUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object TSaidaUF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Size = 2
    end
    object TSaidaIE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
    end
    object TSaidaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TSaidaESPECIE: TIBStringField
      FieldName = 'ESPECIE'
    end
    object TSaidaMARCA: TIBStringField
      FieldName = 'MARCA'
    end
    object TSaidaNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object TSaidaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object TSaidaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object TSaidaDADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 200
    end
    object TSaidaDATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object TSaidaALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
    end
    object TSaidaVALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
    end
    object TSaidaALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object TSaidaBASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
    end
    object TSaidaINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
    end
  end
  object TSaida_Discriminacao: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
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
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'EXPESSURA'
        DataType = ftFloat
      end
      item
        Name = 'TOTALM3'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'IND_SAIDA'
        DescFields = 'ESSENCIA'
        Fields = 'ESSENCIA'
        Options = [ixDescending]
      end>
    StoreDefs = True
    TableName = 'SAIDA_MADEIRAS_DISCRIMINACAO'
    Left = 704
    Top = 1486
    object TSaida_DiscriminacaoCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TSaida_DiscriminacaoCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TSaida_DiscriminacaoESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TSaida_DiscriminacaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TSaida_DiscriminacaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TSaida_DiscriminacaoVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object TSaida_DiscriminacaoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object TSaida_DiscriminacaoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00%'
    end
    object TSaida_DiscriminacaoCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TSaida_DiscriminacaoSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TSaida_DiscriminacaoTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TSaida_DiscriminacaoDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TSaida_DiscriminacaoNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TSaida_DiscriminacaoESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TSaida_DiscriminacaoCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TSaida_DiscriminacaoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TSaida_DiscriminacaoCPF: TFloatField
      FieldName = 'CPF'
    end
    object TSaida_DiscriminacaoINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
    object TSaida_DiscriminacaoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TSaida_DiscriminacaoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object TSaida_DiscriminacaoEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
    end
    object TSaida_DiscriminacaoTOTALM3: TFloatField
      FieldName = 'TOTALM3'
      DisplayFormat = '0.0000'
    end
  end
  object QSaida: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from  SAIDA_MADEIRAS')
    Left = 704
    Top = 1566
    object QSaidaCODIGOSAIDA: TIntegerField
      FieldName = 'CODIGOSAIDA'
      Origin = 'SAIDA_MADEIRAS.CODIGOSAIDA'
    end
    object QSaidaNF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
      Origin = 'SAIDA_MADEIRAS.NF_NUMERO'
    end
    object QSaidaNATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Origin = 'SAIDA_MADEIRAS.NATUREZA_OPERACAO'
      Size = 50
    end
    object QSaidaCFOP: TFloatField
      FieldName = 'CFOP'
      Origin = 'SAIDA_MADEIRAS.CFOP'
    end
    object QSaidaIE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Origin = 'SAIDA_MADEIRAS.IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object QSaidaRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'SAIDA_MADEIRAS.RAZAO_SOCIAL'
      Size = 100
    end
    object QSaidaCGC: TFloatField
      FieldName = 'CGC'
      Origin = 'SAIDA_MADEIRAS.CGC'
    end
    object QSaidaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'SAIDA_MADEIRAS.ENDERECO'
      Size = 80
    end
    object QSaidaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'SAIDA_MADEIRAS.BAIRRO'
      Size = 30
    end
    object QSaidaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'SAIDA_MADEIRAS.CEP'
      Size = 4
    end
    object QSaidaMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Origin = 'SAIDA_MADEIRAS.MUNICIPIO'
      Size = 30
    end
    object QSaidaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'SAIDA_MADEIRAS.TELEFONE'
      Size = 11
    end
    object QSaidaUF: TIBStringField
      FieldName = 'UF'
      Origin = 'SAIDA_MADEIRAS.UF'
      Size = 2
    end
    object QSaidaDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      Origin = 'SAIDA_MADEIRAS.DATA_EMISSAO'
    end
    object QSaidaDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
      Origin = 'SAIDA_MADEIRAS.DATA_SAIDA'
    end
    object QSaidaHORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      Origin = 'SAIDA_MADEIRAS.HORA_SAIDA'
      Size = 8
    end
    object QSaidaCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'SAIDA_MADEIRAS.CODIGOFORNECEDOR'
    end
    object QSaidaBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'SAIDA_MADEIRAS.BASE_CALCULO_ICMS'
    end
    object QSaidaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Origin = 'SAIDA_MADEIRAS.VALOR_ICMS'
    end
    object QSaidaBASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
      Origin = 'SAIDA_MADEIRAS.BASE_CALCULO_ICMS_SUBST'
    end
    object QSaidaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'SAIDA_MADEIRAS.VALOR_ICMS_SUBST'
    end
    object QSaidaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      Origin = 'SAIDA_MADEIRAS.VALOR_FRETE'
    end
    object QSaidaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      Origin = 'SAIDA_MADEIRAS.VALOR_SEGURO'
    end
    object QSaidaOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      Origin = 'SAIDA_MADEIRAS.OUTRAS_DESPESAS'
    end
    object QSaidaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Origin = 'SAIDA_MADEIRAS.VALOR_IPI'
    end
    object QSaidaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      Origin = 'SAIDA_MADEIRAS.VALOR_TOTAL_NOTA'
    end
    object QSaidaVALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'SAIDA_MADEIRAS.VALOR_TOTAL_PRODUTOS'
    end
    object QSaidaNOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Origin = 'SAIDA_MADEIRAS.NOME_TRANSPORTADOR'
      Size = 80
    end
    object QSaidaFRETE: TIBStringField
      FieldName = 'FRETE'
      Origin = 'SAIDA_MADEIRAS.FRETE'
      Size = 30
    end
    object QSaidaPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'SAIDA_MADEIRAS.PLACA'
    end
    object QSaidaPLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Origin = 'SAIDA_MADEIRAS.PLACA_UF'
      Size = 2
    end
    object QSaidaCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'SAIDA_MADEIRAS.CNPJ_CPF'
    end
    object QSaidaENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Origin = 'SAIDA_MADEIRAS.ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object QSaidaMUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Origin = 'SAIDA_MADEIRAS.MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object QSaidaUF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Origin = 'SAIDA_MADEIRAS.UF_TRANSPORTADOR'
      Size = 2
    end
    object QSaidaIE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
      Origin = 'SAIDA_MADEIRAS.IE_TRANSPORTADOR'
    end
    object QSaidaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'SAIDA_MADEIRAS.QUANTIDADE'
    end
    object QSaidaESPECIE: TIBStringField
      FieldName = 'ESPECIE'
      Origin = 'SAIDA_MADEIRAS.ESPECIE'
    end
    object QSaidaMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'SAIDA_MADEIRAS.MARCA'
    end
    object QSaidaNUMERO: TFloatField
      FieldName = 'NUMERO'
      Origin = 'SAIDA_MADEIRAS.NUMERO'
    end
    object QSaidaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
      Origin = 'SAIDA_MADEIRAS.PESO_BRUTO'
    end
    object QSaidaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'SAIDA_MADEIRAS.PESO_LIQUIDO'
    end
    object QSaidaDADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Origin = 'SAIDA_MADEIRAS.DADOS_ADICIONAIS'
      Size = 200
    end
    object QSaidaDATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = 'SAIDA_MADEIRAS.DATA_RECEBIMENTO'
    end
    object QSaidaALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
      Origin = 'SAIDA_MADEIRAS.ALIQ_FUNRURAL'
    end
    object QSaidaVALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
      Origin = 'SAIDA_MADEIRAS.VALOR_FUNRURAL'
    end
    object QSaidaALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      Origin = 'SAIDA_MADEIRAS.ALIQ_ICMS'
    end
    object QSaidaBASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
      Origin = 'SAIDA_MADEIRAS.BASE_CALCULO_FUNRURAL'
    end
    object QSaidaINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'SAIDA_MADEIRAS.INSC_ESTADUAL'
    end
  end
  object DSaida1: TDataSource
    DataSet = TSaida1
    Left = 576
    Top = 1654
  end
  object DSaidaDiscriminacao1: TDataSource
    DataSet = TSaida_Discriminacao1
    Left = 576
    Top = 1726
  end
  object TSaida1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOSAIDA'
        DataType = ftInteger
      end
      item
        Name = 'NF_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'NATUREZA_OPERACAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CFOP'
        DataType = ftFloat
      end
      item
        Name = 'IE_SUBST_TRIBUTARIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RAZAO_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CGC'
        DataType = ftFloat
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MUNICIPIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'INSC_ESTADUAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATA_EMISSAO'
        DataType = ftDateTime
      end
      item
        Name = 'DATA_SAIDA'
        DataType = ftDateTime
      end
      item
        Name = 'HORA_SAIDA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftFloat
      end
      item
        Name = 'BASE_CALCULO_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_CALCULO_ICMS_SUBST'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_ICMS_SUBST'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_FRETE'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_SEGURO'
        DataType = ftFloat
      end
      item
        Name = 'OUTRAS_DESPESAS'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_IPI'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_TOTAL_NOTA'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_TOTAL_PRODUTOS'
        DataType = ftFloat
      end
      item
        Name = 'NOME_TRANSPORTADOR'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'FRETE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PLACA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PLACA_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO_TRANSPORTADOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MUNICIPIO_TRANSPORTADOR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF_TRANSPORTADOR'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IE_TRANSPORTADOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'ESPECIE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'PESO_BRUTO'
        DataType = ftFloat
      end
      item
        Name = 'PESO_LIQUIDO'
        DataType = ftFloat
      end
      item
        Name = 'DADOS_ADICIONAIS'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DATA_RECEBIMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'ALIQ_FUNRURAL'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_FUNRURAL'
        DataType = ftFloat
      end
      item
        Name = 'ALIQ_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_CALCULO_FUNRURAL'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'SAIDA_MADEIRAS'
    Left = 704
    Top = 1654
    object IntegerField1: TIntegerField
      FieldName = 'CODIGOSAIDA'
    end
    object FloatField1: TFloatField
      FieldName = 'NF_NUMERO'
    end
    object IBStringField1: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object FloatField2: TFloatField
      FieldName = 'CFOP'
    end
    object IBStringField2: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object IBStringField3: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object FloatField3: TFloatField
      FieldName = 'CGC'
    end
    object IBStringField4: TIBStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object IBStringField5: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object IBStringField6: TIBStringField
      FieldName = 'CEP'
      Size = 4
    end
    object IBStringField7: TIBStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object IBStringField8: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object IBStringField9: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object IBStringField10: TIBStringField
      FieldName = 'HORA_SAIDA'
      Size = 8
    end
    object FloatField5: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object FloatField6: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
    end
    object FloatField7: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '0.00'
    end
    object FloatField8: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
    end
    object FloatField9: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      DisplayFormat = '0.00'
    end
    object FloatField10: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object FloatField11: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object FloatField12: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object FloatField13: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object FloatField14: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object FloatField15: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
    end
    object IBStringField11: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Size = 80
    end
    object IBStringField12: TIBStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object IBStringField13: TIBStringField
      FieldName = 'PLACA'
    end
    object IBStringField14: TIBStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object IBStringField15: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object IBStringField16: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object IBStringField17: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object IBStringField18: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Size = 2
    end
    object IBStringField19: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
    end
    object FloatField16: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object IBStringField20: TIBStringField
      FieldName = 'ESPECIE'
    end
    object IBStringField21: TIBStringField
      FieldName = 'MARCA'
    end
    object FloatField17: TFloatField
      FieldName = 'NUMERO'
    end
    object FloatField18: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object FloatField19: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object IBStringField22: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 200
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object FloatField20: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object FloatField21: TFloatField
      FieldName = 'VALOR_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object FloatField22: TFloatField
      FieldName = 'ALIQ_ICMS'
      DisplayFormat = '0.00'
    end
    object FloatField23: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TSaida1INSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
    end
  end
  object TSaida_Discriminacao1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SAIDA_MADEIRAS_DISCRIMINACAO'
    Left = 704
    Top = 1726
    object IntegerField2: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object FloatField24: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object IBStringField23: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object IBStringField24: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object FloatField25: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object FloatField26: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object FloatField27: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object FloatField28: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00%'
    end
    object FloatField29: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object IBStringField25: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object FloatField30: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object FloatField31: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TSaida_Discriminacao1ESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TSaida_Discriminacao1CODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TSaida_Discriminacao1FORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TSaida_Discriminacao1CPF: TFloatField
      FieldName = 'CPF'
    end
    object TSaida_Discriminacao1INSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
    object TSaida_Discriminacao1COMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '0.00'
    end
    object TSaida_Discriminacao1LARGURA: TFloatField
      FieldName = 'LARGURA'
      DisplayFormat = '0.00'
    end
    object TSaida_Discriminacao1EXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      DisplayFormat = '0.000'
    end
    object TSaida_Discriminacao1TOTALM3: TFloatField
      FieldName = 'TOTALM3'
      DisplayFormat = '0.0000'
    end
  end
  object DQSAIDA_DISCRIMINACAO: TDataSource
    DataSet = QSaida_Discriminacao
    Left = 72
    Top = 1742
  end
  object QSaida_Discriminacao: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SAIDA_MADEIRAS_DISCRIMINACAO')
    Left = 232
    Top = 1742
    object QSaida_DiscriminacaoCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.CODDISCRIMINACAO'
    end
    object QSaida_DiscriminacaoCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.CODIGOFORNECEDOR'
    end
    object QSaida_DiscriminacaoESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.ESSENCIA'
      Size = 30
    end
    object QSaida_DiscriminacaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.UNIDADE'
      Size = 5
    end
    object QSaida_DiscriminacaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.QUANTIDADE'
    end
    object QSaida_DiscriminacaoVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.VALUNITARIO'
    end
    object QSaida_DiscriminacaoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.VALTOTAL'
    end
    object QSaida_DiscriminacaoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.ALIQICMS'
    end
    object QSaida_DiscriminacaoCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.CODIGOPRODUTO'
    end
    object QSaida_DiscriminacaoSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.SITUACAO_TRIBUTARIA'
    end
    object QSaida_DiscriminacaoTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.TOTALPRODUTO'
    end
    object QSaida_DiscriminacaoDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.DATALANCAMENTO'
    end
    object QSaida_DiscriminacaoNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.NFNUMERO'
    end
    object QSaida_DiscriminacaoESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.ESSENCIATIPO'
      Size = 30
    end
    object QSaida_DiscriminacaoCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.CODIGOESSENCIA'
    end
    object QSaida_DiscriminacaoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.FORNECEDOR'
      Size = 50
    end
    object QSaida_DiscriminacaoCPF: TFloatField
      FieldName = 'CPF'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.CPF'
    end
    object QSaida_DiscriminacaoINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.INSCRICAO'
    end
    object QSaida_DiscriminacaoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.COMPRIMENTO'
    end
    object QSaida_DiscriminacaoLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.LARGURA'
    end
    object QSaida_DiscriminacaoEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.EXPESSURA'
    end
    object QSaida_DiscriminacaoTOTALM3: TFloatField
      FieldName = 'TOTALM3'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.TOTALM3'
    end
  end
  object DPRODUCAO: TDataSource
    DataSet = TPRODUCAO
    Left = 72
    Top = 1174
  end
  object DQPRODUCAO: TDataSource
    DataSet = QPRODUCAO
    Left = 232
    Top = 1174
  end
  object TPRODUCAO: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODLANCAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'CODPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QTORA'
        DataType = ftFloat
      end
      item
        Name = 'QSERRADA'
        DataType = ftFloat
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftFloat
      end
      item
        Name = 'RESULTADO'
        DataType = ftFloat
      end
      item
        Name = 'VALTORA'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'INDPRODUCAO'
        Fields = 'CODPRODUTO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'PRODUCAO'
    Left = 152
    Top = 978
    object TPRODUCAOCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
    end
    object TPRODUCAOESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TPRODUCAOQTORA: TFloatField
      FieldName = 'QTORA'
      DisplayFormat = '0.0000'
    end
    object TPRODUCAOQSERRADA: TFloatField
      FieldName = 'QSERRADA'
      DisplayFormat = '0.0000'
    end
    object TPRODUCAODATA: TDateTimeField
      FieldName = 'DATA'
    end
    object TPRODUCAOPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object TPRODUCAOCODLANCAMENTO: TIntegerField
      FieldName = 'CODLANCAMENTO'
    end
    object TPRODUCAOCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TPRODUCAORESULTADO: TFloatField
      FieldName = 'RESULTADO'
    end
    object TPRODUCAOVALTORA: TFloatField
      FieldName = 'VALTORA'
      DisplayFormat = '0.00'
    end
  end
  object QPRODUCAO: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRODUCAO')
    Left = 328
    Top = 1174
    object QPRODUCAOCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
      Origin = 'PRODUCAO.CODPRODUTO'
    end
    object QPRODUCAOESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'PRODUCAO.ESSENCIA'
      Size = 30
    end
    object QPRODUCAOQTORA: TFloatField
      FieldName = 'QTORA'
      Origin = 'PRODUCAO.QTORA'
    end
    object QPRODUCAOQSERRADA: TFloatField
      FieldName = 'QSERRADA'
      Origin = 'PRODUCAO.QSERRADA'
    end
    object QPRODUCAODATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'PRODUCAO.DATA'
    end
    object QPRODUCAOPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUCAO.PRODUTO'
      Size = 30
    end
    object QPRODUCAOCODLANCAMENTO: TIntegerField
      FieldName = 'CODLANCAMENTO'
      Origin = 'PRODUCAO.CODLANCAMENTO'
    end
    object QPRODUCAOCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'PRODUCAO.CODIGOESSENCIA'
    end
    object QPRODUCAORESULTADO: TFloatField
      FieldName = 'RESULTADO'
      Origin = 'PRODUCAO.RESULTADO'
    end
    object QPRODUCAOVALTORA: TFloatField
      FieldName = 'VALTORA'
      Origin = 'PRODUCAO.VALTORA'
    end
  end
  object DLOGIN: TDataSource
    DataSet = TLOGIN
    Left = 440
    Top = 1176
  end
  object TLOGIN: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 10
      end>
    StoreDefs = True
    TableName = 'LOGIN'
    Left = 544
    Top = 1176
    object TLOGINCODIGO: TIntegerField
      FieldName = 'CODIGO'
      DisplayFormat = '000'
    end
    object TLOGINUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object TLOGINSENHA: TIBStringField
      FieldName = 'SENHA'
      Size = 10
    end
  end
  object DESERRADA: TDataSource
    DataSet = TESERRADA
    Left = 72
    Top = 1112
  end
  object TESERRADA: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_SERRADA'
    Left = 152
    Top = 1112
    object TESERRADACODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object TESERRADANF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
      DisplayFormat = '000000'
    end
    object TESERRADANATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object TESERRADACFOP: TFloatField
      FieldName = 'CFOP'
    end
    object TESERRADAIE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object TESERRADARAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object TESERRADACGC: TFloatField
      FieldName = 'CGC'
    end
    object TESERRADAENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object TESERRADABAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TESERRADACEP: TIBStringField
      FieldName = 'CEP'
      Size = 4
    end
    object TESERRADAMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object TESERRADATELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object TESERRADAUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object TESERRADADATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object TESERRADADATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object TESERRADAHORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      EditMask = '00:00'
      Size = 8
    end
    object TESERRADACODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TESERRADABASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      DisplayFormat = '0.00'
    end
    object TESERRADAVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '0.00'
    end
    object TESERRADABASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
      DisplayFormat = '0.00'
    end
    object TESERRADAVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      DisplayFormat = '0.00'
    end
    object TESERRADAVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      DisplayFormat = '0.00'
    end
    object TESERRADAVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      DisplayFormat = '0.00'
    end
    object TESERRADAOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      DisplayFormat = '0.00'
    end
    object TESERRADAVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '0.00'
    end
    object TESERRADAVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      DisplayFormat = '0.00'
    end
    object TESERRADAVALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      DisplayFormat = '0.00'
    end
    object TESERRADANOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Size = 80
    end
    object TESERRADAFRETE: TIBStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object TESERRADAPLACA: TIBStringField
      FieldName = 'PLACA'
    end
    object TESERRADAPLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object TESERRADACNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object TESERRADAENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object TESERRADAMUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object TESERRADAUF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Size = 2
    end
    object TESERRADAIE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
    end
    object TESERRADAQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TESERRADAESPECIE: TIBStringField
      FieldName = 'ESPECIE'
    end
    object TESERRADAMARCA: TIBStringField
      FieldName = 'MARCA'
    end
    object TESERRADANUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object TESERRADAPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object TESERRADAPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object TESERRADADADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 200
    end
    object TESERRADADATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object TESERRADAALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TESERRADAVALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TESERRADAALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      DisplayFormat = '0.00'
    end
    object TESERRADABASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TESERRADAINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
    end
  end
  object TESDISCRIMINACAO: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_SERRADA_DISCRIMINACAO'
    Left = 192
    Top = 1056
    object TESDISCRIMINACAOCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TESDISCRIMINACAOCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TESDISCRIMINACAOESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TESDISCRIMINACAOUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TESDISCRIMINACAOQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TESDISCRIMINACAOVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAOVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAOALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAOCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TESDISCRIMINACAOSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TESDISCRIMINACAOTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TESDISCRIMINACAODATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TESDISCRIMINACAONFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      DisplayFormat = '000000'
    end
    object TESDISCRIMINACAOESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TESDISCRIMINACAOCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TESDISCRIMINACAOTRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object TESDISCRIMINACAOTORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object TESDISCRIMINACAOSITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object TESDISCRIMINACAOSITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object TESDISCRIMINACAOSITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object TESDISCRIMINACAOFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TESDISCRIMINACAOCPF: TFloatField
      FieldName = 'CPF'
    end
    object TESDISCRIMINACAOINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
  end
  object DESDISCRIMINACAO: TDataSource
    DataSet = TESDISCRIMINACAO
    Left = 72
    Top = 1056
  end
  object DSSERRADA1: TDataSource
    DataSet = TSERRADA1
    Left = 240
    Top = 1112
  end
  object TSERRADA1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_SERRADA'
    Left = 360
    Top = 1112
    object TSERRADA1CODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object TSERRADA1NF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
      DisplayFormat = '000000'
    end
    object TSERRADA1NATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object TSERRADA1CFOP: TFloatField
      FieldName = 'CFOP'
    end
    object TSERRADA1IE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object TSERRADA1RAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object TSERRADA1CGC: TFloatField
      FieldName = 'CGC'
    end
    object TSERRADA1ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object TSERRADA1BAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TSERRADA1CEP: TIBStringField
      FieldName = 'CEP'
      Size = 4
    end
    object TSERRADA1MUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object TSERRADA1TELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object TSERRADA1UF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object TSERRADA1DATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object TSERRADA1DATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object TSERRADA1HORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      EditMask = '00:00'
      Size = 8
    end
    object TSERRADA1CODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TSERRADA1BASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      DisplayFormat = '0.00'
    end
    object TSERRADA1VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '0.00'
    end
    object TSERRADA1BASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
      DisplayFormat = '0.00'
    end
    object TSERRADA1VALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      DisplayFormat = '0.00'
    end
    object TSERRADA1VALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      DisplayFormat = '0.00'
    end
    object TSERRADA1VALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      DisplayFormat = '0.00'
    end
    object TSERRADA1OUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      DisplayFormat = '0.00'
    end
    object TSERRADA1VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '0.00'
    end
    object TSERRADA1VALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      DisplayFormat = '0.00'
    end
    object TSERRADA1VALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      DisplayFormat = '0.00'
    end
    object TSERRADA1NOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Size = 80
    end
    object TSERRADA1FRETE: TIBStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object TSERRADA1PLACA: TIBStringField
      FieldName = 'PLACA'
    end
    object TSERRADA1PLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object TSERRADA1CNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object TSERRADA1ENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object TSERRADA1MUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object TSERRADA1UF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Size = 2
    end
    object TSERRADA1IE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
    end
    object TSERRADA1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TSERRADA1ESPECIE: TIBStringField
      FieldName = 'ESPECIE'
    end
    object TSERRADA1MARCA: TIBStringField
      FieldName = 'MARCA'
    end
    object TSERRADA1NUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object TSERRADA1PESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object TSERRADA1PESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object TSERRADA1DADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 200
    end
    object TSERRADA1DATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object TSERRADA1ALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TSERRADA1VALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TSERRADA1ALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      DisplayFormat = '0.00'
    end
    object TSERRADA1BASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
      DisplayFormat = '0.00'
    end
    object TSERRADA1INSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 15
    end
  end
  object TESDISCRIMINACAO1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_SERRADA_DISCRIMINACAO'
    Left = 576
    Top = 588
    object TESDISCRIMINACAO1CODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TESDISCRIMINACAO1CODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TESDISCRIMINACAO1ESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TESDISCRIMINACAO1UNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TESDISCRIMINACAO1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TESDISCRIMINACAO1VALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAO1VALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAO1ALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAO1CODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TESDISCRIMINACAO1SITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TESDISCRIMINACAO1TOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TESDISCRIMINACAO1DATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TESDISCRIMINACAO1NFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      DisplayFormat = '000000'
    end
    object TESDISCRIMINACAO1ESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TESDISCRIMINACAO1CODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TESDISCRIMINACAO1TRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object TESDISCRIMINACAO1TORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object TESDISCRIMINACAO1SITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object TESDISCRIMINACAO1SITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object TESDISCRIMINACAO1SITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object TESDISCRIMINACAO1FORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TESDISCRIMINACAO1CPF: TFloatField
      FieldName = 'CPF'
    end
    object TESDISCRIMINACAO1INSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
      Size = 15
    end
  end
  object DESDISCRIMINACAO1: TDataSource
    DataSet = TESDISCRIMINACAO1
    Left = 344
    Top = 852
  end
  object DQESERRADA: TDataSource
    DataSet = QESERRADA
    Left = 80
    Top = 1000
  end
  object QESERRADA: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ENTRADA_SERRADA')
    Left = 224
    Top = 1000
    object QESERRADACODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
      Origin = 'ENTRADA_SERRADA.CODIGOENTRADA'
    end
    object QESERRADANF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
      Origin = 'ENTRADA_SERRADA.NF_NUMERO'
    end
    object QESERRADANATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Origin = 'ENTRADA_SERRADA.NATUREZA_OPERACAO'
      Size = 50
    end
    object QESERRADACFOP: TFloatField
      FieldName = 'CFOP'
      Origin = 'ENTRADA_SERRADA.CFOP'
    end
    object QESERRADAIE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Origin = 'ENTRADA_SERRADA.IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object QESERRADARAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'ENTRADA_SERRADA.RAZAO_SOCIAL'
      Size = 100
    end
    object QESERRADACGC: TFloatField
      FieldName = 'CGC'
      Origin = 'ENTRADA_SERRADA.CGC'
    end
    object QESERRADAENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'ENTRADA_SERRADA.ENDERECO'
      Size = 80
    end
    object QESERRADABAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'ENTRADA_SERRADA.BAIRRO'
      Size = 30
    end
    object QESERRADACEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'ENTRADA_SERRADA.CEP'
      Size = 4
    end
    object QESERRADAMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Origin = 'ENTRADA_SERRADA.MUNICIPIO'
      Size = 30
    end
    object QESERRADATELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'ENTRADA_SERRADA.TELEFONE'
      Size = 11
    end
    object QESERRADAUF: TIBStringField
      FieldName = 'UF'
      Origin = 'ENTRADA_SERRADA.UF'
      Size = 2
    end
    object QESERRADADATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      Origin = 'ENTRADA_SERRADA.DATA_EMISSAO'
    end
    object QESERRADADATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
      Origin = 'ENTRADA_SERRADA.DATA_SAIDA'
    end
    object QESERRADAHORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      Origin = 'ENTRADA_SERRADA.HORA_SAIDA'
      Size = 8
    end
    object QESERRADACODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'ENTRADA_SERRADA.CODIGOFORNECEDOR'
    end
    object QESERRADABASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'ENTRADA_SERRADA.BASE_CALCULO_ICMS'
    end
    object QESERRADAVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Origin = 'ENTRADA_SERRADA.VALOR_ICMS'
    end
    object QESERRADABASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
      Origin = 'ENTRADA_SERRADA.BASE_CALCULO_ICMS_SUBST'
    end
    object QESERRADAVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'ENTRADA_SERRADA.VALOR_ICMS_SUBST'
    end
    object QESERRADAVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      Origin = 'ENTRADA_SERRADA.VALOR_FRETE'
    end
    object QESERRADAVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      Origin = 'ENTRADA_SERRADA.VALOR_SEGURO'
    end
    object QESERRADAOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      Origin = 'ENTRADA_SERRADA.OUTRAS_DESPESAS'
    end
    object QESERRADAVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Origin = 'ENTRADA_SERRADA.VALOR_IPI'
    end
    object QESERRADAVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      Origin = 'ENTRADA_SERRADA.VALOR_TOTAL_NOTA'
    end
    object QESERRADAVALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'ENTRADA_SERRADA.VALOR_TOTAL_PRODUTOS'
    end
    object QESERRADANOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Origin = 'ENTRADA_SERRADA.NOME_TRANSPORTADOR'
      Size = 80
    end
    object QESERRADAFRETE: TIBStringField
      FieldName = 'FRETE'
      Origin = 'ENTRADA_SERRADA.FRETE'
      Size = 30
    end
    object QESERRADAPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'ENTRADA_SERRADA.PLACA'
    end
    object QESERRADAPLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Origin = 'ENTRADA_SERRADA.PLACA_UF'
      Size = 2
    end
    object QESERRADACNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'ENTRADA_SERRADA.CNPJ_CPF'
    end
    object QESERRADAENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Origin = 'ENTRADA_SERRADA.ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object QESERRADAMUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Origin = 'ENTRADA_SERRADA.MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object QESERRADAUF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Origin = 'ENTRADA_SERRADA.UF_TRANSPORTADOR'
      Size = 2
    end
    object QESERRADAIE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
      Origin = 'ENTRADA_SERRADA.IE_TRANSPORTADOR'
    end
    object QESERRADAQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADA_SERRADA.QUANTIDADE'
    end
    object QESERRADAESPECIE: TIBStringField
      FieldName = 'ESPECIE'
      Origin = 'ENTRADA_SERRADA.ESPECIE'
    end
    object QESERRADAMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'ENTRADA_SERRADA.MARCA'
    end
    object QESERRADANUMERO: TFloatField
      FieldName = 'NUMERO'
      Origin = 'ENTRADA_SERRADA.NUMERO'
    end
    object QESERRADAPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
      Origin = 'ENTRADA_SERRADA.PESO_BRUTO'
    end
    object QESERRADAPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'ENTRADA_SERRADA.PESO_LIQUIDO'
    end
    object QESERRADADADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Origin = 'ENTRADA_SERRADA.DADOS_ADICIONAIS'
      Size = 200
    end
    object QESERRADADATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = 'ENTRADA_SERRADA.DATA_RECEBIMENTO'
    end
    object QESERRADAALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
      Origin = 'ENTRADA_SERRADA.ALIQ_FUNRURAL'
    end
    object QESERRADAVALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
      Origin = 'ENTRADA_SERRADA.VALOR_FUNRURAL'
    end
    object QESERRADAALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ENTRADA_SERRADA.ALIQ_ICMS'
    end
    object QESERRADABASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
      Origin = 'ENTRADA_SERRADA.BASE_CALCULO_FUNRURAL'
    end
    object QESERRADAINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'ENTRADA_SERRADA.INSC_ESTADUAL'
    end
  end
  object DQSERRADA_DISCRIMINACAO: TDataSource
    DataSet = QSERRADA_DISCRIMINACAO
    Left = 352
    Top = 992
  end
  object QSERRADA_DISCRIMINACAO: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ENTRADA_SERRADA_DISCRIMINACAO')
    Left = 512
    Top = 992
    object QSERRADA_DISCRIMINACAOCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CODDISCRIMINACAO'
    end
    object QSERRADA_DISCRIMINACAOCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CODIGOFORNECEDOR'
    end
    object QSERRADA_DISCRIMINACAOESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.ESSENCIA'
      Size = 30
    end
    object QSERRADA_DISCRIMINACAOUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.UNIDADE'
      Size = 5
    end
    object QSERRADA_DISCRIMINACAOQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.QUANTIDADE'
    end
    object QSERRADA_DISCRIMINACAOVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.VALUNITARIO'
    end
    object QSERRADA_DISCRIMINACAOVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.VALTOTAL'
    end
    object QSERRADA_DISCRIMINACAOALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.ALIQICMS'
    end
    object QSERRADA_DISCRIMINACAOCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CODIGOPRODUTO'
    end
    object QSERRADA_DISCRIMINACAOSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.SITUACAO_TRIBUTARIA'
    end
    object QSERRADA_DISCRIMINACAOTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.TOTALPRODUTO'
    end
    object QSERRADA_DISCRIMINACAODATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.DATALANCAMENTO'
    end
    object QSERRADA_DISCRIMINACAONFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.NFNUMERO'
    end
    object QSERRADA_DISCRIMINACAOESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.ESSENCIATIPO'
      Size = 30
    end
    object QSERRADA_DISCRIMINACAOCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CODIGOESSENCIA'
    end
    object QSERRADA_DISCRIMINACAOTRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.TRANSFORMADO'
    end
    object QSERRADA_DISCRIMINACAOTORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.TORALOTEESSENCIA'
      Size = 30
    end
    object QSERRADA_DISCRIMINACAOSITUACAO: TFloatField
      FieldName = 'SITUACAO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.SITUACAO'
    end
    object QSERRADA_DISCRIMINACAOSITDATA: TDateTimeField
      FieldName = 'SITDATA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.SITDATA'
    end
    object QSERRADA_DISCRIMINACAOSITHORA: TDateTimeField
      FieldName = 'SITHORA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.SITHORA'
    end
    object QSERRADA_DISCRIMINACAOFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.FORNECEDOR'
      Size = 50
    end
    object QSERRADA_DISCRIMINACAOCPF: TFloatField
      FieldName = 'CPF'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CPF'
      Required = True
    end
    object QSERRADA_DISCRIMINACAOINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.INSCRICAO'
    end
  end
  object DS_ENTRADANF: TDataSource
    DataSet = T_ENTRADANF
    Left = 80
    Top = 824
  end
  object T_ENTRADANF: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_TOROSNF'
    Left = 224
    Top = 824
    object T_ENTRADANFCODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object T_ENTRADANFNF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
    end
    object T_ENTRADANFNATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object T_ENTRADANFCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object T_ENTRADANFIE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object T_ENTRADANFRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object T_ENTRADANFCGC: TFloatField
      FieldName = 'CGC'
    end
    object T_ENTRADANFENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object T_ENTRADANFBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object T_ENTRADANFCEP: TIBStringField
      FieldName = 'CEP'
      Size = 4
    end
    object T_ENTRADANFMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object T_ENTRADANFTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object T_ENTRADANFUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_ENTRADANFINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
    end
    object T_ENTRADANFDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object T_ENTRADANFDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object T_ENTRADANFHORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      Size = 8
    end
    object T_ENTRADANFCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object T_ENTRADANFBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
    end
    object T_ENTRADANFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object T_ENTRADANFBASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
    end
    object T_ENTRADANFVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object T_ENTRADANFVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object T_ENTRADANFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object T_ENTRADANFOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object T_ENTRADANFVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object T_ENTRADANFVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object T_ENTRADANFVALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
    end
    object T_ENTRADANFNOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Size = 80
    end
    object T_ENTRADANFFRETE: TIBStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object T_ENTRADANFPLACA: TIBStringField
      FieldName = 'PLACA'
    end
    object T_ENTRADANFPLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object T_ENTRADANFCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object T_ENTRADANFENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object T_ENTRADANFMUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object T_ENTRADANFUF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Size = 2
    end
    object T_ENTRADANFIE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
    end
    object T_ENTRADANFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object T_ENTRADANFESPECIE: TIBStringField
      FieldName = 'ESPECIE'
    end
    object T_ENTRADANFMARCA: TIBStringField
      FieldName = 'MARCA'
    end
    object T_ENTRADANFNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object T_ENTRADANFPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object T_ENTRADANFPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object T_ENTRADANFDADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 200
    end
    object T_ENTRADANFDATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object T_ENTRADANFALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
    end
    object T_ENTRADANFVALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
    end
    object T_ENTRADANFALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object T_ENTRADANFBASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
    end
  end
  object DS_ENTRADANF1: TDataSource
    DataSet = T_ENTRADANF1
    Left = 80
    Top = 904
  end
  object DS_DISCRIMINACAONF1: TDataSource
    DataSet = T_DISCRIMINACAONF1
    Left = 352
    Top = 904
  end
  object T_ENTRADANF1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_TOROSNF'
    Left = 224
    Top = 904
    object T_ENTRADANF1CODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
    end
    object T_ENTRADANF1NF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
    end
    object T_ENTRADANF1NATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object T_ENTRADANF1CFOP: TFloatField
      FieldName = 'CFOP'
    end
    object T_ENTRADANF1IE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object T_ENTRADANF1RAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object T_ENTRADANF1CGC: TFloatField
      FieldName = 'CGC'
    end
    object T_ENTRADANF1ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object T_ENTRADANF1BAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object T_ENTRADANF1CEP: TIBStringField
      FieldName = 'CEP'
      Size = 4
    end
    object T_ENTRADANF1MUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object T_ENTRADANF1TELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object T_ENTRADANF1UF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_ENTRADANF1DATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object T_ENTRADANF1DATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object T_ENTRADANF1HORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      Size = 8
    end
    object T_ENTRADANF1CODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object T_ENTRADANF1BASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
    end
    object T_ENTRADANF1VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object T_ENTRADANF1BASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
    end
    object T_ENTRADANF1VALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object T_ENTRADANF1VALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object T_ENTRADANF1VALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object T_ENTRADANF1OUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object T_ENTRADANF1VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object T_ENTRADANF1VALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object T_ENTRADANF1VALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
    end
    object T_ENTRADANF1NOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Size = 80
    end
    object T_ENTRADANF1FRETE: TIBStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object T_ENTRADANF1PLACA: TIBStringField
      FieldName = 'PLACA'
    end
    object T_ENTRADANF1PLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object T_ENTRADANF1CNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object T_ENTRADANF1ENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object T_ENTRADANF1MUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object T_ENTRADANF1UF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Size = 2
    end
    object T_ENTRADANF1IE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
    end
    object T_ENTRADANF1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object T_ENTRADANF1ESPECIE: TIBStringField
      FieldName = 'ESPECIE'
    end
    object T_ENTRADANF1MARCA: TIBStringField
      FieldName = 'MARCA'
    end
    object T_ENTRADANF1NUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object T_ENTRADANF1PESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object T_ENTRADANF1PESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object T_ENTRADANF1DADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 200
    end
    object T_ENTRADANF1DATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object T_ENTRADANF1ALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
    end
    object T_ENTRADANF1VALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
    end
    object T_ENTRADANF1ALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object T_ENTRADANF1BASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
    end
    object T_ENTRADANF1INSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
    end
  end
  object T_DISCRIMINACAONF1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_TOROS_DISCRIMINACAONF'
    Left = 504
    Top = 904
    object T_DISCRIMINACAONF1CODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object T_DISCRIMINACAONF1CODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object T_DISCRIMINACAONF1ESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object T_DISCRIMINACAONF1UNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object T_DISCRIMINACAONF1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object T_DISCRIMINACAONF1VALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
    end
    object T_DISCRIMINACAONF1VALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object T_DISCRIMINACAONF1ALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object T_DISCRIMINACAONF1CODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object T_DISCRIMINACAONF1SITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object T_DISCRIMINACAONF1TOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object T_DISCRIMINACAONF1DATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object T_DISCRIMINACAONF1NFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object T_DISCRIMINACAONF1ESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object T_DISCRIMINACAONF1CODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object T_DISCRIMINACAONF1TRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object T_DISCRIMINACAONF1TORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object T_DISCRIMINACAONF1SITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object T_DISCRIMINACAONF1SITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object T_DISCRIMINACAONF1SITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object T_DISCRIMINACAONF1FORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object T_DISCRIMINACAONF1CPF: TFloatField
      FieldName = 'CPF'
    end
    object T_DISCRIMINACAONF1COMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object T_DISCRIMINACAONF1DIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object T_DISCRIMINACAONF1DIAMETRO1: TFloatField
      FieldName = 'DIAMETRO1'
    end
    object T_DISCRIMINACAONF1QUALIDADE: TIBStringField
      FieldName = 'QUALIDADE'
      Size = 30
    end
    object T_DISCRIMINACAONF1DIAMETROMEDIA: TFloatField
      FieldName = 'DIAMETROMEDIA'
    end
    object T_DISCRIMINACAONF1OBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
    object T_DISCRIMINACAONF1INSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
  end
  object T_DISCRIMINACAONF: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_TOROS_DISCRIMINACAONF'
    Left = 504
    Top = 824
    object T_DISCRIMINACAONFCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object T_DISCRIMINACAONFCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object T_DISCRIMINACAONFESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object T_DISCRIMINACAONFUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object T_DISCRIMINACAONFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object T_DISCRIMINACAONFVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
    end
    object T_DISCRIMINACAONFVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object T_DISCRIMINACAONFALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object T_DISCRIMINACAONFCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object T_DISCRIMINACAONFSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object T_DISCRIMINACAONFTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object T_DISCRIMINACAONFDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object T_DISCRIMINACAONFNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object T_DISCRIMINACAONFESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object T_DISCRIMINACAONFCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object T_DISCRIMINACAONFTRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object T_DISCRIMINACAONFTORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object T_DISCRIMINACAONFSITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object T_DISCRIMINACAONFSITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object T_DISCRIMINACAONFSITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object T_DISCRIMINACAONFFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object T_DISCRIMINACAONFCPF: TFloatField
      FieldName = 'CPF'
    end
    object T_DISCRIMINACAONFCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object T_DISCRIMINACAONFDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object T_DISCRIMINACAONFDIAMETRO1: TFloatField
      FieldName = 'DIAMETRO1'
    end
    object T_DISCRIMINACAONFQUALIDADE: TIBStringField
      FieldName = 'QUALIDADE'
      Size = 30
    end
    object T_DISCRIMINACAONFDIAMETROMEDIA: TFloatField
      FieldName = 'DIAMETROMEDIA'
    end
    object T_DISCRIMINACAONFOBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
    object T_DISCRIMINACAONFINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
  end
  object DS_DISCRIMINACAONF: TDataSource
    DataSet = T_DISCRIMINACAONF
    Left = 352
    Top = 824
  end
  object DS_QENTRADANF: TDataSource
    DataSet = Q_ENTRADANF
    Left = 80
    Top = 752
  end
  object Q_ENTRADANF: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ENTRADA_TOROSNF')
    Left = 224
    Top = 752
    object Q_ENTRADANFCODIGOENTRADA: TIntegerField
      FieldName = 'CODIGOENTRADA'
      Origin = 'ENTRADA_TOROSNF.CODIGOENTRADA'
    end
    object Q_ENTRADANFNF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
      Origin = 'ENTRADA_TOROSNF.NF_NUMERO'
    end
    object Q_ENTRADANFNATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Origin = 'ENTRADA_TOROSNF.NATUREZA_OPERACAO'
      Size = 50
    end
    object Q_ENTRADANFCFOP: TFloatField
      FieldName = 'CFOP'
      Origin = 'ENTRADA_TOROSNF.CFOP'
    end
    object Q_ENTRADANFIE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Origin = 'ENTRADA_TOROSNF.IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object Q_ENTRADANFRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'ENTRADA_TOROSNF.RAZAO_SOCIAL'
      Size = 100
    end
    object Q_ENTRADANFCGC: TFloatField
      FieldName = 'CGC'
      Origin = 'ENTRADA_TOROSNF.CGC'
    end
    object Q_ENTRADANFENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'ENTRADA_TOROSNF.ENDERECO'
      Size = 80
    end
    object Q_ENTRADANFBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'ENTRADA_TOROSNF.BAIRRO'
      Size = 30
    end
    object Q_ENTRADANFCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'ENTRADA_TOROSNF.CEP'
      Size = 4
    end
    object Q_ENTRADANFMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Origin = 'ENTRADA_TOROSNF.MUNICIPIO'
      Size = 30
    end
    object Q_ENTRADANFTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'ENTRADA_TOROSNF.TELEFONE'
      Size = 11
    end
    object Q_ENTRADANFUF: TIBStringField
      FieldName = 'UF'
      Origin = 'ENTRADA_TOROSNF.UF'
      Size = 2
    end
    object Q_ENTRADANFINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'ENTRADA_TOROSNF.INSC_ESTADUAL'
    end
    object Q_ENTRADANFDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      Origin = 'ENTRADA_TOROSNF.DATA_EMISSAO'
    end
    object Q_ENTRADANFDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
      Origin = 'ENTRADA_TOROSNF.DATA_SAIDA'
    end
    object Q_ENTRADANFHORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      Origin = 'ENTRADA_TOROSNF.HORA_SAIDA'
      Size = 8
    end
    object Q_ENTRADANFCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'ENTRADA_TOROSNF.CODIGOFORNECEDOR'
    end
    object Q_ENTRADANFBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'ENTRADA_TOROSNF.BASE_CALCULO_ICMS'
    end
    object Q_ENTRADANFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Origin = 'ENTRADA_TOROSNF.VALOR_ICMS'
    end
    object Q_ENTRADANFBASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
      Origin = 'ENTRADA_TOROSNF.BASE_CALCULO_ICMS_SUBST'
    end
    object Q_ENTRADANFVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'ENTRADA_TOROSNF.VALOR_ICMS_SUBST'
    end
    object Q_ENTRADANFVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      Origin = 'ENTRADA_TOROSNF.VALOR_FRETE'
    end
    object Q_ENTRADANFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      Origin = 'ENTRADA_TOROSNF.VALOR_SEGURO'
    end
    object Q_ENTRADANFOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      Origin = 'ENTRADA_TOROSNF.OUTRAS_DESPESAS'
    end
    object Q_ENTRADANFVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Origin = 'ENTRADA_TOROSNF.VALOR_IPI'
    end
    object Q_ENTRADANFVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      Origin = 'ENTRADA_TOROSNF.VALOR_TOTAL_NOTA'
    end
    object Q_ENTRADANFVALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'ENTRADA_TOROSNF.VALOR_TOTAL_PRODUTOS'
    end
    object Q_ENTRADANFNOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROSNF.NOME_TRANSPORTADOR'
      Size = 80
    end
    object Q_ENTRADANFFRETE: TIBStringField
      FieldName = 'FRETE'
      Origin = 'ENTRADA_TOROSNF.FRETE'
      Size = 30
    end
    object Q_ENTRADANFPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'ENTRADA_TOROSNF.PLACA'
    end
    object Q_ENTRADANFPLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Origin = 'ENTRADA_TOROSNF.PLACA_UF'
      Size = 2
    end
    object Q_ENTRADANFCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'ENTRADA_TOROSNF.CNPJ_CPF'
    end
    object Q_ENTRADANFENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROSNF.ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object Q_ENTRADANFMUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROSNF.MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object Q_ENTRADANFUF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROSNF.UF_TRANSPORTADOR'
      Size = 2
    end
    object Q_ENTRADANFIE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
      Origin = 'ENTRADA_TOROSNF.IE_TRANSPORTADOR'
    end
    object Q_ENTRADANFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADA_TOROSNF.QUANTIDADE'
    end
    object Q_ENTRADANFESPECIE: TIBStringField
      FieldName = 'ESPECIE'
      Origin = 'ENTRADA_TOROSNF.ESPECIE'
    end
    object Q_ENTRADANFMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'ENTRADA_TOROSNF.MARCA'
    end
    object Q_ENTRADANFNUMERO: TFloatField
      FieldName = 'NUMERO'
      Origin = 'ENTRADA_TOROSNF.NUMERO'
    end
    object Q_ENTRADANFPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
      Origin = 'ENTRADA_TOROSNF.PESO_BRUTO'
    end
    object Q_ENTRADANFPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'ENTRADA_TOROSNF.PESO_LIQUIDO'
    end
    object Q_ENTRADANFDADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Origin = 'ENTRADA_TOROSNF.DADOS_ADICIONAIS'
      Size = 200
    end
    object Q_ENTRADANFDATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = 'ENTRADA_TOROSNF.DATA_RECEBIMENTO'
    end
    object Q_ENTRADANFALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
      Origin = 'ENTRADA_TOROSNF.ALIQ_FUNRURAL'
    end
    object Q_ENTRADANFVALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
      Origin = 'ENTRADA_TOROSNF.VALOR_FUNRURAL'
    end
    object Q_ENTRADANFALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ENTRADA_TOROSNF.ALIQ_ICMS'
    end
    object Q_ENTRADANFBASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
      Origin = 'ENTRADA_TOROSNF.BASE_CALCULO_FUNRURAL'
    end
  end
  object DS_SAIDATOROS: TDataSource
    DataSet = TSAIDATOROS
    Left = 80
    Top = 504
  end
  object DSQ_SAIDATOROS: TDataSource
    DataSet = QSAIDATOROS
    Left = 80
    Top = 656
  end
  object TSAIDATOROS: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SAIDA_MADEIRASTOROS'
    Left = 288
    Top = 504
    object TSAIDATOROSCODIGOSAIDA: TIntegerField
      FieldName = 'CODIGOSAIDA'
    end
    object TSAIDATOROSNF_NUMERO: TFloatField
      FieldName = 'NF_NUMERO'
    end
    object TSAIDATOROSNATUREZA_OPERACAO: TIBStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object TSAIDATOROSCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object TSAIDATOROSIE_SUBST_TRIBUTARIO: TIBStringField
      FieldName = 'IE_SUBST_TRIBUTARIO'
      Size = 30
    end
    object TSAIDATOROSRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object TSAIDATOROSCGC: TFloatField
      FieldName = 'CGC'
    end
    object TSAIDATOROSENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object TSAIDATOROSBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TSAIDATOROSCEP: TIBStringField
      FieldName = 'CEP'
      Size = 4
    end
    object TSAIDATOROSMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object TSAIDATOROSTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 11
    end
    object TSAIDATOROSUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object TSAIDATOROSINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
    end
    object TSAIDATOROSDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object TSAIDATOROSDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object TSAIDATOROSHORA_SAIDA: TIBStringField
      FieldName = 'HORA_SAIDA'
      Size = 8
    end
    object TSAIDATOROSCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TSAIDATOROSBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
    end
    object TSAIDATOROSVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object TSAIDATOROSBASE_CALCULO_ICMS_SUBST: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUBST'
    end
    object TSAIDATOROSVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object TSAIDATOROSVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object TSAIDATOROSVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object TSAIDATOROSOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object TSAIDATOROSVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object TSAIDATOROSVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object TSAIDATOROSVALOR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
    end
    object TSAIDATOROSNOME_TRANSPORTADOR: TIBStringField
      FieldName = 'NOME_TRANSPORTADOR'
      Size = 80
    end
    object TSAIDATOROSFRETE: TIBStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object TSAIDATOROSPLACA: TIBStringField
      FieldName = 'PLACA'
    end
    object TSAIDATOROSPLACA_UF: TIBStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object TSAIDATOROSCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
    end
    object TSAIDATOROSENDERECO_TRANSPORTADOR: TIBStringField
      FieldName = 'ENDERECO_TRANSPORTADOR'
      Size = 50
    end
    object TSAIDATOROSMUNICIPIO_TRANSPORTADOR: TIBStringField
      FieldName = 'MUNICIPIO_TRANSPORTADOR'
      Size = 30
    end
    object TSAIDATOROSUF_TRANSPORTADOR: TIBStringField
      FieldName = 'UF_TRANSPORTADOR'
      Size = 2
    end
    object TSAIDATOROSIE_TRANSPORTADOR: TIBStringField
      FieldName = 'IE_TRANSPORTADOR'
    end
    object TSAIDATOROSQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TSAIDATOROSESPECIE: TIBStringField
      FieldName = 'ESPECIE'
    end
    object TSAIDATOROSMARCA: TIBStringField
      FieldName = 'MARCA'
    end
    object TSAIDATOROSNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object TSAIDATOROSPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object TSAIDATOROSPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object TSAIDATOROSDADOS_ADICIONAIS: TIBStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 200
    end
    object TSAIDATOROSDATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object TSAIDATOROSALIQ_FUNRURAL: TFloatField
      FieldName = 'ALIQ_FUNRURAL'
    end
    object TSAIDATOROSVALOR_FUNRURAL: TFloatField
      FieldName = 'VALOR_FUNRURAL'
    end
    object TSAIDATOROSALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object TSAIDATOROSBASE_CALCULO_FUNRURAL: TFloatField
      FieldName = 'BASE_CALCULO_FUNRURAL'
    end
  end
  object QSAIDATOROS: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SAIDA_MADEIRAS_DISCRIMINACAO1')
    Left = 288
    Top = 656
    object QSAIDATOROSCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.CODDISCRIMINACAO'
    end
    object QSAIDATOROSCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.CODIGOFORNECEDOR'
    end
    object QSAIDATOROSESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.ESSENCIA'
      Size = 30
    end
    object QSAIDATOROSUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.UNIDADE'
      Size = 5
    end
    object QSAIDATOROSQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.QUANTIDADE'
    end
    object QSAIDATOROSVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.VALUNITARIO'
    end
    object QSAIDATOROSVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.VALTOTAL'
    end
    object QSAIDATOROSALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.ALIQICMS'
    end
    object QSAIDATOROSCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.CODIGOPRODUTO'
    end
    object QSAIDATOROSSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.SITUACAO_TRIBUTARIA'
    end
    object QSAIDATOROSTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.TOTALPRODUTO'
    end
    object QSAIDATOROSDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.DATALANCAMENTO'
    end
    object QSAIDATOROSNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.NFNUMERO'
    end
    object QSAIDATOROSESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.ESSENCIATIPO'
      Size = 30
    end
    object QSAIDATOROSCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.CODIGOESSENCIA'
    end
    object QSAIDATOROSFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.FORNECEDOR'
      Size = 50
    end
    object QSAIDATOROSCPF: TFloatField
      FieldName = 'CPF'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.CPF'
      Required = True
    end
    object QSAIDATOROSINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO1.INSCRICAO'
    end
  end
  object TSAIDATOROSDISCRIMINACAO: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SAIDA_MADEIRAS_DISCRIMINACAO1'
    Left = 288
    Top = 576
    object TSAIDATOROSDISCRIMINACAOCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TSAIDATOROSDISCRIMINACAOCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TSAIDATOROSDISCRIMINACAOESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TSAIDATOROSDISCRIMINACAOUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TSAIDATOROSDISCRIMINACAOQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TSAIDATOROSDISCRIMINACAOVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
    end
    object TSAIDATOROSDISCRIMINACAOVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object TSAIDATOROSDISCRIMINACAOALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object TSAIDATOROSDISCRIMINACAOCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TSAIDATOROSDISCRIMINACAOSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TSAIDATOROSDISCRIMINACAOTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TSAIDATOROSDISCRIMINACAODATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TSAIDATOROSDISCRIMINACAONFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TSAIDATOROSDISCRIMINACAOESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TSAIDATOROSDISCRIMINACAOCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TSAIDATOROSDISCRIMINACAOFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TSAIDATOROSDISCRIMINACAOCPF: TFloatField
      FieldName = 'CPF'
    end
    object TSAIDATOROSDISCRIMINACAOINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
  end
  object DS_SAIDATOROSDISCRIMINACAO: TDataSource
    DataSet = TSAIDATOROSDISCRIMINACAO
    Left = 88
    Top = 576
  end
  object DS_SAIDATOROS1: TDataSource
    Left = 488
    Top = 504
  end
  object TSAIDATOROS1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SAIDA_MADEIRAS_DISCRIMINACAO1'
    Left = 648
    Top = 504
  end
  object TROMANEIOSERRADA: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODEMPRESA'
        DataType = ftFloat
      end
      item
        Name = 'NF'
        DataType = ftFloat
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'EXPESSURA'
        DataType = ftFloat
      end
      item
        Name = 'TOTALM3'
        DataType = ftFloat
      end
      item
        Name = 'VLUNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'VLTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'CODLANCAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'CODESSENCIA'
        DataType = ftFloat
      end
      item
        Name = 'CODPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CODSUBPRODUTO'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'ROMANEIO_SERRADA'
    Left = 248
    Top = 400
    object TROMANEIOSERRADACODEMPRESA: TFloatField
      FieldName = 'CODEMPRESA'
    end
    object TROMANEIOSERRADANF: TFloatField
      FieldName = 'NF'
    end
    object TROMANEIOSERRADADATA: TDateTimeField
      FieldName = 'DATA'
    end
    object TROMANEIOSERRADAPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object TROMANEIOSERRADAESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TROMANEIOSERRADAQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TROMANEIOSERRADACOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADALARGURA: TFloatField
      FieldName = 'LARGURA'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADAEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADATOTALM3: TFloatField
      FieldName = 'TOTALM3'
      DisplayFormat = '0.0000'
    end
    object TROMANEIOSERRADAVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADAVLTOTAL: TFloatField
      FieldName = 'VLTOTAL'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADACODLANCAMENTO: TIntegerField
      FieldName = 'CODLANCAMENTO'
    end
    object TROMANEIOSERRADACODESSENCIA: TFloatField
      FieldName = 'CODESSENCIA'
    end
    object TROMANEIOSERRADACODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
    end
    object TROMANEIOSERRADAUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 8
    end
    object TROMANEIOSERRADACODSUBPRODUTO: TFloatField
      FieldName = 'CODSUBPRODUTO'
    end
  end
  object DS_ROMANEIOSERRADA: TDataSource
    DataSet = TROMANEIOSERRADA
    Left = 88
    Top = 400
  end
  object DSTSUBPRODUTOS: TDataSource
    DataSet = TSUBPRODUTOS
    Left = 88
    Top = 280
  end
  object TSUBPRODUTOS: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'GRAUIND'
        DataType = ftInteger
      end
      item
        Name = 'NOMEGRAU'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'SUBPRODUTO'
        Fields = 'NOMEGRAU'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'SUBPRODUTO'
    Left = 232
    Top = 280
    object TSUBPRODUTOSGRAUIND: TIntegerField
      FieldName = 'GRAUIND'
    end
    object TSUBPRODUTOSNOMEGRAU: TIBStringField
      FieldName = 'NOMEGRAU'
      Size = 50
    end
  end
  object DSQSUBPRODUTOS: TDataSource
    DataSet = QSUBPRODUTOS
    Left = 88
    Top = 216
  end
  object QSUBPRODUTOS: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SUBPRODUTO')
    Left = 232
    Top = 216
    object QSUBPRODUTOSGRAUIND: TIntegerField
      FieldName = 'GRAUIND'
      Origin = 'SUBPRODUTO.GRAUIND'
    end
    object QSUBPRODUTOSNOMEGRAU: TIBStringField
      FieldName = 'NOMEGRAU'
      Origin = 'SUBPRODUTO.NOMEGRAU'
      Size = 50
    end
  end
  object DS_QROMANEIOSERRADODISC: TDataSource
    DataSet = QROMANEIOSERRADADISC
    Left = 488
    Top = 280
  end
  object QROMANEIOSERRADADISC: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ROMANEIO_SERRADA')
    Left = 608
    Top = 344
    object QROMANEIOSERRADADISCCODEMPRESA: TFloatField
      FieldName = 'CODEMPRESA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODEMPRESA'
    end
    object QROMANEIOSERRADADISCNF: TFloatField
      FieldName = 'NF'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.NF'
    end
    object QROMANEIOSERRADADISCDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.DATA'
    end
    object QROMANEIOSERRADADISCPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.PRODUTO'
      Size = 30
    end
    object QROMANEIOSERRADADISCESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.ESSENCIA'
      Size = 30
    end
    object QROMANEIOSERRADADISCQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.QUANTIDADE'
    end
    object QROMANEIOSERRADADISCCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.COMPRIMENTO'
    end
    object QROMANEIOSERRADADISCLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.LARGURA'
    end
    object QROMANEIOSERRADADISCEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.EXPESSURA'
    end
    object QROMANEIOSERRADADISCTOTALM3: TFloatField
      FieldName = 'TOTALM3'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.TOTALM3'
    end
    object QROMANEIOSERRADADISCVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.VLUNITARIO'
    end
    object QROMANEIOSERRADADISCVLTOTAL: TFloatField
      FieldName = 'VLTOTAL'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.VLTOTAL'
    end
    object QROMANEIOSERRADADISCCODLANCAMENTO: TIntegerField
      FieldName = 'CODLANCAMENTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODLANCAMENTO'
    end
    object QROMANEIOSERRADADISCCODESSENCIA: TFloatField
      FieldName = 'CODESSENCIA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODESSENCIA'
    end
    object QROMANEIOSERRADADISCCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODPRODUTO'
    end
    object QROMANEIOSERRADADISCUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.UNIDADE'
      Size = 8
    end
    object QROMANEIOSERRADADISCCODSUBPRODUTO: TFloatField
      FieldName = 'CODSUBPRODUTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODSUBPRODUTO'
    end
  end
  object DS_ROMANEIOTORO: TDataSource
    DataSet = TROMANEIOTORO
    Left = 88
    Top = 144
  end
  object TROMANEIOTORO: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ROMANEIO_TORO'
    Left = 232
    Top = 144
    object TROMANEIOTOROCODEMPRESA: TFloatField
      FieldName = 'CODEMPRESA'
    end
    object TROMANEIOTORONF: TFloatField
      FieldName = 'NF'
    end
    object TROMANEIOTORODATA: TDateTimeField
      FieldName = 'DATA'
    end
    object TROMANEIOTOROESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TROMANEIOTOROQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TROMANEIOTOROCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '0.00'
    end
    object TROMANEIOTOROLARGURA: TFloatField
      FieldName = 'LARGURA'
      DisplayFormat = '0.00'
    end
    object TROMANEIOTOROTOTALM3: TFloatField
      FieldName = 'TOTALM3'
      DisplayFormat = '0.0000'
    end
    object TROMANEIOTOROVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      DisplayFormat = '0.00'
    end
    object TROMANEIOTOROVLTOTAL: TFloatField
      FieldName = 'VLTOTAL'
      DisplayFormat = '0.00'
    end
    object TROMANEIOTOROCODLANCAMENTO: TIntegerField
      FieldName = 'CODLANCAMENTO'
    end
    object TROMANEIOTOROCODESSENCIA: TFloatField
      FieldName = 'CODESSENCIA'
    end
    object TROMANEIOTOROUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 8
    end
    object TROMANEIOTOROCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
    end
  end
  object QROMANEIOTORO: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ROMANEIO_TORO')
    Left = 504
    Top = 136
    object QROMANEIOTOROCODEMPRESA: TFloatField
      FieldName = 'CODEMPRESA'
      Origin = 'ROMANEIO_TORO.CODEMPRESA'
    end
    object QROMANEIOTORONF: TFloatField
      FieldName = 'NF'
      Origin = 'ROMANEIO_TORO.NF'
    end
    object QROMANEIOTORODATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'ROMANEIO_TORO.DATA'
    end
    object QROMANEIOTOROESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ROMANEIO_TORO.ESSENCIA'
      Size = 30
    end
    object QROMANEIOTOROQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ROMANEIO_TORO.QUANTIDADE'
    end
    object QROMANEIOTOROCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = 'ROMANEIO_TORO.COMPRIMENTO'
    end
    object QROMANEIOTOROLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = 'ROMANEIO_TORO.LARGURA'
    end
    object QROMANEIOTOROTOTALM3: TFloatField
      FieldName = 'TOTALM3'
      Origin = 'ROMANEIO_TORO.TOTALM3'
    end
    object QROMANEIOTOROVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      Origin = 'ROMANEIO_TORO.VLUNITARIO'
    end
    object QROMANEIOTOROVLTOTAL: TFloatField
      FieldName = 'VLTOTAL'
      Origin = 'ROMANEIO_TORO.VLTOTAL'
    end
    object QROMANEIOTOROCODLANCAMENTO: TIntegerField
      FieldName = 'CODLANCAMENTO'
      Origin = 'ROMANEIO_TORO.CODLANCAMENTO'
    end
    object QROMANEIOTOROCODESSENCIA: TFloatField
      FieldName = 'CODESSENCIA'
      Origin = 'ROMANEIO_TORO.CODESSENCIA'
    end
    object QROMANEIOTOROUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ROMANEIO_TORO.UNIDADE'
      Size = 8
    end
    object QROMANEIOTOROCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
      Origin = 'ROMANEIO_TORO.CODPRODUTO'
    end
  end
  object DSQ_ROMANEIOTORO: TDataSource
    DataSet = QROMANEIOTORO
    Left = 384
    Top = 136
  end
end
