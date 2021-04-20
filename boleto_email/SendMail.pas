{
Exemplo de uso:
  with TSendMail.Create(Self) do
    try
      Subject:='Hello World!';
      Body   :='E aí?';
      Recipients.Add('fulano1@dominio1.com.br');
      Recipients.Add('CC:fulano2@dominio2.com.br');
      Attachments.Add(ExpandFileName('LivroCaixa.pdf'));
      EditDialog:=true;
      Send;
    finally
      Free;
    end;
}
unit SendMail;

interface

uses
  Classes, Dialogs;

type
  TSendMail=class(TComponent)
  private
    { Private declarations }
    fLastError    :integer;
    fSubject      :string;
    fBody         :string;
    fSenderName   :string;
    fSenderAddress:string;
    fRecipients   :TStrings;
    fAttachments  :TStrings;
    fEditDialog   :boolean;
    //
    procedure   SetRecipients(Value:TStrings);
    procedure   SetAttachments(Value:TStrings);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;
    //
    function    Send:boolean;
    function    MAPIErrorDescription(aErrorCode:integer):string; 
    //
    property    LastError:integer read fLastError;
  published
    { Published declarations }
    property    Subject      :string   read fSubject       write fSubject;
    property    Body         :string   read fBody          write fBody;
    //
    property    Recipients   :TStrings read fRecipients    write SetRecipients;
    property    Attachments  :TStrings read fAttachments   write SetAttachments;

    property    EditDialog   :boolean  read fEditDialog    write fEditDialog;

    property    SenderName   :string   read fSenderName    write fSenderName;
    property    SenderAddress:string   read fSenderAddress write fSenderAddress;
  end;

