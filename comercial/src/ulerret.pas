unit ulerret;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TflerRet = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    Memo2: TMemo;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    BitBtn3: TBitBtn;
    Memo3: TMemo;
    BitBtn4: TBitBtn;
    TabSheet3: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    BitBtn5: TBitBtn;
    Memo4: TMemo;
    BitBtn6: TBitBtn;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    BitBtn7: TBitBtn;
    Label6: TLabel;
    Memo5: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  flerRet: TflerRet;

implementation

{$R *.dfm}

procedure TflerRet.BitBtn1Click(Sender: TObject);
var   Txt: Textfile;
      Entrada , tipo ,valorr , a , b ,c ,d ,e ,f , x ,y,l : string;
      i , Q , G , TEM : integer;
begin
  Memo1.Clear;
  Memo2.Clear;
  Label1.Caption := '...';
  Label2.Caption := '...';
  Label4.Caption := '...';

    if OpenDialog1.Execute then
    begin
      AssignFile(Txt,(OpenDialog1.FileName));
      Reset(Txt);
      Q := 0;
      Memo1.Lines.Add('Titulo   '  + ' - ' + ' Venc.     ' + ' - ' + ' Valor ' + ' - ' + 'Socio' ) ;
      Memo2.Lines.Add('Titulo   '  + ' - ' + ' Pagto.    ' + ' - ' + ' Valor ' + ' - ' + 'Socio' ) ;
      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);
      TEM :=  Length(Entrada);
      if(tem = 240)then
      begin
          MessageDlg(' Esse Arquivo é CNAB 240'+#13+#10+'Use outro Botão para Abrir', mtError, [mbOK], 0);
        exit;
      end;

         tipo := Copy(Entrada,2,1);
        valorr := Copy(Entrada,367,11);
         if ((Tipo = '0')and(valorr = '00000000000')) then
        begin
         y := Copy(Entrada,109,02) ;
         a := Copy(Entrada,64,06) ;
         b := Copy(Entrada,147,02)  + '/'  + Copy(Entrada,149,02) + '/' + Copy(Entrada,151,02);
         d := Copy(Entrada,302,37) ;
         i := StrToInt(Copy(Entrada,153,11));// + StrToInt(Copy(Entrada,164,02));
         e := IntToStr(i);
         f := Copy(Entrada,164,02);
         c := y + '-' + a + ' - ' + b + ' - ' + e+ ',' + f + '  - ' + d;
         Memo1.Lines.Add(c) ;
         Q := Q + 1 ;
         end ;

         if ((Tipo = '0')and(valorr <> '00000000000')) then
         begin
         l := Copy(Entrada,109,02) ;
         a := Copy(Entrada,64,06) ;
         b := Copy(Entrada,111,02)  + '/'  + Copy(Entrada,113,02) + '/' + Copy(Entrada,115,02);
         d := Copy(Entrada,302,37) ;
         i := StrToInt(Copy(Entrada,367,11));// + StrToInt(Copy(Entrada,164,02));
         e := IntToStr(i);
         f := Copy(Entrada,378,02);
         c := l + '-' + a + ' - ' + b + ' - ' + e+ ',' + f + '  - ' + d;
         Memo2.Lines.Add(c) ;
         G := G + 1 ;
         end;

         {
         l := Copy(Entrada,109,02) ;

         if (((Tipo = '0') and(l <> '02' ) or (l <> '06' )))  then
         begin
         l := Copy(Entrada,109,02) ;
         a := Copy(Entrada,64,06) ;
         b := Copy(Entrada,111,02)  + '/'  + Copy(Entrada,113,02) + '/' + Copy(Entrada,115,02);
         d := Copy(Entrada,302,37) ;
        // i := StrToInt(Copy(Entrada,367,11));// + StrToInt(Copy(Entrada,164,02));
         e := IntToStr(i);
         f := Copy(Entrada,378,02);
         c := l + '-' + a + ' - ' + b + ' - ' + e+ ',' + f + '  - ' + d;
         Memo5.Lines.Add(c) ;
         G := G + 1 ;
         end;

         }

        {
          cds.FieldByName('ID').Value:= Copy(Entrada,1,02);
          cds.FieldByName('TITULO').Value:= Copy(Entrada,64,06);
          cds.FieldByName('DATA').Value:= Copy(Entrada,111,02)  + '/'  + Copy(Entrada,113,02) + '/' + Copy(Entrada,115,02);   //(11,06)
          cds.FieldByName('VALOR').Value:= Copy(Entrada,367,11);
          cds.FieldByName('CENTAVOS').Value:= Copy(Entrada,378,02);
          cds.FieldByName('VT').Value:= Copy(Entrada,367,11) + ',' + Copy(Entrada,378,02);

         }


      end;
      CloseFile(Txt);

    end;

    Label1.Caption := OpenDialog1.FileName;
    if Trim(Memo1.Lines.Text) <> '' then
    begin
      Keybd_Event(VK_PRIOR,0,0,0);
      Memo1.lines.Text := Memo1.Lines.Text + ' ';
      if( Q > 1)then
      label2.Caption := IntToStr(Q);
    end;

    if Trim(Memo2.Lines.Text) <> '' then
    begin
      Keybd_Event(VK_PRIOR,0,0,0);
      Memo2.lines.Text := Memo2.Lines.Text + ' ';
      if( G > 1)then
      label4.Caption := IntToStr(G);
    end;

end;

procedure TflerRet.BitBtn2Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo2.Clear;
  Label1.Caption := '...';
  Label2.Caption := '...';
  Label4.Caption := '...';
end;

procedure TflerRet.BitBtn3Click(Sender: TObject);
var   Txt: Textfile;
      Entrada , tipo ,valorr , a, b ,c ,d ,e ,f , x , n , m,z: string;
      i , Q , G  , a1 : integer;
begin
    if OpenDialog1.Execute then
    begin
      AssignFile(Txt,(OpenDialog1.FileName));
      Reset(Txt);
      Q := 0;
      Memo3.Lines.Add('Titulo   '  + ' - ' + ' Venc.     ' + ' - ' + ' Valor ' + ' - ' + 'Socio' ) ;
      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);
        tipo := Copy(Entrada,14,1);
        if (Tipo = 'P') then
        begin
          a1 := StrToInt(Copy(Entrada,45,12)) ;
          a := IntToStr(a1);
          b := Copy(Entrada,78,02)  + '/'  + Copy(Entrada,80,02) + '/' + Copy(Entrada,82,02);
          i := StrToInt(Copy(Entrada,86,13));
          e := IntToStr(i);
          f := Copy(Entrada,99,02);
          Q := Q + 1 ;
        end ;

        z := '';
        if (Tipo = 'Q') then
        begin
          n := Copy(Entrada,34,40) ;
          z := Copy(Entrada,73,1) ;
      //    c := a + ' - ' + b + ' - ' + e+ ',' + f + '  - ' + n ;
      //    Memo3.Lines.Add(c) ;
     //     G := G + 1 ;
        end;
        tipo := Copy(Entrada,46,05);
        if (Tipo = 'GRUPO') then
        begin
          m := Copy(Entrada,46,30) ;
      //    if(z = '') then
          c := a + ' - ' + b + ' - ' + e+ ',' + f + '  - ' + n ;
      //    else
      //    c := a + ' - ' + b + ' - ' + e+ ',' + f + '  - ' + n + ' - ' + 'Erro Cadastro' ; //+ '  - ' + m ;
          Memo3.Lines.Add(c) ;
          G := G + 1 ;
        end;




      end;
      CloseFile(Txt);

    end;

    Label8.Caption := OpenDialog1.FileName ;
    if Trim(Memo3.Lines.Text) <> '' then
    begin
      Keybd_Event(VK_PRIOR,0,0,0);
      Memo3.lines.Text := Memo3.Lines.Text + ' ';
      if( Q > 1)then
      label9.Caption := IntToStr(Q);
      label14.Caption := m;
    end;

