VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6150
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7140
   LinkTopic       =   "Form1"
   ScaleHeight     =   6150
   ScaleWidth      =   7140
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   4455
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   3975
      Begin VB.CommandButton Command2 
         Caption         =   "BORRAR"
         Height          =   615
         Left            =   600
         TabIndex        =   3
         Top             =   2280
         Width           =   2655
      End
      Begin VB.CommandButton Command1 
         Caption         =   "CLICK"
         Height          =   615
         Left            =   600
         TabIndex        =   2
         Top             =   1440
         Width           =   2655
      End
      Begin VB.TextBox Text1 
         Height          =   615
         Left            =   480
         TabIndex        =   1
         Text            =   "0"
         Top             =   360
         Width           =   2775
      End
      Begin VB.Label descuento 
         Height          =   435
         Left            =   480
         TabIndex        =   5
         Top             =   3720
         Width           =   2730
      End
      Begin VB.Label mostrar 
         Height          =   375
         Left            =   600
         TabIndex        =   4
         Top             =   3120
         Width           =   2655
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
Text1.Text = ""
mostrar.Caption = ""
descuento.Caption = ""
End Sub

Private Sub Form_Load()
Dim dos As Integer
Dim cien As Integer
Dim cinco As Integer
End Sub
Private Sub Command1_Click()
dos = Text1.Text * 2 / 100
cien = Text1.Text * 10 / 100
cinco = Text1.Text * 20 / 100
mil = Text1.Text * 50 / 100

If Text1.Text <= 100 Then
mostrar.Caption = (Text1.Text - dos)
End If
If Text1.Text >= 101 And Text1.Text <= 500 Then
mostrar.Caption = (Text1.Text - cien)
End If

If Text1.Text >= 501 And Text1.Text <= 1000 Then
mostrar.Caption = (Text1.Text - cinco)
End If
If Text1.Text >= 1001 Then
mostrar.Caption = (Text1.Text - mil)
End If

End Sub

