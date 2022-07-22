VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H0080C0FF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Transaksi"
   ClientHeight    =   9930
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   12645
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9930
   ScaleWidth      =   12645
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command9 
      Caption         =   "Warna Form"
      Height          =   495
      Left            =   120
      MaskColor       =   &H000000C0&
      TabIndex        =   31
      Top             =   240
      Width           =   1095
   End
   Begin VB.TextBox Totalporsi 
      Enabled         =   0   'False
      Height          =   375
      Left            =   3720
      TabIndex        =   27
      Top             =   6120
      Width           =   2055
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H000000FF&
      Caption         =   "Hitung Hasil"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2520
      MaskColor       =   &H000000FF&
      TabIndex        =   26
      Top             =   5400
      Width           =   2295
   End
   Begin VB.Data Data1 
      Caption         =   "DAFTAR MENU"
      Connect         =   "Access"
      DatabaseName    =   "DT_Makanan.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Left            =   1320
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Daftar_Menu"
      Top             =   3720
      Width           =   2805
   End
   Begin VB.TextBox Txtmenu 
      Alignment       =   2  'Center
      DataField       =   "Makanan"
      DataSource      =   "Data1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1320
      TabIndex        =   21
      Top             =   2880
      Width           =   2655
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   840
      Top             =   1440
   End
   Begin VB.TextBox txtharga 
      DataField       =   "Harga"
      DataSource      =   "Data1"
      BeginProperty Font 
         Name            =   "Century Schoolbook"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7440
      TabIndex        =   18
      Top             =   2040
      Width           =   2175
   End
   Begin VB.TextBox txtjumlah 
      BeginProperty Font 
         Name            =   "Century Schoolbook"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7440
      TabIndex        =   17
      Top             =   3000
      Width           =   2175
   End
   Begin VB.TextBox txtbayar 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Century Schoolbook"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   7440
      TabIndex        =   16
      Top             =   3960
      Width           =   2175
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0C000&
      Height          =   4095
      Left            =   960
      TabIndex        =   11
      Top             =   5160
      Width           =   11175
      Begin VB.TextBox Pajaktxt 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Century Schoolbook"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   38
         Top             =   2760
         Width           =   2055
      End
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   10320
         Top             =   2880
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.TextBox Totalbayar 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   405
         Left            =   2760
         TabIndex        =   29
         Top             =   3360
         Width           =   2055
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Remove"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   9840
         TabIndex        =   25
         Top             =   1560
         Width           =   1215
      End
      Begin VB.CommandButton Command2 
         Caption         =   "ADD LIST"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   9840
         TabIndex        =   24
         Top             =   480
         Width           =   1215
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   2415
         Left            =   5040
         TabIndex        =   23
         Top             =   240
         Width           =   4695
         _ExtentX        =   8281
         _ExtentY        =   4260
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   4
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "NO"
            Object.Width           =   882
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "MENU"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "JUMLAH"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "HARGA"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.TextBox txtukem 
         BeginProperty Font 
            Name            =   "Century Schoolbook"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   420
         Left            =   7800
         TabIndex        =   15
         Top             =   3360
         Width           =   2055
      End
      Begin VB.TextBox txtubay 
         BeginProperty Font 
            Name            =   "Century Schoolbook"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   5280
         TabIndex        =   14
         Top             =   3360
         Width           =   2055
      End
      Begin VB.TextBox txttotal 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Century Schoolbook"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2760
         TabIndex        =   13
         Top             =   1560
         Width           =   2055
      End
      Begin VB.TextBox txtpot 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Century Schoolbook"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   2760
         TabIndex        =   12
         Top             =   2160
         Width           =   2055
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "PAJAK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   37
         Top             =   2760
         Width           =   2175
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Caption         =   "Total Porsi"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   36
         Top             =   960
         Width           =   2175
      End
      Begin VB.Label Label13 
         Alignment       =   2  'Center
         Caption         =   "Uang Kembali"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   7800
         TabIndex        =   35
         Top             =   2880
         Width           =   2055
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         Caption         =   "Uang Bayar"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5280
         TabIndex        =   34
         Top             =   2880
         Width           =   2055
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Caption         =   "Total Harga"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   33
         Top             =   1560
         Width           =   2175
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         Caption         =   "POTONGAN"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   32
         Top             =   2160
         Width           =   2175
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "Total Bayar"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   28
         Top             =   3360
         Width           =   2175
      End
   End
   Begin VB.Frame cmdhitung 
      BackColor       =   &H000080FF&
      Height          =   2895
      Left            =   9840
      TabIndex        =   8
      Top             =   1920
      Width           =   1935
      Begin VB.CommandButton cmdbersih 
         Caption         =   "Bersihkan"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   30
         Top             =   1200
         Width           =   1695
      End
      Begin VB.CommandButton cmdexit 
         Caption         =   "EXIT PROGRAM"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   10
         Top             =   1920
         Width           =   1695
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Harga Porsi"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   9
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H000080FF&
      Caption         =   "MENU"
      BeginProperty Font 
         Name            =   "Garamond"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   2535
      Left            =   1080
      TabIndex        =   4
      Top             =   2280
      Width           =   3255
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   1680
         TabIndex        =   22
         Text            =   "Combo1"
         Top             =   3480
         Width           =   1335
      End
   End
   Begin VB.Label lbltgl 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   10680
      TabIndex        =   20
      Top             =   1440
      Width           =   1455
   End
   Begin VB.Label lbljam 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2040
      TabIndex        =   19
      Top             =   1440
      Width           =   1575
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Bayar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5280
      TabIndex        =   7
      Top             =   3960
      Width           =   1815
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Jumlah Porsi"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5160
      TabIndex        =   6
      Top             =   3120
      Width           =   1815
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Harga/Porsi"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5280
      TabIndex        =   5
      Top             =   2040
      Width           =   1935
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Tanggal :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9600
      TabIndex        =   3
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Jam :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1320
      TabIndex        =   2
      Top             =   1440
      Width           =   615
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00000000&
      BorderWidth     =   3
      X1              =   1320
      X2              =   11760
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Jalan Raya Jakarta-Depok Telp 089501725175"
      BeginProperty Font 
         Name            =   "Lucida Sans Typewriter"
         Size            =   8.25
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4080
      TabIndex        =   1
      Top             =   1080
      Width           =   5055
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "RESTORAN KELOMPOK GANJIL"
      BeginProperty Font 
         Name            =   "Bauhaus 93"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3360
      TabIndex        =   0
      Top             =   480
      Width           =   6495
   End
   Begin VB.Menu daftar 
      Caption         =   "Input Daftar Menu"
   End
   Begin VB.Menu Struk 
      Caption         =   "Cetak Struk"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdbersih_Click()