end;

procedure TflerRet.BitBtn4Click(Sender: TObject);
begin
  Memo3.Clear;
  Label8.Caption := '...';
  Label9.Caption := '...';
  Label14.Caption := '...';
end;

procedure TflerRet.BitBtn5Click(Sender: TObject);
var   Txt: Textfile;
      Entrada , tipo ,valorr , a, b ,c ,d ,e ,f , x , n , m: string;
      i , Q , G  , a1 : integer;
begin
    if OpenDialog1.Execute then
    begin
      AssignFile(Txt,(OpenDialog1.FileName));
      Reset(Txt);
      Q := 0;
      Memo4.Lines.Add('Titulo   '  + ' - ' + ' Venc.     ' + ' - ' + ' Valor ' + ' - ' + 'Socio' ) ;
      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);
        tipo := Copy(Entrada,14,1);
        if (Tipo = 'P') then
        begin
          a1 := StrToInt(Copy(Entrada,45,12)) ;
          a := IntToStr(a1);
          b := Copy(Entrada,78,02)  + '/'  + Copy(Entrada,80,02) + '/' + Copy(Entrada,82,02);
          i := StrToInt(Copy(Entrada,86,13));
          e := IntToStr(i);
          f := Copy(Entrada,99,02);
          Q := Q + 1 ;
        end ;

        if (Tipo = 'Q') then
        begin
          n := Copy(Entrada,34,40) ;
          c := a + ' - ' + b + ' - ' + e+ ',' + f + '  - ' + n ;
          Memo4.Lines.Add(c) ;
          G := G + 1 ;
        end;

      end;
      CloseFile(Txt);

    end;

    Label15.Caption := OpenDialog1.FileName ;
    if Trim(Memo4.Lines.Text) <> '' then
    begin
      Keybd_Event(VK_PRIOR,0,0,0);
      Memo4.lines.Text := Memo4.Lines.Text + ' ';
      if( Q > 1)then
      label17.Caption := IntToStr(Q);

    end;

