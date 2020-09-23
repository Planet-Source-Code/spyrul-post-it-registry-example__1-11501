VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Post-It"
   ClientHeight    =   5520
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8145
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":030A
   ScaleHeight     =   5520
   ScaleWidth      =   8145
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6600
      TabIndex        =   5
      Top             =   4680
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Clear"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3000
      TabIndex        =   2
      Top             =   4680
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Post-It"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1080
      TabIndex        =   1
      Top             =   4680
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H0000C0C0&
      Height          =   2415
      Left            =   960
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   720
      Width           =   3495
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   6480
      Picture         =   "Form1.frx":708F4
      Top             =   3240
      Width           =   480
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   735
      Left            =   6360
      Shape           =   3  'Circle
      Top             =   3120
      Width           =   735
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Your Personal To-Do List...."
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   495
      Left            =   4800
      TabIndex        =   4
      Top             =   2160
      Width           =   3255
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Post-It"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   855
      Left            =   4920
      TabIndex        =   3
      Top             =   1320
      Width           =   3135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub Command1_Click()
'Saves the post...
SaveSettingString HKEY_CURRENT_USER, "PostIT\Posts\Posts0", "Post", Text1
End Sub

Private Sub Command2_Click()
'Clears the post...
DeleteKey HKEY_CURRENT_USER, "PostIT\Posts\Posts0"
End Sub

Private Sub Command3_Click()
'Ends the program
End
End Sub

Private Sub Form_Load()
'Gets the settings previously saved...
Text1 = GetSettingString(HKEY_CURRENT_USER, "PostIT\Posts\Posts0", "Post", "")
End Sub