Validasi = MsgBox("Apakah anda ingin menghapus data?", vbExclamation + vbYesNo, "Konfirmasi")
If Validasi = 6 Then
txtjumlah = ""
txtbayar = ""
txtpot = ""
txttotal = ""
Totalbayar = ""
Totalporsi = ""
txtubay = ""
txtukem = ""
Pajaktxt = ""
Else
Validasi2 = MsgBox("Aksi dibatalkan", vbInformation + vbOKOnly, "Konfirmasi")
End If
End Sub

Private Sub cmdexit_Click()
a = MsgBox("Yakin ingin Keluar dari Form ini?", vbYesNo + vbInformation, "PESAN")
If a = vbYes Then End
End Sub

Private Sub Command1_Click()
H = MsgBox("Kamu yakin ingin Menghitung harga pesanan ini?", vbYesNo + vbInformation, "PESAN")
If H = vbYes Then
txtbayar = Val(txtharga) * Val(txtjumlah)
End If
End Sub

Private Sub Command2_Click()
Dim H As ListItem
Dim I As String
I = ListView1.ListItems.Count + 1
Set H = ListView1.ListItems.Add(, , I)
H.SubItems(1) = Txtmenu.Text
H.SubItems(2) = txtjumlah.Text
H.SubItems(3) = txtbayar.Text
txtjumlah.Text = ""
txtbayar.Text = ""
txtpot.Text = ""
txttotal = ""
Totalbayar = ""
Totalporsi = ""
txtubay = ""
txtukem = ""
Pajaktxt = ""
MsgBox "Berhasil ditambahkan ke list", vbInformation
Command1.Enabled = False
End Sub

Private Sub Command3_Click()
HPS = MsgBox("Yakin ingin menghapus list?", vbYesNo + vbExclamation, "Konfirmasi")
If HPS = vbYes Then
If ListView1.SelectedItem Is Nothing Then Exit Sub
ListView1.ListItems.Remove ListView1.SelectedItem.Index
MsgBox "List Berhasil Dihapus..", vbInformation
End If
End Sub