end;

procedure TflerRet.BitBtn6Click(Sender: TObject);
begin
  Memo4.Clear;
  Label15.Caption := '...';
  Label17.Caption := '...';
end;

procedure TflerRet.BitBtn7Click(Sender: TObject);
var   Txt: Textfile;
      Entrada , tipo ,valorr , a , b ,c ,d ,e ,f , x ,ocorrencia , val : string;
      i , Q , G: integer;
begin
 Memo1.Clear;
 Memo2.Clear;
 Label1.Caption := '...';
 Label2.Caption := '...';
 Label4.Caption := '...';
    if OpenDialog1.Execute then
    begin
      AssignFile(Txt,(OpenDialog1.FileName));
      Reset(Txt);
      Q := 0;
      Memo1.Lines.Add('Titulo   '  + ' - ' + ' Ocorrencia ' + ' - ' + 'Socio' ) ;
      Memo2.Lines.Add('Titulo '  + ' - ' + 'Socio      ' + '        -    ' + ' Pagmaneto ' + ' - ' + 'Efetuado' ) ;

      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);
        tipo := Copy(Entrada,14,01);
        ocorrencia := Copy(Entrada,16,02);
        val := (IntToStr(Length(Entrada)));
        if(val <> '240')then
        begin
           MessageDlg(' Esse Arquivo é CNAB 400'+#13+#10+'Use outro Botão para Abrir', mtError, [mbOK], 0);
        exit;
        end;


        if ((Tipo = 'T')and(ocorrencia = '06'))then
        begin
          a := Copy(Entrada,41,12);  //7,6);
        ///  b := Copy(Entrada,138,02)  + '/'  + Copy(Entrada,140,02) + '/' + Copy(Entrada,144,02);
        ///  d := Copy(Entrada,78,13) + ',' + Copy(Entrada,91,2);
         //  i := StrToInt(Copy(Entrada,153,11));// + StrToInt(Copy(Entrada,164,02));
         // e := IntToStr(i);
          f := Copy(Entrada,144,40);
          c := a + ' - ' + f ; //' - ' + b + ' - ' + e+ ',' + f + '  - ' + d;
          Memo2.Lines.Add(c) ;
          Q := Q + 1 ;
        end ;

        if ((Tipo = 'T')and(ocorrencia <> '06')) then
        begin
          a := Copy(Entrada,41,12) ;
          b := Copy(Entrada,16,02) ;
        //  d := Copy(Entrada,302,37) ;
        //  i := StrToInt(Copy(Entrada,367,11));// + StrToInt(Copy(Entrada,164,02));
        //  e := IntToStr(i);
          f := Copy(Entrada,144,40);
          c := a + '        - ' + b + '       -       ' + f ;
          Memo1.Lines.Add(c) ;
          G := G + 1 ;
        end;
    end;

    CloseFile(Txt);



    Label1.Caption := OpenDialog1.FileName;
    if Trim(Memo1.Lines.Text) <> '' then
    begin
      Keybd_Event(VK_PRIOR,0,0,0);
      Memo1.lines.Text := Memo1.Lines.Text + ' ';
      if( Q > 1)then
      label2.Caption := IntToStr(Q);
    end;

    if Trim(Memo2.Lines.Text) <> '' then
    begin
      Keybd_Event(VK_PRIOR,0,0,0);
      Memo2.lines.Text := Memo2.Lines.Text + ' ';
      if( G > 1)then
      label4.Caption := IntToStr(G);
    end;

   end;



end;

procedure TflerRet.FormCreate(Sender: TObject);
begin
  Application.HintHidePause:=5000;
end;

end.
