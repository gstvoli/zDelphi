object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Controle de discos'
  ClientHeight = 283
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 257
    Align = alTop
    TabOrder = 0
    object gbxControle: TGroupBox
      Left = 1
      Top = 1
      Width = 513
      Height = 50
      Align = alTop
      TabOrder = 0
      object lblBanda: TLabel
        Left = 8
        Top = 5
        Width = 87
        Height = 13
        Caption = 'Selecione a banda'
      end
      object cboBanda: TComboBox
        Left = 8
        Top = 19
        Width = 449
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        Items.Strings = (
          'Engenheiros do Hawaii'
          'Skank'
          'Paralamas do Sucesso'
          'Biquini Cavad'#227'o'
          'Capital Inicial'
          'Ira'
          'Nirvana'
          'Scorpions')
      end
      object btnAdicionar: TBitBtn
        Left = 461
        Top = 18
        Width = 24
        Height = 23
        Glyph.Data = {
          6E040000424D6E04000000000000360000002800000013000000120000000100
          1800000000003804000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFE4E3D7CBC9B7BBB89EB8B398BCBA9ECDCAB6E7E4
          DDFFFFFFFFFFFFFEFEFFFDFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFECEAE19A9B70ADA181CABAA7D8D0B9DBD3BCDACFB9CDB8A4ABA47F9F9C78
          F0EEE9FFFFFFFFFFFFFFFDFFFFFFFF000000FFFFFFFFFFFFFFFFFFC4C4AD908B
          62ECD3CADCECC57AE3824CDC5F48D85E4EDD6287E18DEEEBD2E7D2C5928C5ECC
          CDBAFFFFFFFFFDFFFFFFFF000000FEFFFEFFFFFFC5C5B2A69874FCEBDE64DD6E
          03CB2A17C5320EBA2700B61C12BC2C15C62F06CD2881DE85FFEBDE9E976ECDD0
          BBFFFFFFFFFFFF000000FFFFFFF1F0EB978D60EFE7D659DA6712C7311CB9340F
          B22A4FC460B2DCB52FB54713B12B1DB93112CB2F75DB7CF7E4D6938F64F4F3F0
          FFFFFF000000FFFFFFABA68AD9C5B190E39012CA2E18B82F1AB33506BA37DEF1
          E4FFEBF69AD2A511BB3D1CB3331CBA2F11CA34BDE6A6CBBEACB1B094FFFFFF00
          0000F4F3EEA59A76F6EADC12CD351CBD3114B33022C45408C75BDAF4E4EEE6E4
          97D5AE12CB601CC25013B12D18C13431D045FFE7DF9F9972FAF9F5000000DBDC
          CEB6A889BDEAB011CC2F12B12723BD4A36CB742CD57FD9F0E3EFE5E09DDCBB31
          D48036C76F20B93F16B62C11CD2EE8E7CAAFA887E2E1D8000000D5D4C5C0AF93
          9FE49E07C52844BE54FFFFFFFFFAFFFDF3F8E6EAE3DFE5DCE9E4DEF1E1DEF4E0
          DEECDEDF19B32F0DC931CCE5B1B8AF92D9D8CC000000D7D4C7C0AE90A4E3A10B
          C62829B339D1F0DED5EDE2CCEEDCE4ECE3E4E6DED7E1D7C5DFCCC9DBC5B2D6B3
          12B32810C931D2E7B4B8AD8FDAD9CF000000E2E2D6B3A684D2E9C10DC83017B6
          2910B93822C6660DD26DD8F3E5F1E6E393D8B31AD57423C95C0CB63118B92E15
          C834F3E9D3ACA57FE7E7DF000000FEFFFE9E956FFAE6DE22D13E1BBE3518B12F
          25C04D0DC653DBF0EBF1E6E69AD5AA13C95B24BF4B12AF2E13C12E4CD45AFFE3
          DC989872FFFFFF000000FFFFFFC5BEAABBAE92C1E8B312CD311BBD3317B3310A
          B52AC4ECD4FFF2FF85CF960FB63315B42C1FBD3515CE39DCEAC7B2A987CDCBBB
          FFFFFF000000FFFFFFFBFBFA9A926BE7D6CB8EE38D09CA2F1CBF3316B82D21B4
          3960C56A18B0321AB7301EBE3411CB2FB2E4A3E6D3C59B9973FEFFFDFFFFFF00
          0000FEFFFFFFFFFFF2F0EA8C8757EBD8CCBAEBAE1ED13B09C72B0DC42B07C027
          11C52D04CA262DD544CDECBDE6D2C68A8958F4F2F1FFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFF5F5F298936FBBAA92FDE4D9C4E7BA8CE58F80E48A8DE593DA
          E6C5FEE0DFB5A9889E9775F6F7F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFDC8CAB39B9971B3A882C5B59DC7B6A0C6B59CB1A7819C99
          73D1CFBDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEAE9E1D8D7C6D5D2C3D9D8C9EBE9E4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        TabOrder = 1
        OnClick = btnAdicionarClick
      end
      object btnRemover: TBitBtn
        Left = 486
        Top = 18
        Width = 24
        Height = 23
        Glyph.Data = {
          6E040000424D6E04000000000000360000002800000013000000120000000100
          1800000000003804000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2F0E1DED6DDDBCFE3E2D8FEFDFAFFFF
          FFFFFFFFFDFFFFFEFFFFFFFDFFFFFFFFFFFFFF000000FFFFFFFFFFFFFEFFFFFF
          FFFFFFFFFFD8D6C69E9A74A19F77AFAB85B5AE89ACA8839E9B73AAA585E9E7DF
          FFFFFFFEFFFEFFFEFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFAFAFAA09D
          79A49C7BE9E3C1FFFFC9FFFCC4FBF6C2FFFFC6FFFBC6D4D3B59A8D66BEB8A0FF
          FFFFFFFFFDFFFFFFFFFFFF000000FFFFFFFFFFFFF7F8F68E8656D3CCADFFFBCE
          879CB91D3EC50015C90017CD0020C44460BEBEC4B6FFFFD6B3B08EA09D78FFFF
          FFFEFFFFFEFFFF000000FFFFFFFFFFFF9D9B75D3CDB1EEEBC73251BF0326C90D
          30C41536C11635BF1334C3062CC7022AC97E91B3FEF7CAB9AE8FC1BDA7FFFFFF
          FEFFFF000000FFFFFFD6D8C6A09F75FFF8CF3F59BB0227CA1534BF1036C00F39
          C30E3AC40F38C11234BF1034C0001DCBA7ADB1FDF6D2908B63F9FAF7FFFFFF00
          0000FFFFFF98946BEDE6C691A0B80023CC1235C10F39C40D42D30846DA0A47DC
          0A46DA0E3ECB1037C10C32C21037C5DEDFB6C9C3A4BCB7A2FFFFFF000000EDEE
          E9A99F7BFFFDC3294AC20A31C40028BD0035CC003CDC0049E70049E80046E600
          3DDB0031CD082BC00028C59DA7B3E9E4C59D9C78FFFFFF000000DFDFD6ACA784
          FFFCCC0025BE0529BC97A8DCBCCCE8B7C9E6B5C9E4AFC7E1AEC2DCABBFD3B1BF
          CC445EC30024C76A7CB0F5F1CDA69F79FFFEFE000000DEDED3AEAB85F8F8CB00
          23BE0526BBFFFFFBFFFFF5FFFFECFFFFE6FFFDDDF9F9D6FCF4D4FFF9D198A4C2
          0020C65F71B4F7F3CAA7A27AFBFBF8000000E6E5DDA9A480FFFFCA0E34C10C2F
          C1153BC12852D31F5ADE1C62E71B63E71E61E22056D6214ECA0A30BE0024C784
          90ADF3ECC99D9D76FFFFFF000000FEFDFB9D9772FAF3CC5A74B90229C60F30C1
          073AC90442D70247E20448E60546E30B3FD60E37C80C31BE082AC8BBC4ADE1D8
          B8A6A781FFFFFF000000FFFFFFB3B296C9C0A3DBDBC40D2FC51232C41235C011
          3CC70E41CD1042CE0B3FCC0F38C21435BC0327CB5268B7FDFDCC9D9A74E4E3D7
          FFFFFF000000FFFFFFF4F4EF928F62F2F1CAA9B0BB0021C90D32C31435C01035
          BF1136C11235BF1335C10529C72043C1EEE6BCD9D5BBA29D7DFFFFFFFFFFFF00
          0000FFFFFFFFFFFFD1D0B99F9776FBF8D2B8C1BA0B32C0001CCB062BC9082EC6
          0027CC0018CB4764B7F0EBBBE8E3C689855FF4F5F1FFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFCCCAB0929066E5DCC0FFFFCCC8CEBD768EC27783C3919EB8ED
          EBBCFFFCCAC7C5AA958D69F3F0E7FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFEDEDE39A9C70A9A884C7C39CE7DFB5E7E4B7DCD9B2BEB897A3A1
          77ABAA8AF7F7F6FFFFFFFFFFFEFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE1E2D8CCC8B6BDB8A0BAB59BBFBAA5D2D1C1EDEFE8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        TabOrder = 2
        OnClick = btnRemoverClick
      end
    end
    object lbxResultado: TListBox
      Left = 1
      Top = 51
      Width = 513
      Height = 205
      Align = alClient
      ItemHeight = 13
      TabOrder = 1
      ExplicitLeft = 184
      ExplicitTop = 96
      ExplicitWidth = 121
      ExplicitHeight = 97
    end
  end
  object btnSair: TBitBtn
    Left = 441
    Top = 258
    Width = 72
    Height = 23
    Caption = '&Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
  object btnInformacoes: TBitBtn
    Left = 368
    Top = 258
    Width = 72
    Height = 23
    Caption = '&Informa'#231#245'es'
    TabOrder = 2
    OnClick = btnInformacoesClick
  end
end
