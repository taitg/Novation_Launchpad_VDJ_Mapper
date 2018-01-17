object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Edit'
  ClientHeight = 229
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 6
    Top = 8
    Width = 913
    Height = 218
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 43
      Width = 68
      Height = 13
      Caption = 'Button action:'
    end
    object Label3: TLabel
      Left = 11
      Top = 81
      Width = 76
      Height = 13
      Caption = 'Red LED action:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 108
      Width = 88
      Height = 13
      Caption = 'Amber LED action:'
    end
    object Label4: TLabel
      Left = 11
      Top = 135
      Width = 87
      Height = 13
      Caption = 'Yellow LED action:'
    end
    object Label5: TLabel
      Left = 11
      Top = 162
      Width = 86
      Height = 13
      Caption = 'Green LED action:'
    end
    object Label6: TLabel
      Left = 11
      Top = 12
      Width = 81
      Height = 13
      Caption = 'Selected control:'
    end
    object controlLabel: TLabel
      Left = 115
      Top = 11
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 635
      Top = 12
      Width = 77
      Height = 13
      Caption = 'XML characters:'
    end
    object Edit1: TEdit
      Left = 115
      Top = 159
      Width = 700
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 115
      Top = 78
      Width = 700
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = Edit2Change
    end
    object Edit3: TEdit
      Left = 115
      Top = 105
      Width = 700
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = Edit3Change
    end
    object Edit4: TEdit
      Left = 115
      Top = 132
      Width = 700
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = Edit4Change
    end
    object Edit5: TEdit
      Left = 115
      Top = 40
      Width = 700
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = Edit5Change
    end
    object Button7: TButton
      Left = 868
      Top = 7
      Width = 32
      Height = 25
      Caption = 'and'
      TabOrder = 5
      OnClick = Button7Click
    end
    object Edit6: TEdit
      Left = 739
      Top = 9
      Width = 57
      Height = 21
      TabOrder = 6
      OnChange = Edit6Change
    end
    object Button1: TButton
      Left = 861
      Top = 38
      Width = 41
      Height = 25
      Caption = 'Save'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 861
      Top = 76
      Width = 41
      Height = 25
      Caption = 'Save'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 861
      Top = 103
      Width = 41
      Height = 25
      Caption = 'Save'
      TabOrder = 9
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 861
      Top = 130
      Width = 41
      Height = 25
      Caption = 'Save'
      TabOrder = 10
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 861
      Top = 157
      Width = 41
      Height = 25
      Caption = 'Save'
      TabOrder = 11
      OnClick = Button5Click
    end
    object Button8: TButton
      Left = 839
      Top = 7
      Width = 23
      Height = 25
      Caption = '"'
      TabOrder = 12
      OnClick = Button8Click
    end
    object Button6: TButton
      Left = 810
      Top = 7
      Width = 23
      Height = 25
      Caption = #39
      TabOrder = 13
      OnClick = Button6Click
    end
    object CheckBox1: TCheckBox
      Left = 796
      Top = 188
      Width = 90
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Autosave'
      TabOrder = 14
      OnClick = CheckBox1Click
    end
    object Button9: TButton
      Left = 821
      Top = 42
      Width = 17
      Height = 18
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      TabOrder = 15
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 821
      Top = 81
      Width = 17
      Height = 18
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      TabOrder = 16
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 821
      Top = 108
      Width = 17
      Height = 18
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      TabOrder = 17
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 821
      Top = 135
      Width = 17
      Height = 18
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      TabOrder = 18
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 821
      Top = 161
      Width = 17
      Height = 18
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      TabOrder = 19
      OnClick = Button13Click
    end
  end
end
