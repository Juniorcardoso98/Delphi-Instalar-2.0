object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Instalador RBT'
  ClientHeight = 282
  ClientWidth = 629
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 69
    Width = 117
    Height = 13
    Caption = 'Informe o nome do RBT:'
  end
  object Label2: TLabel
    Left = 8
    Top = 23
    Width = 196
    Height = 13
    Caption = 'Informe o caminho de instala'#231#227'o do RBT:'
  end
  object Label3: TLabel
    Left = 268
    Top = 231
    Width = 3
    Height = 13
  end
  object bicaminho: TEdit
    Left = 8
    Top = 42
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object btnclick: TBitBtn
    Left = 276
    Top = 41
    Width = 37
    Height = 23
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555555555555555555555555555555555555555555555555555555555555
      555555555555555555555555555555555555555FFFFFFFFFF555550000000000
      55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
      B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
      000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
      555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
      55555575FFF75555555555700007555555555557777555555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnclickClick
  end
  object btninstall: TButton
    Left = 268
    Top = 192
    Width = 105
    Height = 33
    Caption = 'Install'
    TabOrder = 2
    OnClick = btninstallClick
  end
  object binome: TEdit
    Left = 8
    Top = 88
    Width = 273
    Height = 21
    TabOrder = 3
  end
  object ProgressBar1: TProgressBar
    Left = 112
    Top = 248
    Width = 401
    Height = 26
    TabOrder = 4
  end
  object OpenDialog1: TOpenDialog
    Left = 528
    Top = 48
  end
end
