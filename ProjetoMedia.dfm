object TfmPrincipal: TTfmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'M'#233'dia de Notas'
  ClientHeight = 381
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlgeral: TPanel
    Left = 0
    Top = -16
    Width = 289
    Height = 425
    BevelOuter = bvNone
    TabOrder = 0
    object lblNota1: TLabel
      Left = 20
      Top = 36
      Width = 64
      Height = 28
      Caption = 'Nota 1:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI Symbol'
      Font.Style = []
      ParentFont = False
    end
    object lblNota2: TLabel
      Left = 20
      Top = 84
      Width = 64
      Height = 28
      Caption = 'Nota 2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI Symbol'
      Font.Style = []
      ParentFont = False
    end
    object lblNota3: TLabel
      Left = 20
      Top = 132
      Width = 64
      Height = 28
      Caption = 'Nota 3:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI Symbol'
      Font.Style = []
      ParentFont = False
    end
    object lblSituacao: TLabel
      Left = 20
      Top = 336
      Width = 69
      Height = 23
      Caption = 'Situa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI Symbol'
      Font.Style = []
      ParentFont = False
    end
    object lblMediafinal: TLabel
      Left = 20
      Top = 288
      Width = 51
      Height = 23
      Caption = 'Media:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI Symbol'
      Font.Style = []
      ParentFont = False
    end
    object edtNota1: TEdit
      Left = 113
      Top = 40
      Width = 121
      Height = 23
      TabOrder = 0
      OnKeyPress = edtNotaKeyPress
    end
    object edtNota2: TEdit
      Left = 113
      Top = 88
      Width = 121
      Height = 23
      TabOrder = 1
      OnKeyPress = edtNotaKeyPress
    end
    object edtNota3: TEdit
      Left = 113
      Top = 136
      Width = 121
      Height = 23
      TabOrder = 2
      OnKeyPress = edtNotaKeyPress
    end
    object btnCalcular: TButton
      Left = 33
      Top = 197
      Width = 185
      Height = 57
      Caption = 'Calcular M'#233'dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI Symbol'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnCalcularClick
    end
    object Edit1: TEdit
      Left = 415
      Top = 117
      Width = 121
      Height = 23
      TabOrder = 4
    end
  end
end