Private Sub Command5_Click()
If ListView1.ListItems.Count > 0 Then
Dim Jml As Double
For F = 1 To ListView1.ListItems.Count
Jml = Jml + Int(ListView1.ListItems(F).ListSubItems(3).Text)
Next F
txttotal.Text = Format(Jml, "#,##0")
Else
txttotal.Text = "0,00"
End If

If ListView1.ListItems.Count > 0 Then
Dim Jumlahpor As Double
For POR = 1 To ListView1.ListItems.Count
Jumlahpor = Jumlahpor + Int(ListView1.ListItems(POR).ListSubItems(2).Text)
Next POR
Totalporsi.Text = Format(Jumlahpor, "#,##0")
Else
Totalporsi.Text = "0,00"
End If

If Jumlahpor > 20 Then
   txtpot = Val(Jml) * 8 / 100
ElseIf Jumlahpor > 10 Then
   txtpot = Val(Jml) * 2 / 100
Else
  txtpot = 0
End If
Pajaktxt = Jml * 10 / 100
Totalbayar = Jml + Pajaktxt - txtpot
txtubay.SetFocus
End Sub

Private Sub Command9_Click()
Form1.BackColor = QBColor(Rnd() * 15)
End Sub

Private Sub daftar_Click()
    Unload Me
    Form2.Show
End Sub

Private Sub Data1_Validate(Action As Integer, Save As Integer)
txtjumlah.SetFocus
End Sub

Private Sub Form_Load()
Command1.Enabled = False
Command2.Enabled = False
End Sub

Private Sub FormLogin_Click()

End Sub


Private Sub Struk_Click()
Dim grs As String
On Error GoTo err_han
Me.CommonDialog1.CancelError = True
Me.CommonDialog1.ShowPrinter
grs = String$(40, "=")
Printer.Print
Printer.Print
Printer.FontName = "Times New Roman"
Printer.FontSize = 22
Printer.Print
Printer.Print
Printer.Print Tab(17); "          Struk Pembayaran Tunai          "
Printer.Print Tab(17); "         Restoran kelompok ganjil         "
Printer.Print Tab(14); "Jalan Raya Jakarta-Depok Telp 089501725175"
Printer.Print
Printer.FontName = "Arial Narrow"
Printer.FontSize = 19
Printer.Print Tab(0); lbljam.Caption; Tab(16); lbltgl.Caption
Printer.Print Tab(0); grs
Printer.FontName = "arial narrow"
Printer.FontSize = 19
Printer.FontBold = False
For I = 1 To ListView1.ListItems.Count
    Printer.Print Tab(0); ListView1.ListItems(I).ListSubItems(1); _
    Tab(10); ListView1.ListItems(I).ListSubItems(2); _
    Tab(30); ListView1.ListItems(I).ListSubItems(3);
Next
Printer.Print Tab(0); grs
Printer.Print Tab(0); "Potongan"; Tab(14); ":"; Tab(16); txtpot.Text
Printer.Print Tab(0); "Pajak"; Tab(14); ":"; Tab(16); Pajaktxt.Text
Printer.Print Tab(0); "Total Bayar"; Tab(14); ":"; Tab(16); Totalbayar.Text
Printer.Print Tab(0); "Bayar"; Tab(14); ":"; Tab(16); txtubay.Text
Printer.Print Tab(0); "Kembali"; Tab(14); ":"; Tab(16); txtukem.Text

Printer.Print Tab(64); "Petugas"
Printer.Print
Printer.Print
Printer.Print
Printer.Print Tab(60); "_____________"

Printer.EndDoc
Exit Sub
err_han:
If Err.Number = 32755 Then
MsgBox "Cetak dibatalkan", vbInformation
End If
    
End Sub

Private Sub Timer1_Timer()
lbljam.Caption = Format(Time, "hh:mm:ss AM/PM")
lbltgl.Caption = Format(Date, "dd/mm/yyyy")
End Sub

Private Sub txtbayar_Change()
If Len(txtbayar.Text) > 0 Then
Command2.Enabled = True
Else
Command2.Enabled = False
End If
End Sub

Private Sub txtharga_Change()

End Sub

Private Sub txtjumlah_Change()
If Len(txtjumlah.Text) > 0 Then
Command1.Enabled = True
Else
Command1.Enabled = False
End If
End Sub

Private Sub txtubay_Change()
txtukem = Val(txtubay) - Val(Totalbayar)
End Sub