function SendEMailByMAPI(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;

implementation

uses
  MAPI, SysUtils, Forms;

function SendEMailByMAPI(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
const
  RECIP_MAX =MaxInt div SizeOf(TMapiRecipDesc);
  ATTACH_MAX=MaxInt div SizeOf(TMapiFileDesc);
type
  TRecipAccessArray =array [0..RECIP_MAX-1] of TMapiRecipDesc;
  TlpRecipArray     =^TRecipAccessArray;
  TAttachAccessArray=array [0..ATTACH_MAX-1] of TMapiFileDesc;
  TlpAttachArray    =^TAttachAccessArray;
  TszRecipName      =array[0..256] of Char;
  TlpszRecipName    =^TszRecipName;
  TszPathName       =array[0..256] of Char;
  TlpszPathname     =^TszPathname;
  TszFileName       =array[0..256] of Char;
  TlpszFileName     =^TszFileName;
var
  i  :integer;
  msg:TMapiMessage;
  rec:TlpRecipArray;
  att:TlpAttachArray;
  function CheckRecipient(aRecipient:string):integer;
  var
    lpRecip:PMapiRecipDesc;
  begin
    result:=MapiResolveName(0,0,PChar(aRecipient),0,0,lpRecip);
    if (result in [MAPI_E_AMBIGUOUS_RECIPIENT,MAPI_E_UNKNOWN_RECIPIENT]) then
      result:=MapiResolveName(0,0,PChar(aRecipient),MAPI_DIALOG,0,lpRecip);
    if result=SUCCESS_SUCCESS then
    begin
      aRecipient:=StrPas(lpRecip^.lpszName);
      with rec^[i] do
      begin
        lpszName:=StrCopy(new(TlpszRecipName)^,lpRecip^.lpszName);
        if lpRecip^.lpszAddress=nil then
          lpszAddress:=StrCopy(new(TlpszRecipName)^,lpRecip^.lpszName)
        else
          lpszAddress:=StrCopy(new(TlpszRecipName)^,lpRecip^.lpszAddress);
        ulEIDSize:=lpRecip^.ulEIDSize;
        lpEntryID:=nil;///lpRecip^.lpEntryID;
        MapiFreeBuffer(lpRecip);
      end
    end;
  end;
  function SendMess:integer;
  const
    DialogFlags:array[boolean] of word=(0,MAPI_DIALOG);
  begin
    result:=MAPISendMail(0,Application.Handle {0},msg,DialogFlags[WithOpenMessage] or MAPI_LOGON_UI {or MAPI_NEW_SESSION},0);
  end;
var
  lpSender:TMapiRecipDesc;
  s       :string;
begin
  FillChar(msg,SizeOf(msg),0);
  att:=nil;
  rec:=nil;
  with msg do
  begin
    if SenderAddress<>'' then
    begin
      lpSender.ulRecipClass:=MAPI_ORIG;
      if SenderName<>'' then
        lpSender.lpszName:=PChar(SenderAddress)
      else
        lpSender.lpszName:=PChar(SenderName);
      lpSender.lpszAddress:=PChar(SenderAddress);
      lpSender.ulReserved :=0;
      lpSender.ulEIDSize  :=0;
      lpSender.lpEntryID  :=nil;
      lpOriginator        :=@lpSender;
    end;
    lpszSubject :=PChar(Subject);
    lpszNoteText:=PChar(Body);
    if Assigned(Attachments) then
    begin
      nFileCount:=Attachments.Count;
      att       :=TlpAttachArray(StrAlloc(nFileCount*SizeOf(TMapiFileDesc)));
      FillChar(att^,StrBufSize(PChar(att)),0);
      for i:=0 to nFileCount-1 do
      begin
        att^[i].nPosition   :=Cardinal(-1);
        att^[i].lpszPathName:=StrPCopy(new(TlpszPathname)^,Attachments[i]);
        att^[i].lpszFileName:=StrPCopy(new(TlpszFileName)^,ExtractFileName(Attachments[i]));
      end;
      lpFiles:=@att^;
    end
    else
      nFileCount:=0;
  end;
  if Assigned(Recipients) then
  begin
    rec:=TlpRecipArray(StrAlloc(Recipients.Count*SizeOf(TMapiRecipDesc)));
    FillChar(rec^,StrBufSize(PChar(rec)),0);
    for i:=0 to Recipients.Count-1 do
    begin
      s:=Recipients[i];
      if UpperCase(Copy(s,1,3))='CC:' then
      begin
        rec^[i].ulRecipClass:=MAPI_CC;
        Delete(s, 1, 3);
      end
      else
      if UpperCase(Copy(s,1,4))='BCC:' then
      begin
        rec^[i].ulRecipClass:=MAPI_BCC;
        Delete(s,1,4);
      end
      else
        rec^[i].ulRecipClass:=MAPI_TO;
      CheckRecipient(s);
    end;
    msg.nRecipCount:=Recipients.Count;
    msg.lpRecips   :=@rec^;
  end
  else
    msg.nRecipCount:=0;
  result:=SendMess;
  if Assigned(att) then
  begin
    for i:=0 to msg.nFileCount-1 do
    begin
      Dispose(att^[i].lpszPathname);
      Dispose(att^[i].lpszFileName);
    end;
    StrDispose(PChar(att));
  end;
  if Assigned(rec) then
  begin
    for i:=0 to msg.nRecipCount-1 do
    begin
      if Assigned(rec^[i].lpszName) then
        Dispose(rec^[i].lpszName);
      if Assigned(rec^[i].lpszAddress) then
        Dispose(rec^[i].lpszAddress);
    end;
    StrDispose(PChar(rec));
  end;
end;

{ TSendMail }

constructor TSendMail.Create(aOwner:TComponent);
begin
  inherited;
  //
  EditDialog  :=true;
  fRecipients :=TStringList.Create;
  fAttachments:=TStringList.Create;
end;

destructor TSendMail.Destroy;
begin
  fRecipients.free;
  Attachments.free;
  //
  inherited;
end;

procedure TSendMail.SetRecipients(Value:TStrings);
begin
  fRecipients.Assign(Value);
end;

procedure TSendMail.SetAttachments(Value:TStrings);
begin
  Attachments.Assign(Value);
end;

function TSendMail.Send:boolean;
begin
  fLastError:=SendEMailByMAPI(SenderName,SenderAddress,Subject,Body,Recipients,Attachments,EditDialog);
  result    :=(LastError=SUCCESS_SUCCESS);
end;

function TSendMail.MAPIErrorDescription(aErrorCode:integer):string;
begin
  case aErrorCode of
    MAPI_E_USER_ABORT              : result:='User cancelled request';
    MAPI_E_FAILURE                 : result:='General MAPI failure';
    MAPI_E_LOGON_FAILURE           : result:='Logon failure';
    MAPI_E_DISK_FULL               : result:='Disk full';
    MAPI_E_INSUFFICIENT_MEMORY     : result:='Insufficient memory';
    MAPI_E_ACCESS_DENIED           : result:='Access denied';
    MAPI_E_TOO_MANY_SESSIONS       : result:='Too many sessions';
    MAPI_E_TOO_MANY_FILES          : result:='Too many files open';
    MAPI_E_TOO_MANY_RECIPIENTS     : result:='Too many recipients';
    MAPI_E_ATTACHMENT_NOT_FOUND    : result:='Attachment not found';
    MAPI_E_ATTACHMENT_OPEN_FAILURE : result:='Failed to open attachment';
    MAPI_E_ATTACHMENT_WRITE_FAILURE: result:='Failed to write attachment';
    MAPI_E_UNKNOWN_RECIPIENT       : result:='Unknown recipient';
    MAPI_E_BAD_RECIPTYPE           : result:='Invalid recipient type';
    MAPI_E_NO_MESSAGES             : result:='No messages';
    MAPI_E_INVALID_MESSAGE         : result:='Invalid message';
    MAPI_E_TEXT_TOO_LARGE          : result:='Text too large.';
    MAPI_E_INVALID_SESSION         : result:='Invalid session';
    MAPI_E_TYPE_NOT_SUPPORTED      : result:='Type not supported';
    MAPI_E_AMBIGUOUS_RECIPIENT     : result:='Ambiguous recipient';
    MAPI_E_MESSAGE_IN_USE          : result:='Message in use';
    MAPI_E_NETWORK_FAILURE         : result:='Network failure';
    MAPI_E_INVALID_EDITFIELDS      : result:='Invalid edit fields';
    MAPI_E_INVALID_RECIPS          : result:='Invalid recipients';
    MAPI_E_NOT_SUPPORTED           : result:='Not supported';
  else
    result:='Unknown Error Code: '+IntToStr(aErrorCode);
  end; 
end;

end.

