object SrvForm: TSrvForm
  Left = 525
  Top = 215
  Caption = 'HMI Tracer'
  ClientHeight = 493
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 382
    Width = 825
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clGray
    ParentColor = False
    ExplicitTop = 381
    ExplicitWidth = 954
  end
  object Splitter2: TSplitter
    Left = 583
    Top = 0
    Height = 382
    Align = alRight
    Color = clGray
    ParentColor = False
    ExplicitLeft = 612
    ExplicitTop = 41
    ExplicitHeight = 341
  end
  object VT: TVirtualStringTree
    Left = 0
    Top = 0
    Width = 583
    Height = 382
    Align = alClient
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.Options = [hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
    Images = Images
    TabOrder = 0
    OnEditing = VTEditing
    OnFreeNode = VTFreeNode
    OnGetText = VTGetText
    OnGetImageIndex = VTGetImageIndex
    OnNewText = VTNewText
    Columns = <
      item
        Position = 0
        Width = 201
      end
      item
        Alignment = taCenter
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coShowDropMark, coVisible, coAllowFocus, coEditable]
        Position = 1
        Width = 35
        WideText = 'R/W'
      end
      item
        Position = 2
        Width = 119
        WideText = 'Address'
      end
      item
        Position = 3
        Width = 61
        WideText = 'Type'
      end
      item
        Position = 4
        Width = 64
        WideText = 'Elements'
      end
      item
        Position = 5
        Width = 94
        WideText = 'Tag Size (bytes)'
      end>
  end
  object RT: TVirtualStringTree
    Left = 586
    Top = 0
    Width = 239
    Height = 382
    Align = alRight
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.Options = [hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
    Images = Images
    TabOrder = 1
    OnFreeNode = RTFreeNode
    OnGetText = RTGetText
    OnGetImageIndex = RTGetImageIndex
    Columns = <
      item
        Position = 0
        Width = 121
        WideText = 'Resources'
      end
      item
        Position = 1
        Width = 108
        WideText = 'Size needed (bytes)'
      end>
  end
  object SB: TStatusBar
    Left = 0
    Top = 474
    Width = 825
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Stopped'
        Width = 160
      end
      item
        Text = 'Clients connected : 0'
        Width = 500
      end>
    ParentFont = True
    UseSystemFont = False
  end
  object Log: TMemo
    Left = 0
    Top = 385
    Width = 825
    Height = 89
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Images: TImageList
    Left = 516
    Top = 196
    Bitmap = {
      494C01010700F000EC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000EBEEEF00B7C9
      D40098B3C400789CB4005080A0007896B40083ABC900B1C9D400EBEEEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1A09D00A1A09D00A1A09D00A1A0
      9D00A1A09D00A1A09D00A1A09D00A1A09D00A1A09D00A1A09D00A1A09D00A1A0
      9D00A1A09D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000098B3C500599D
      C30070B8D00080D0E00050B8E0003098D0002088C0003B86B40098AFC5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCBCB900F1EBDA00F2EBDA00F2EB
      DA00F2EBDA00F2EBDA00F2EBDA00F1EBDB00F2ECDB00F2ECDB00F2ECDB00F2EC
      DB00A1A09D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A8EB40040C0
      F00080E0F00090E8F00050C0E00020A8E0000090D0000088D0004A86A5000000
      0000000000000000000000000000000000007088900070788000607070005060
      6000405050003038400020283000102020001010200010102000101020001010
      200010102000101020001010200000000000BCBCB900F2ECDB00D5C37800F2EC
      DB00D5C37800F2ECDB00D5C37800F2ECDB00D5C37800F4EEDE00F4EEDB00F3ED
      DC00A1A09D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006098C00040C8
      F00080E0F00090E8F00050C0E00020A8E0000090D0000088D0004080B000F9F8
      F800F9F8F800F9F8F800F9F8F800F9F8F80070889000A0E0F00070D0F00050B8
      E00030B0E00030A8E00020A0D0002098C0002090C0002080B0002080B0001080
      B0002078A000207090001020200000000000BCBCB900F6F0E300F6F0E200F6F0
      E200F6F0E200F6F0E200F6F0E200F6F0E200F6F0E200F6F0E200F5F0E000F6F0
      E200A1A09D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040904000CAEACA0090B8D00040C8
      F00080E0F00090E8F00050C0E00020A8E0000090D0000088D0004088B0008070
      60006048300060483000604830006048300080889000B0E8F00090E8FF0080E0
      FF0070D8FF0070D0F00060C8F00050C0F00040B8F00030A8F00030A8E0002098
      E0001090D0002078A0002028300000000000BCBCB900F8F4E900D5C37800F8F4
      E800D5C37800F8F4E800D5C37800F8F4E800D5C37800F8F4E800D5C37800F8F4
      E800A1A09D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004098400040984000B0D8C00080D8
      FF0080E0F00090E8F00050C0E00020A8E0000090D0000088D0004088B000FFE8
      E000C0A89000F0D0C000FFC8B000604830008090A000B0E8F000A0E8FF0090E8
      FF0080E0FF0070D8FF0070D0F00060C8F00050C0F00040B8F00030A8F00030A0
      E0002098E0001080B0003038400000000000BCBCB900FBF8EF00FAF7EC00FCF9
      F000FCF9F000FCF9F000FCF9F000FCF9F000FCF9F000FCF9F000FCF9F000FCF9
      F000A1A09D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030C0300030C8300040984000B0E8
      D00080E0F00090E8F00050C0E00020A8E0000090D0000088D0004088B000FFE8
      E000C0A8A000FFE8E000F0C8B000604830008090A000B0F0FF00B0F0FF00A0E8
      FF0090E0FF0080E0FF0070D8FF0070D0F00060C8F00050C0F00040B0F00030A8
      F00020A0E0001080B0004040500000000000BCBCB900FCF9F100D5C37800FCF9
      F000D5C37800FCF9F000D5C37800FCF9F000CABB7C00B8B7AE00A09D8C00A1A0
      97009B9A9300E1E1DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080F0800050E0500030C030004098
      400080E0F00090E0F00040B8E00010A0E0000088D0000088D0004088B000D0C0
      B000C0A8A000C0A89000C0A89000604830008098A000C0F0FF00B0F0F000A0F0
      FF00A0E8FF0090E0FF0080E0FF0070D8FF0060D0F00060C8F00050B8F00040B0
      F00030A8E0001088C0005050600000000000BFBFBC00FCF9F100FCF9F100FCF9
      F000FCF9F100FCF9F000FCF9F100D2D0C7009B9A9100C7C5BC00DCD9D000DDDA
      D000CBC9BF00ADABA200C3C3BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080F8800080F8800050B05000D0F0
      F000A0F0FF00C0F8FF00A0E8F00080D8F00050C0E00010A0E0004090B000FFE8
      E000C0A8A000F0D8C000F0C8B000604830008098A000C0F0FF00B0F0FF00B0F0
      FF00A0E8FF0090E8FF0090E0FF0080E0FF0070D8FF0060D0F00060C8F00050B8
      F00030A8E0001090C0005060700000000000C2C2BF00E0D7B600DDCF9500D9CA
      8A00D6C58000D2C17600C5B87C00ACABA200DEDCD400E9E7DF00E7E5DC00E5E2
      D900E3E0D600E0DDD300B5B3AA00D5D5D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000060C0600060B86000D0E8E000E0F8
      FF00E0FFFF00E0FFFF00D0FFFF00D0FFFF00C0F8FF00A0F0FF0070B0D000FFF0
      E000C0A8A000FFF0E000F0C8B0006048300090A0A000C0F0FF00B0F0FF00B0F0
      FF00B0F0F000A0F0FF0090E8FF0090E0FF0080E0FF0070D0FF0060D0F00050C0
      F00050B8F0002098D0006070800000000000CACAC700DED2A300DBCB8900D9CA
      8A00D5C37800D3C07000ADA68400D0CFC700EEECE500ECEAE200C9C3B700E7E5
      DC00E5E2D900E3E0D600D3D1C700ABA9A2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000070C87000E5F2E500D2E1E100A0D0
      E000B0E8F000D0F8FF00D0F8FF00B0F0F00090D8F00080C0E000A0C0D000D0C0
      B000C0A8A000C0A8A000C0A890006048300090A0B000C0F0FF00C0F0FF00C0F0
      FF00C0F0FF00B0F0FF00B0F0FF00A0E8FF0090E8FF0090E0FF0080D8FF0070D0
      FF0070C8F00060C0F0006070800000000000CACAC700CACAC700C6C6C300BFBF
      BC00BFBFBC00BFBFBC00A09F9700E5E4DD00F0EEE700C9C3B700A1958200A195
      8200A1958200D2CDC100E3E0D6009C9A91000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F8FD00C7DC
      E300A5C3D20096BBD20070A0C00090B8D000A0C8D000C0D0E000F0F8F000FFF0
      F000C0A8A000F0E0D000F0D0C0006048300090A0B00090A0B00090A0B00090A0
      B00090A0B00090A0B00090A0A0009098A0008098A0008098A0008098A0008098
      A0008098A0008098A000BDC3C300000000000000000000000000000000000000
      00000000000000000000A6A69E00E7E5DF00F2F0EA00F0EEE700A1958200ECEA
      E200E9E7DF00E7E5DC00E5E2D9009C9B92000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0C8C000FFFFFF00FFFFFF00D0C0B000FFF8FF00FFF0
      F000C0B0A000FFF0F000F0E0D0006048300090A8B000B0E8F000B0F0FF00B0F0
      FF00B0F0F00090E0F00090A0B000B5C7C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBBB600D2D1CA00F4F2EC00F2F0EA00A1958200EEEC
      E500ECEAE200E9E7DF00D7D6CD00ABA9A2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0908000B0806000B0806000B0806000B0786000B078
      6000B0786000B0786000A0786000A0786000D4DEDF0090A8B00090A8B00090A8
      B00090A8B00090A8B000D4D7D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8E8E60099988F00E6E4DE00F4F2EC00A1958200F0EE
      E700EEECE500EBE9E100B8B7AE00D6D6D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0908000E0C0B000E0C0B000B0806000E0C0B000E0C0
      B000B0786000E0B8A000D0B8A000A07860000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D2CF009A999100CFCEC600CAC4B900EBE9
      E300D5D4CC00B1B0A700C3C3BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0988000C0907000C0887000B0887000B0806000B080
      6000B0806000B0806000B0806000B08060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEDEA00B8B8B200A5A49C00A09F
      9700B5B4AE00E1E1DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8EE
      E300000000000000000000000000000000000000000060483000604830006048
      3000604830006048300060483000604830006048300060483000604830000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8EEE3009933
      0000F8EEE300000000000000000000000000B0A09000FFF8F000E0E0E000E0D8
      D000E0D8D000E0D0C000E0C8C000D0C0B000D0C0B000D0B8A000604830000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000919090007B797900919090000000
      00000000000000000000BBBCBC00BBBCBC00B4B5B5009B9C9C009B9C9C009FA0
      A000A0A0A0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8EEE300B5633500D89B
      5B0099330000F8EEE3000000000000000000B0A09000FFFFFF00D0B8B000D0B8
      A000D0B0A000B0A0900060483000604830006048300060483000604830006048
      3000604830006048300060483000604830006363630063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      630063636300636363006363630063636300C0C0C00094949400B0B0B0000000
      00000000000000000000E7E7E700C8C9C900C4C6C600B9BABA00AAABAB00A0A0
      A000D9D9D9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000097806F0097806F00D89B5B00FFCD9900E9B4
      7C00D89B5B0099330000F8EEE30000000000B0A09000FFFFFF00FFFFFF00FFF8
      F000FFF0F000B0A09000FFF8F000E0E0E000E0D8D000E0D8D000E0D0C000E0C8
      C000D0C0B000D0C0B000D0B8A0006048300063636300B0B0B000B0B0B000B0B0
      B000B0B0B000B0B0B0006363630000FF0000B0B0B0006363630000FF0000B0B0
      B0006363630000FF0000B0B0B00063636300AEAEAE00BFBFBF00A5A5A5000000
      000000000000000000000000000000000000B9BABA008A8A8A009F9F9F00E9E9
      E900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000097806F0000000000F8EEE300D89B5B00FFCD
      9900E9B47C00D89B5B0099330000F8EEE300C0A8A000FFFFFF00E0C8C000E0C8
      C000D0C0B000B0A09000FFFFFF00D0B8B000D0B8A000D0B0A000FFE8E000C090
      8000C0908000C0908000D0B8B0006048300063636300B0B0B00000000000B0B0
      B00000000000B0B0B00063636300B0B0B000B0B0B00063636300B0B0B000B0B0
      B00063636300B0B0B000B0B0B00063636300B1B1B100D1D1D100ABABAB00DEDF
      DF00C0C1C100BEBFBF00BBBCBC00B8B9B900B5B6B600AAAAAA00A8A8A800A6A6
      A600A4A4A400A2A2A200A0A0A000C6C6C6000000000000000000000000000000
      000000000000000000000000000097806F000000000000000000F8EEE300D89B
      5B00FFCD9900C9734300F8EEE30000000000C0B0A000FFFFFF00B0A090006048
      300060483000B0A09000FFFFFF00FFFFFF00FFF8F000FFF0F000FFF0E000FFE8
      E000FFE0D000FFD8D000D0C0B0006048300063636300B0B0B000B0B0B000B0B0
      B000B0B0B000B0B0B0006363630000FF0000B0B0B0006363630000FF0000B0B0
      B0006363630000FF0000B0B0B00063636300B0B0B000D1D1D100ABABAB00CDCF
      CF00CDCFCF00CDCECF00CCCECE00CBCDCD00CACCCC00C7C9C900C6C9C900C6C9
      C900C5C8C800C5C8C800C4C7C700A0A0A000000000000000000000000000D8EE
      F60000000000000000000000000097806F00000000000000000000000000F7DE
      E200D89B5B00F8EEE3000000000000000000D0B0A000FFFFFF00B0A09000FFF8
      F000E0E0E000C0A8A000FFFFFF00E0C8C000E0C8C000D0C0B000FFF8F000C0A8
      9000C0A89000C0A09000E0D0C0006048300063636300B0B0B00000FF000000FF
      000000FF0000B0B0B00063636300B0B0B000B0B0B00063636300B0B0B000B0B0
      B00063636300B0B0B000B0B0B00063636300B0B0B000D1D1D100ABABAB00CED0
      D000ADAEAE00860000008B060000870000008B0000009D130000B9180000BA19
      0000BF190000AF1F0000C5C8C800A1A1A1000000000000000000D8EEF6000E78
      9E00D8EEF600000000000000000097806F000000000000000000FDECFD008D2D
      8C00F7DEE200000000000000000000000000D0B8A000FFFFFF00B0A09000FFFF
      FF00D0B8B000C0B0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      F000FFF0F000FFE8E000E0D8D0006048300063636300B0B0B00000FF000000FF
      000000FF0000B0B0B0006363630000FF0000B0B0B0006363630000FF0000B0B0
      B0006363630000FF0000B0B0B00063636300B1B1B100D1D1D100ACACAC00CFD1
      D100ABACAC009B271D009C2B1F009B130400A8130000C5291000CF503A00D44A
      3100DC503700CB3E1800C4C7C700A3A3A30000000000D8EEF6000E789E001CB5
      ED000E789E00D8EEF6000000000097806F0000000000FDECFD00B33CB200DC70
      DB008D2D8C00FDECFD000000000000000000F0A89000F0A88000B0A09000FFFF
      FF00FFFFFF00D0B0A000FFFFFF00E0C8C000E0C8C000E0C8C000FFFFFF00D0B0
      A000D0B0A000D0A8A000E0E0E0006048300063636300B0B0B000B0B0B000B0B0
      B000B0B0B000B0B0B00063636300B0B0B000B0B0B00063636300B0B0B000B0B0
      B00063636300B0B0B000B0B0B0006363630099BFA60000F2480062C28200CFD1
      D100A9A9A900A53F35009F2A1F00A3120200B2150000CF493200D46B5A00DA65
      4D00DD6C5600D75A3C00C5C8C800A5A5A500D8EEF6000E789E004FCBF10034C0
      EF002FBEEF000C62810097806F0097806F0097806F00D96CD800FAADFA00FB98
      FA00DC70DB008D2D8C00FDECFD0000000000F0A89000FFC0A000C0A8A000FFFF
      FF00E0C8C000D0B8A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF0F0006048300063636300B0B0B00000FFFF0000FF
      FF0000FFFF00B0B0B0006363630000FF0000B0B0B0006363630000FF0000B0B0
      B0006363630000FF0000B0B0B00063636300AEAEAE00484443007B797900D1D2
      D200A3A3A300AC463D00A11D1000AD110000BE180000D76B5800D8847400DC7D
      6900DE837200DD755E00C7CACA00ABABAB0014AAE10085E0F4006BD6F40050CB
      F10034C0F0001CB5ED000C628100D8EEF60000000000FDECFD00D365D200FAAD
      FA00FB98FA00DC70DB008D2D8C00FDECFD00F0A89000F0A88000C0B0A000FFFF
      FF00FFFFFF00F0A89000F0A88000F0A08000F0A07000E0987000E0906000E088
      6000E0805000E0784000E0784000D060300063636300B0B0B00000FFFF0000FF
      FF0000FFFF00B0B0B00063636300B0B0B000B0B0B00063636300B0B0B000B0B0
      B00063636300B0B0B000B0B0B00063636300D8D8D800BEBEBE00CDCDCD00D0D2
      D200A2A2A200A82D2300AB150600C21B0000D51A0000DC8F7F00DB998800DC98
      8200DA9E8B00DC8F7600C7CACA00ADAEAE00D8EEF60014AAE10085E0F4006BD6
      F40050CBF10034C0F0001CB5ED000C628100D8EEF60000000000FDECFD00D365
      D200FAADFA00D365D200FDECFD00000000000000000000000000D0B0A000FFFF
      FF00E0C8C000F0A89000FFC0A000FFC0A000FFB89000FFB89000FFB09000FFA8
      8000F0A07000F0A07000F0987000D068300063636300B0B0B000B0B0B000B0B0
      B000B0B0B000B0B0B0006363630000FF0000B0B0B0006363630000FF0000B0B0
      B0006363630000FF0000B0B0B00063636300000000000000000000000000D1D2
      D300A0A0A000A8100200B9140000D0230000E2190000D3B4AC00D5ADA400D4B3
      A800D2B9AE00D6A49400C8CACB00B0B1B10000000000D8EEF60014AAE10085E0
      F4006BD6F40050CBF10034C0EF001CB5ED000C628100D8EEF60000000000FDEC
      FD00D365D200FDECFD0000000000000000000000000000000000D0B8A000FFFF
      FF00FFFFFF00F0A89000F0A88000F0A08000F0A08000E0987000E0906000E088
      6000E0885000E0805000E0784000E07840006363630063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      630063636300636363006363630063636300000000000000000000000000D1D2
      D300A0A0A000AD000000C40E0000DA110000F2150000DBA58900DF977400E096
      7100E2936900E2825800C9CBCB00B2B3B3000000000000000000D8EEF60014AA
      E10085E0F4006BD6F40050CBF1001798C800D8EEF60000000000000000000000
      0000FDECFD000000000000000000000000000000000000000000F0A89000F0A8
      8000F0A08000F0A07000E0987000E0906000E0886000E0805000E0784000E078
      4000D06030000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1D2
      D300A0A0A000A0A0A000A0A0A000A2A2A200A4A4A400ADAEAE00B0B0B000B2B3
      B300B5B6B600B8B9B900C9CBCC00B5B6B600000000000000000000000000D8EE
      F60014AAE10085E0F4001798C800D8EEF6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0A89000FFC0
      A000FFC0A000FFB89000FFB89000FFB09000FFA88000F0A07000F0A07000F098
      7000D06830000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E8
      E800D1D2D300D1D2D300D1D2D300D0D2D200D0D1D200CED0D000CDCFCF00CDCF
      CF00CCCECE00CBCDCD00CACCCC00D5D5D5000000000000000000000000000000
      0000D8EEF60014AAE100D8EEF600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0A89000F0A8
      8000F0A08000F0A08000E0987000E0906000E0886000E0885000E0805000E078
      4000E0784000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00C01FFFFF00070000C01FFFFF00070000
      C01F000100070000C00000010007000000000001000700000000000100070000
      0000000100030000000000010001000000000001000000000000000100000000
      0000000100000000C0000001FC000000FC0000FFFC000000FC0001FFFC000000
      FC00FFFFFE010000FC00FFFFFF030000FFFFFFFFFFEF801FFFFFFFFFFFC7001F
      FFFF1C07FF83000000001C07FE01000000001F0FFE80000000000000FEC10000
      00000000EEE3000000000000C6C7000000000000828300000000000000010000
      0000000000800000000000000041C0000000E0008023C0000000E000C077C007
      FFFFE000E0FFC007FFFFE000F1FFC00700000000000000000000000000000000
      000000000000}
  end
  object TimLog: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimLogTimer
    Left = 24
    Top = 400
  end
  object MainMenu1: TMainMenu
    Left = 336
    Top = 168
    object File1: TMenuItem
      Caption = '&Server'
      object StartMItem: TMenuItem
        Caption = 'Start'
        OnClick = StartMItemClick
      end
      object SettingMItem: TMenuItem
        Caption = 'IP Setting'
        OnClick = SettingMItemClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Shutdown'
        OnClick = Exit1Click
      end
    end
    object Log1: TMenuItem
      Caption = '&Log'
      object Clear1: TMenuItem
        Caption = 'Clear'
        OnClick = Clear1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FreezeMItem: TMenuItem
        Caption = 'Freeze'
        OnClick = FreezeMItemClick
      end
      object FlushServerwueue1: TMenuItem
        Caption = 'Flush Server'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Detail1: TMenuItem
        Caption = 'Detail'
        object BasicMItem: TMenuItem
          Caption = 'Basic'
          Checked = True
          GroupIndex = 1
          RadioItem = True
          OnClick = BasicMItemClick
        end
        object DetailedMItem: TMenuItem
          Caption = 'Detailed'
          GroupIndex = 1
          RadioItem = True
          OnClick = DetailedMItemClick
        end
        object DebugMItem: TMenuItem
          Caption = 'Debug'
          GroupIndex = 1
          RadioItem = True
          OnClick = DebugMItemClick
        end
      end
    end
    object Report1: TMenuItem
      Caption = '&Report'
      object ReportMItem: TMenuItem
        Caption = 'Create Report'
        OnClick = ReportMItemClick
      end
    end
  end
  object TimTag: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimTagTimer
    Left = 24
    Top = 72
  end
end
