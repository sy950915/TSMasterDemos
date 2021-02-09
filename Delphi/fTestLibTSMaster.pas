unit fTestLibTSMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, uIncLibTSMaster,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmTestLibTSMaster = class(TForm)
    page: TPageControl;
    shtApplication: TTabSheet;
    Label1: TLabel;
    edtApplication: TEdit;
    Button1: TButton;
    MM: TMemo;
    Splitter1: TSplitter;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label2: TLabel;
    edtCANChannelCountSet: TEdit;
    edtLINChannelCountSet: TEdit;
    Label3: TLabel;
    Button9: TButton;
    edtApplicationList: TEdit;
    edtLINChannelCountGet: TEdit;
    Label4: TLabel;
    edtCANChannelCountGet: TEdit;
    Label5: TLabel;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Panel1: TPanel;
    Label6: TLabel;
    cbApplicationType1: TComboBox;
    Label7: TLabel;
    cbDeviceType1: TComboBox;
    cbDeviceSubType1: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    cbHWChannel1: TComboBox;
    Panel2: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cbApplicationType2: TComboBox;
    cbDeviceType2: TComboBox;
    cbDeviceSubType2: TComboBox;
    cbHWChannel2: TComboBox;
    Button14: TButton;
    Button15: TButton;
    shtCAN: TTabSheet;
    Button13: TButton;
    shtCANDatabase: TTabSheet;
    Button8: TButton;
    btnTurboMode: TSpeedButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    cbTSMasterWindow: TComboBox;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    edtAddPeriodicCAN: TEdit;
    edtDelPeriodicCAN: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtCyclicCANPeriod: TEdit;
    Label17: TLabel;
    Button24: TButton;
    Button25: TButton;
    Label18: TLabel;
    edtCANChannelBaudrate: TEdit;
    Label19: TLabel;
    edtBaudrateCAN: TEdit;
    chkTerm120: TCheckBox;
    edtPeriodicChannel: TEdit;
    Label20: TLabel;
    edtChnPeriodDelete: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Button26: TButton;
    Button29: TButton;
    Label23: TLabel;
    edtCANFDChannelBaudrate: TEdit;
    Label24: TLabel;
    edtBaudrateCANFDArb: TEdit;
    edtBaudrateCANFDData: TEdit;
    Label25: TLabel;
    chkTerm120FD: TCheckBox;
    Button30: TButton;
    edtChnPeriodDeleteFD: TEdit;
    edtPeriodicChannelFD: TEdit;
    edtCyclicCANPeriodFD: TEdit;
    edtDelPeriodicCANFD: TEdit;
    edtAddPeriodicCANFD: TEdit;
    Button31: TButton;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    GroupBox1: TGroupBox;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    cbBusStatistics: TComboBox;
    cbBusStatBusType: TComboBox;
    Button36: TButton;
    edtFPSCAN: TEdit;
    Label32: TLabel;
    Button37: TButton;
    Label33: TLabel;
    edtFPSCANFD: TEdit;
    Button38: TButton;
    Label34: TLabel;
    edtFPSLIN: TEdit;
    cbStatChn: TComboBox;
    edtFPSCANChn: TEdit;
    Label35: TLabel;
    edtFPSCANFDChn: TEdit;
    Label36: TLabel;
    edtFPSLINChn: TEdit;
    Label37: TLabel;
    Button39: TButton;
    Button40: TButton;
    Label38: TLabel;
    edtDBCFile: TEdit;
    Button41: TButton;
    Button42: TButton;
    Label39: TLabel;
    edtDBCId: TEdit;
    Button43: TButton;
    GroupBox2: TGroupBox;
    pnlQuery: TPanel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    cbType: TComboBox;
    edtSubIdx: TEdit;
    edtSubSubIdx: TEdit;
    MMDBCResults: TMemo;
    btnQuery: TBitBtn;
    edtDBIdx: TEdit;
    shtOnlineReplay: TTabSheet;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    lstOnlineReplay: TListView;
    btnGetOnlineReplayEngines: TButton;
    Button28: TButton;
    Button44: TButton;
    Button27: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    btnReceiveCANMsgs: TButton;
    btnReceiveCANFDMsgs: TButton;
    shtMiniProgramLibrary: TTabSheet;
    Button50: TButton;
    shtMisc: TTabSheet;
    Button51: TButton;
    MMPython: TMemo;
    Button52: TButton;
    chkVendor: TCheckBox;
    Label44: TLabel;
    Label45: TLabel;
    cbDevIndex1: TComboBox;
    cbDevIndex2: TComboBox;
    Label46: TLabel;
    Button53: TButton;
    edtMPLibraryFileName: TEdit;
    Button54: TButton;
    edtUnloadMPLib: TEdit;
    shtLINCom: TTabSheet;
    shtLDF: TTabSheet;
    grpLINTpLayer: TGroupBox;
    lblNAD: TLabel;
    lblTPExecuteTime: TLabel;
    btnTPSetIntervalTime: TButton;
    btnTPResetRequest: TButton;
    btnTpMasterRequest: TButton;
    btnTpResponse: TButton;
    edtNAD: TEdit;
    edtTpIntervalTime: TEdit;
    BtnLINReadDataByID: TButton;
    Label47: TLabel;
    memoLINDatas: TMemo;
    lblDatas: TLabel;
    grpLINNormalAPI: TGroupBox;
    lblLINBaudrate: TLabel;
    lblLINRecallRevCnt: TLabel;
    lblReadRevLINCnt: TLabel;
    btnSetAsMasterMode: TButton;
    btnApplyNewLDF: TButton;
    edtLINBaudrate: TEdit;
    btnSetLINBaudrate: TButton;
    btnRegisterFastLIN: TButton;
    btnSendTxFrame: TButton;
    btnSendRxFrame: TButton;
    btnStartSednMsgThread: TButton;
    btnStopSendMsgThread: TButton;
    mmLINMsgs: TMemo;
    dlgOpenFirmware: TOpenDialog;
    btnSetLINDiagSlaveResponseIntervalTime: TButton;
    Button55: TButton;
    Button56: TButton;
    edtRunMPLib: TEdit;
    Button57: TButton;
    edtCheckMPRun: TEdit;
    Button58: TButton;
    edtStopMPLib: TEdit;
    Button59: TButton;
    Button60: TButton;
    Button61: TButton;
    edtCallMPFunc: TEdit;
    Label48: TLabel;
    edtCallMPFuncName: TEdit;
    Label49: TLabel;
    edtFuncInputPara: TEdit;
    Button62: TButton;
    edtFuncGetAddr: TEdit;
    Label50: TLabel;
    edtFuncNameGetAdddr: TEdit;
    Button63: TButton;
    edtFuncPrototypeName: TEdit;
    Label51: TLabel;
    edtFuncPrototypeFuncName: TEdit;
    Button64: TButton;
    Button65: TButton;
    edtMPFuncList: TEdit;
    Button66: TButton;
    Button67: TButton;
    Label52: TLabel;
    edtLibTSMaster: TEdit;
    Button68: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure cbDeviceType1Change(Sender: TObject);
    procedure cbDeviceType2Change(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btnTurboModeClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnGetOnlineReplayEnginesClick(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure btnReceiveCANMsgsClick(Sender: TObject);
    procedure btnReceiveCANFDMsgsClick(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure chkVendorClick(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure btnLINReadDataByIDClick(Sender: TObject);
    procedure btnSetAsMasterModeClick(Sender: TObject);
    procedure btnApplyNewLDFClick(Sender: TObject);
    procedure btnSetLINBaudrateClick(Sender: TObject);
    procedure btnRegisterFastLINClick(Sender: TObject);
    procedure btnSendTxFrameClick(Sender: TObject);
    procedure btnSendRxFrameClick(Sender: TObject);
    procedure btnTpMasterRequestClick(Sender: TObject);
    procedure btnTPSetIntervalTimeClick(Sender: TObject);
    procedure btnTPResetRequestClick(Sender: TObject);
    procedure btnSetLINDiagSlaveResponseIntervalTimeClick(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button63Click(Sender: TObject);
    procedure Button64Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button68Click(Sender: TObject);
  private
    FApplicationName: ansistring;
    function GetMyApplication: PAnsiChar;
    function GetMyApplicationString: string;
    function CheckOK(const AResultCode: integer): Boolean;
    procedure Log(const AStr: string);
    procedure SetDeviceSubType(const ADevType: TLIBBusToolDeviceType; const ASubTypeCombo: TComboBox);
    procedure SetMappingByCombo(
      const AAppChnType: TLIBApplicationChannelType;
      const AHwIdx: Integer;
      const AAppChnIdx: integer;
      const AHWChannelIdx: integer;
      const ADevCombo: TComboBox;
      const ASubDevCombo: TComboBox
    );
    procedure InternalUnregisterEvents;
    procedure DisplayThreadedEventMessage(const AStr: string);
    procedure LoadHardwareDevices;
  public

  end;

var
  frmTestLibTSMaster: TfrmTestLibTSMaster;

implementation

uses
  System.Math,
  Winapi.ShellAPI,
  uTSBaseTypes,
  System.AnsiStrings;

const
  // Firmware update status
  FIRM_UPDATE_STAT_COUNT          = 9;
  FIRM_UPDATE_NOT_RUN             = 0;
  FIRM_UPDATE_LOADING_FIRM        = 1;
  FIRM_UPDATE_WRITING_BOOT_CONFIG = 2;
  FIRM_UPDATE_VERIFY_BOOT_CONFIG  = 3;
  FIRM_UPDATE_WRITE_FLASH         = 4;
  FIRM_UPDATE_CHECK_CRC           = 5;
  FIRM_UPDATE_RESET               = 6;
  FIRM_UPDATE_FAILED              = 7; // final state 1
  FIRM_UPDATE_COMPLETE            = 8; // final state 2
  FIRM_UPDATE_DESCs: array [0..FIRM_UPDATE_STAT_COUNT-1] of string = (
    'Not run',
    'Loading firmware file',
    'Writing bootloader config',
    'Verify bootloader config',
    'Writing flash',
    'Checking CRC',
    'Reseting Device',
    'Failed, please check log',
    'Complete'
  );

{$R *.dfm}

procedure OnCANRxEvent(const AObj: Pointer; const AData: PlibCAN); stdcall;
var
  frm: TfrmTestLibTSMaster;
  c: TLIBCAN;
begin
  frm := TfrmTestLibTSMaster(aobj);
  c := adata^;
  frm.DisplayThreadedEventMessage(c.ToString);

end;

procedure OnCANFDRxEvent(const AObj: Pointer; const AData: PlibCANFD); stdcall;
var
  frm: TfrmTestLibTSMaster;
  c: TLIBCANFD;
begin
  frm := TfrmTestLibTSMaster(aobj);
  c := adata^;
  frm.DisplayThreadedEventMessage(c.ToString);

end;

procedure OnLINRxEvent(const AObj: Pointer; const AData: PlibLIN); stdcall;
var
  frm: TfrmTestLibTSMaster;
  c: TLIBLIN;
begin
  frm := TfrmTestLibTSMaster(aobj);
  c := adata^;
  frm.DisplayThreadedEventMessage(c.ToString);

end;

procedure LibTSMasterLogger(const AStr: PAnsiChar; const ALevel: Integer); stdcall;
var
  s: string;
begin
  s := '[' + LOGGER_TYPES[min(LOGGER_VERBOSE, max(LOGGER_NO_OUTPUT, alevel))] + '] ' + string(AnsiString(astr));
  tthread.Queue(
    nil,
    procedure begin
      frmTestLibTSMaster.Log(s);
    end
  );

end;

procedure TfrmTestLibTSMaster.btnLINReadDataByIDClick(Sender: TObject);
var
  tmpValue:Integer;
  reqNadValue:u8;
  reqID:u16;
  resNadValue:u8;
  resBytes:array[0..29]of u8;
  resNum:Integer;
  testStr:string;
  i:Integer;
begin
  if TryStrToInt('$' + edtNAD.Text,tmpValue) then
  begin
    reqNadValue := u8(tmpValue);
  end
  else
  begin
    ShowMessage('Please Input Valid NAD Value');
    exit;
  end;
  if TryStrToInt('$' + Trim(memoLINDatas.Text),tmpValue) then
  begin
     reqID := u16(tmpValue);
  end
  else
  begin
    ShowMessage('Please Input Unsigned Integer Identifier');
    exit;
  end;
  if tslin_diag_sp_read_data_by_identifier(
                       0,
                       reqNadValue,
                       reqID,
                       @resNadValue,
                       @resBytes[0],
                       @resNum,
                       1000) = nativeint(0) then
  begin
     Log('read data by id success');
     testStr := 'RevNum['+ resNum.ToString + ']: ';
     for i := 0 to resNum - 1 do
     begin
       testStr := testStr + IntToHex(resBytes[i]) + ' ';
     end;
     Log(testStr);
  end
  else
  begin
    Log('read data by id failed');
  end;

end;

procedure TfrmTestLibTSMaster.btnQueryClick(Sender: TObject);
var
  p: pansichar;
begin
  if CheckOK(tsdb_get_can_db_info(
    StrToIntDef(edtDBIdx.Text, 0),
    cbType.ItemIndex,
    StrToIntDef(edtSubIdx.Text, 0),
    StrToIntDef(edtSubSubIdx.Text, 0),
    @p
  )) then begin
    MMDBCResults.Text := string(AnsiString(p));
    Log('Query success');
  end else begin
    MMDBCResults.Text := 'Database index invalid or parameter invalid';
    Log('Query failed');
  end;

end;

procedure TfrmTestLibTSMaster.btnReceiveCANFDMsgsClick(Sender: TObject);
var
  canFDBuffer:array[0..9] of TLIBCANFD;
  revCnt:Integer;
  i:Integer;
begin
  revCnt := tsapp_receive_canfd_msgs(@canfdBuffer[0],10,0,0);
  for i := 0 to revCnt - 1 do
  begin
     Log('Receive CANFD Msg: ' + canFDBuffer[i].ToString);
  end;

end;

procedure TfrmTestLibTSMaster.btnReceiveCANMsgsClick(Sender: TObject);
var
  canBuffer:array[0..9] of TLIBCAN;
  revCnt:Integer;
  i:Integer;
begin
  revCnt := tsapp_receive_can_msgs(@canBuffer[0],10,0,0);
  for i := 0 to revCnt - 1 do
  begin
     Log('Receive CAN Msg: ' + canBuffer[i].ToString);
  end;

end;

procedure TfrmTestLibTSMaster.btnRegisterFastLINClick(Sender: TObject);
begin
   if tsapp_register_event_lin(self, OnLINRxEvent) = 0 then
   begin
     Log('Register LIN Rx Event Success!');
   end
   else
   begin
     Log('Register LIN Rx Event Failed!');
   end;

end;

procedure TfrmTestLibTSMaster.btnSendRxFrameClick(Sender: TObject);
var
  c: TLIBLIN;
begin
  c.FProperties := 0; //RX
  c.FIdxChn := 0;
  c.FIdentifier := $06;
  c.FDLC := 6;
  if tsapp_transmit_lin_async(@c) = 0 then begin
    Log('Async Send Rx Success');
  end
  else
  begin
    Log('Async Send Rx Failed');
  end;

end;
procedure TfrmTestLibTSMaster.btnSendTxFrameClick(Sender: TObject);
var
  c: TLIBLIN;
begin
  c.FProperties := $01; //TX
  c.FIdxChn := 0;
  c.FIdentifier := $3C;
  c.FDLC := 8;
  c.FDLC := 3;
  c.FData[0] := $AA;
  c.FData[1] := $10;
  c.FData[2] := $03;
  if tsapp_transmit_lin_async(@c) = 0 then begin
    Log('Async Send LIN Success');
  end
  else
  begin
    Log('Async Send LIN Failed');
  end;

end;

procedure TfrmTestLibTSMaster.btnSetAsMasterModeClick(Sender: TObject);
begin
  if tslin_set_node_funtiontype(0,T_MasterNode) = 0 then
  begin
    Log('Set Master Mode Success!');
  end
  else
  begin
    Log('Set Master Mode Failed!');
  end;

end;

procedure TfrmTestLibTSMaster.btnSetLINBaudrateClick(Sender: TObject);
var
  kBaudrate:Double;
begin
   if TryStrToFloat(edtLINBaudrate.Text,kBaudrate) then
   begin
     if tsapp_configure_baudrate_lin(0,kBaudrate*1000)  = 0 then
     begin
       Log('Set LIN Baudrate Success!');
     end
     else
     begin
       Log('Set LIN Baudrate Failed');
     end;
   end;

end;

procedure TfrmTestLibTSMaster.btnSetLINDiagSlaveResponseIntervalTimeClick(
  Sender: TObject);
var
  intervalTime:integer;
begin
  if TryStrToInt(edtTpIntervalTime.Text,intervalTime) then
  begin
    if tslin_diag_tp_slave_response_intervalms(0,intervalTime) = 0 then
    begin
      Log('Set diagnostic tp slave response internal time success!');
    end
    else
    begin
      Log('Set diagnostic tp slave response internal time Failed!');
    end;
  end;

end;

procedure TfrmTestLibTSMaster.btnTpMasterRequestClick(Sender: TObject);
var
  testBytes:array[0..80] of Byte;    //14*6 + 5 = 89Bytes
  i:Integer;
  dataStrs:string;
  realDataCnt:Integer;
  tmpValue:Integer;
  nadValue:u8;
begin
  dataStrs := '';
  for i := 0 to memoLINDatas.Lines.Count - 1 do
  begin
     dataStrs := dataStrs + memoLINDatas.Lines[i];
  end;
  realDataCnt := dataStrs.Length div 2;
  for i := 0 to realDataCnt - 1 do
  begin
     if TryStrToInt('$' + dataStrs.Substring(0 + i*2,2),tmpValue) then
     begin
        testBytes[i] := u8(tmpValue);
     end
     else
     begin
       ShowMessage('Please Input Valid Hex Value');
       exit;
     end;
  end;
  if TryStrToInt('$' + edtNAD.Text,tmpValue) then
  begin
    nadValue := u8(tmpValue);
  end
  else
  begin
    ShowMessage('Please Input Valid NAD Value');
    exit;
  end;
  if tslin_diag_tp_master_request(0,nadValue,@testBytes[0],realDataCnt,500) = 0 then
  begin
    Log('Send LIN Master Request Package Success');
  end
  else
  begin
    Log('Send LIN Master Request Package Failed');
  end;

end;

procedure TfrmTestLibTSMaster.btnTPResetRequestClick(Sender: TObject);
begin
  if tslin_diag_tp_reset(0) = 0 then
  begin
    Log('Reset Diag Tp Module Success!');
  end
  else
  begin
    Log('Reset Diag Tp Module Failed!');
  end;

end;

procedure TfrmTestLibTSMaster.btnTPSetIntervalTimeClick(Sender: TObject);
var
  intervalTime:integer;
begin
  if TryStrToInt(edtTpIntervalTime.Text,intervalTime) then
  begin
    if tslin_diag_tp_master_request_intervalms(0,intervalTime) = 0 then
    begin
      Log('Set diagnostic tp master request internal time success!');
    end
    else
    begin
      Log('Set diagnostic tp master request internal time Failed!');
    end;
  end;

end;

procedure TfrmTestLibTSMaster.btnTurboModeClick(Sender: TObject);
begin
  if CheckOK(tsapp_set_turbo_mode(btnturbomode.Down)) then begin
    if btnTurboMode.Down then begin
      Log('Turbo mode enabled in ' + edtApplication.Text);
    end else begin
      Log('Turbo mode disabled in ' + edtapplication.Text);
    end;
  end;

end;

procedure TfrmTestLibTSMaster.btnApplyNewLDFClick(Sender: TObject);
var
  c: integer;
begin
  if CheckOK(tsapp_get_lin_channel_count(c)) then begin
    Log('LIN channel count = ' + c.tostring);
    edtliNChannelCountGet.Text := c.tostring;
  end;

end;

procedure TfrmTestLibTSMaster.Button10Click(Sender: TObject);
var
  c: integer;
begin
  if CheckOK(tsapp_get_lin_channel_count(c)) then begin
    Log('LIN channel count = ' + c.tostring);
    edtliNChannelCountGet.Text := c.tostring;
  end;

end;

procedure TfrmTestLibTSMaster.Button11Click(Sender: TObject);
var
  c: integer;
begin
  if CheckOK(tsapp_get_can_channel_count(c)) then begin
    Log('CAN channel count = ' + c.tostring);
    edtCANChannelCountGet.Text := c.tostring;
  end;

end;

procedure TfrmTestLibTSMaster.Button12Click(Sender: TObject);
var
  i: integer;
begin
  i := StrToIntDef(cbHWChannel2.Text, 0);
  SetMappingByCombo(
    TLIBApplicationChannelType(cbApplicationType2.ItemIndex),
    StrToIntDef(cbDevIndex2.Text, 0),
    1,
    i,
    cbDeviceType2,
    cbDeviceSubType2
  );

end;

procedure TfrmTestLibTSMaster.Button13Click(Sender: TObject);
var
  c: TLIBCAN;
begin
  c.SetStdId($123, 8);
  c.FIdxChn := 0;
  c.FData[0] := $55;
  if CheckOK(tsapp_transmit_can_async(@c)) then begin
    Log('A CAN message has been sent');
  end;

end;

procedure TfrmTestLibTSMaster.Button14Click(Sender: TObject);
begin
  // register only one of them: CAN or CANFD
  // tsapp_register_rx_event_can(self, OnCANRxEvent);
  tsapp_register_event_canfd(Self, OnCANFDRxEvent);
  tsapp_register_event_lin(self, OnLINRxEvent);

end;

procedure TfrmTestLibTSMaster.Button15Click(Sender: TObject);
begin
  InternalUnregisterEvents;

end;

procedure TfrmTestLibTSMaster.Button16Click(Sender: TObject);
var
  b: Boolean;
begin
  if CheckOK(tsapp_get_turbo_mode(b)) then begin
    if b then begin
      Log('Turbo mode is enabled in ' + edtApplication.Text);
    end else begin
      Log('Turbo mode is disabled in ' + edtapplication.Text);
    end;
  end;

end;

procedure TfrmTestLibTSMaster.Button17Click(Sender: TObject);
var
  c: TLIBCANfd;
begin
  c.SetStdId($123, 8);
  c.FIdxChn := 0;
  c.FData[0] := $55;
  if CheckOK(tsapp_transmit_canfd_sync(@c, 1000)) then begin
    Log('A CAN FD message has been sent');
  end;

end;

procedure TfrmTestLibTSMaster.Button18Click(Sender: TObject);
var
  c: TLIBCANfd;
begin
  c.SetStdId($123, 8);
  c.FIdxChn := 0;
  c.FData[0] := $55;
  if CheckOK(tsapp_transmit_canfd_async(@c)) then begin
    Log('A CAN FD message has been sent');
  end;

end;

procedure TfrmTestLibTSMaster.Button19Click(Sender: TObject);
begin
  if checkok(tsapp_show_channel_mapping_window) then begin
    Log('Channel mapping window displayed');
  end;

end;

procedure TfrmTestLibTSMaster.Button1Click(Sender: TObject);
begin
  if CheckOK(tsapp_del_application(getmyapplication)) then begin
    Log('Application is deleted: ' + GetMyApplicationString);
  end;

end;

procedure TfrmTestLibTSMaster.Button20Click(Sender: TObject);
begin
  if CheckOK(tsapp_show_tsmaster_window(PAnsiChar(AnsiString(cbTSMasterWindow.text)), true)) then begin
    Log('TSMaster window displayed: ' + cbTSMasterWindow.Text);
  end;

end;

procedure TfrmTestLibTSMaster.Button21Click(Sender: TObject);
var
  i: integer;
  c: TLIBCAN;
begin
  i := StrToIntDef(edtAddPeriodicCAN.text, $123);
  c.SetStdId(i, 8);
  c.FIdxChn := StrToIntDef(edtPeriodicChannel.text, 1) - 1;
  if CheckOK(tsapp_add_cyclic_msg_can(@c, StrToFloatDef(edtCyclicCANPeriod.Text, 1.0))) then begin
    Log('Periodic CAN message has been added: 0x' + i.ToHexString);
  end;

end;

procedure TfrmTestLibTSMaster.Button22Click(Sender: TObject);
var
  i: integer;
  c: TLIBCAN;
begin
  i := StrToIntDef(edtDelPeriodicCAN.text, $123);
  c.SetStdId(i, 8);
  c.FIdxChn := StrToIntDef(edtChnPeriodDelete.Text, 1) - 1;
  if CheckOK(tsapp_delete_cyclic_msg_can(@c)) then begin
    Log('Periodic CAN message has been deleted: 0x' + i.ToHexString);
  end;

end;

procedure TfrmTestLibTSMaster.Button23Click(Sender: TObject);
begin
  if CheckOK(tsapp_delete_cyclic_msgs) then begin
    Log('All periodic CAN messages have been deleted');
  end;

end;

procedure TfrmTestLibTSMaster.Button24Click(Sender: TObject);
begin
  if checkok(tsapp_show_hardware_configuration_window) then begin
    Log('Hardware configuration window displayed');
  end;

end;

procedure TfrmTestLibTSMaster.Button25Click(Sender: TObject);
var
  i: integer;
  b: single;
begin
  i := StrToIntDef(edtCANChannelBaudrate.Text, 1) - 1;
  b := StrToFloatDef(edtBaudrateCAN.text, 500);
  if CheckOK(tsapp_configure_baudrate_can(i, b, false, chkTerm120.Checked)) then begin
    Log('Channel ' + (i+1).ToString + ' baudrate has been configured');
  end;

end;

procedure TfrmTestLibTSMaster.Button26Click(Sender: TObject);
var
  i, n: integer;
  m: TLIBTSMapping;
begin
  // set app name
  if Length(edtApplication.Text) >= Length(m.FAppName) then begin
    Log('Error: application name too long: ' + edtApplication.Text);
    exit;
  end;
  System.AnsiStrings.StrPCopy(@m.FAppName[0], AnsiString(edtApplication.Text));
  // get can mappings
  if not CheckOK(tsapp_get_can_channel_count(n)) then exit;
  for i:=0 to n-1 do begin
    m.FAppChannelIndex := i;
    m.FAppChannelType := APP_CAN;
    if not CheckOK(tsapp_get_mapping(@m)) then exit;
    Log(m.tostring);
  end;
  // get lin mappings
  if not CheckOK(tsapp_get_lin_channel_count(n)) then exit;
  for i:=0 to n-1 do begin
    m.FAppChannelIndex := i;
    m.FAppChannelType := APP_LIN;
    if not CheckOK(tsapp_get_mapping(@m)) then exit;
    Log(m.tostring);
  end;

end;

procedure TfrmTestLibTSMaster.Button27Click(Sender: TObject);
begin
  if CheckOK(tslog_start_online_replays) then begin
    Log('All online replays started');
  end;

end;

procedure TfrmTestLibTSMaster.btnGetOnlineReplayEnginesClick(Sender: TObject);
var
  i, n: integer;
  AName: pansichar;
  AFileName: pansichar;
  AAutoStart: Boolean;
  AIsRepetitiveMode: boolean;
  AStartTimingMode: TLIBOnlineReplayTimingMode;
  AStartDelayTimeMs: integer;
  ASendTx: Boolean;
  ASendRx: boolean;
  AMappings: PAnsiChar;
begin
  if CheckOK(tslog_get_online_replay_count(n)) then begin
    lstOnlineReplay.Clear;
    for i:=0 to n-1 do begin
      if CheckOK(tslog_get_online_replay_config(
        i,
        @AName,
        @AFileName,
        AAutoStart,
        AIsRepetitiveMode,
        AStartTimingMode,
        AStartDelayTimeMs,
        ASendTx,
        ASendRx,
        @amappings
      )) then begin
        with lstOnlineReplay.Items.Add do begin
          Caption := (i+1).ToString;
          subitems.Add(string(AnsiString(aname)));
          subitems.Add(string(AnsiString(afilename)));
        end;
      end;
    end;
  end;

end;

procedure TfrmTestLibTSMaster.Button28Click(Sender: TObject);
var
  AName: pansichar;
  AFileName: pansichar;
  AAutoStart: Boolean;
  AIsRepetitiveMode: boolean;
  AStartTimingMode: TLIBOnlineReplayTimingMode;
  AStartDelayTimeMs: integer;
  ASendTx: Boolean;
  ASendRx: boolean;
  AMappings: PAnsiChar;
begin
  if lstOnlineReplay.Selected = nil then exit;
  if CheckOK(tslog_get_online_replay_config(
        lstOnlineReplay.Selected.Index,
        @AName,
        @AFileName,
        AAutoStart,
        AIsRepetitiveMode,
        AStartTimingMode,
        AStartDelayTimeMs,
        ASendTx,
        ASendRx,
        @amappings
      )) then begin
    // output engine info
    Log('Engine Name: ' + string(AnsiString(aname)));
    Log('Engine File Name: ' + string(AnsiString(AFileName)));
    Log('Engine Auto start: ' + aautostart.tostring(aautostart, TUseBoolStrs.True));
    Log('Engine is repetitive output: ' + aisrepetitivemode.tostring(aisrepetitivemode, TUseBoolStrs.True));
    case AStartTimingMode of
      ortImmediately: begin
        Log('Engine start timing mode: Immediately output the first frame');
      end;
      ortAsLog: begin
        Log('Engine start timing mode: As Log file timestamp');
      end;
      ortDelayed: begin
        Log('Engine start timing mode: Delay output the first frame, delay time (ms): ' + astartdelaytimems.ToString);
      end;
    end;
    Log('Engine Send Tx Frame: ' + asendtx.tostring(asendtx, TUseBoolStrs.True));
    Log('Engine Send Rx Frame: ' + asendrx.ToString(asendrx, TUseBoolStrs.True));
    Log('Engine channel mappings: ' + string(AnsiString(AMappings)));
  end;

end;

procedure TfrmTestLibTSMaster.Button29Click(Sender: TObject);
var
  i: integer;
  bArb, bData: single;
begin
  i := StrToIntDef(edtCANFDChannelBaudrate.Text, 1) - 1;
  bArb := StrToFloatDef(edtBaudrateCANFDArb.text, 500);
  bdata := StrToFloatDef(edtBaudrateCANFDData.text, 2000);
  if CheckOK(tsapp_configure_baudrate_canfd(i, barb, bdata, lfdtISOCAN, lfdmNormal, chkTerm120.Checked)) then begin
    Log('Channel ' + (i+1).ToString + ' baudrate has been configured');
  end;

end;

procedure TfrmTestLibTSMaster.Button2Click(Sender: TObject);
begin
  if CheckOK(tsapp_add_application(getmyapplication)) then begin
    Log('Application is added: ' + GetMyApplicationString);
  end;

end;

procedure TfrmTestLibTSMaster.Button30Click(Sender: TObject);
var
  i: integer;
  c: TLIBCANfd;
begin
  i := StrToIntDef(edtAddPeriodicCANfd.text, $123);
  c.SetStdId(i, 8);
  c.FIdxChn := StrToIntDef(edtPeriodicChannelfd.text, 1) - 1;
  if CheckOK(tsapp_add_cyclic_msg_canfd(@c, StrToFloatDef(edtCyclicCANPeriodFD.Text, 1.0))) then begin
    Log('Periodic CAN FD message has been added: 0x' + i.ToHexString);
  end;

end;

procedure TfrmTestLibTSMaster.Button31Click(Sender: TObject);
var
  i: integer;
  c: TLIBCANfd;
begin
  i := StrToIntDef(edtDelPeriodicCANfd.text, $123);
  c.SetStdId(i, 8);
  c.FIdxChn := StrToIntDef(edtChnPeriodDeletefd.Text, 1) - 1;
  if CheckOK(tsapp_delete_cyclic_msg_canfd(@c)) then begin
    Log('Periodic CAN FD message has been deleted: 0x' + i.ToHexString);
  end;

end;

procedure TfrmTestLibTSMaster.Button32Click(Sender: TObject);
begin
  if CheckOK(tsapp_enable_bus_statistics(true)) then begin
    Log('Bus statistics timer enabled');
  end;

end;

procedure TfrmTestLibTSMaster.Button33Click(Sender: TObject);
begin
  if CheckOK(tsapp_enable_bus_statistics(False)) then begin
    Log('Bus statistics timer disabled');
  end;

end;

procedure TfrmTestLibTSMaster.Button34Click(Sender: TObject);
begin
  if CheckOK(tsapp_clear_bus_statistics()) then begin
    Log('Bus statistics cleared');
  end;

end;

procedure TfrmTestLibTSMaster.Button35Click(Sender: TObject);
var
  d: Double;
begin
  if CheckOK(tsapp_get_bus_statistics(TLIBApplicationChannelType(cbBusStatBusType.ItemIndex), cbStatChn.ItemIndex, TLIBCANBusStatistics(cbBusStatistics.ItemIndex), d)) then begin
    Log('Bus statistics of ' + cbBusStatistics.Text + ' is: ' + d.ToString);
  end;

end;

procedure TfrmTestLibTSMaster.Button36Click(Sender: TObject);
var
  i: integer;
begin
  if CheckOK(tsapp_get_fps_can(
    StrToIntDef(edtFPSCANChn.Text, 1) - 1,
    StrToIntDef(edtFPSCAN.Text, 0),
    i)
  ) then begin
    Log('CAN FPS for Id = ' + edtFPSCAN.Text + ' on Channel ' + edtFPSCANChn.Text + ' is ' + i.ToString);
  end;

end;

procedure TfrmTestLibTSMaster.Button37Click(Sender: TObject);
var
  i: integer;
begin
  if CheckOK(tsapp_get_fps_canfd(
    StrToIntDef(edtFPSCANfdChn.Text, 1) - 1,
    StrToIntDef(edtFPSCANfd.Text, 0),
    i)
  ) then begin
    Log('CAN FD FPS for Id = ' + edtFPSCANfd.Text + ' on Channel ' + edtFPSCANfdChn.Text + ' is ' + i.ToString);
  end;

end;

procedure TfrmTestLibTSMaster.Button38Click(Sender: TObject);
var
  i: integer;
begin
  if CheckOK(tsapp_get_fps_lin(
    StrToIntDef(edtFPSlinChn.Text, 1) - 1,
    StrToIntDef(edtFPSliN.Text, 0),
    i)
  ) then begin
    Log('LIN FPS for Id = ' + edtFPSliN.Text + ' on Channel ' + edtFPSliNChn.Text + ' is ' + i.ToString);
  end;

end;

procedure TfrmTestLibTSMaster.Button39Click(Sender: TObject);
var
  s: string;
begin
  s := ExtractFilePath(Application.ExeName) + 'log.blf';
  if CheckOK(tsapp_start_logging(PAnsiChar(AnsiString(s)))) then begin
    Log('Logging started: ' + s);
  end;

end;

procedure TfrmTestLibTSMaster.Button3Click(Sender: TObject);
begin
  if CheckOK(tsapp_set_can_channel_count(StrToIntDef(edtCANChannelCountSet.Text, 2))) then begin
    Log('Application CAN channel count has been set to ' + edtCANChannelCountSet.Text);
  end;

end;

procedure TfrmTestLibTSMaster.Button40Click(Sender: TObject);
begin
  if CheckOK(tsapp_stop_logging) then begin
    Log('Logging stopped.');
  end;

end;

procedure TfrmTestLibTSMaster.Button41Click(Sender: TObject);
var
  i: Cardinal;
begin
  if CheckOK(tsdb_load_can_db(PAnsiChar(AnsiString(edtDBCFile.Text)), '0,1', i)) then begin
    Log('DBC loaded: ' + edtdbcfile.Text + ', with Id = ' + i.ToString);
  end;

end;

procedure TfrmTestLibTSMaster.Button42Click(Sender: TObject);
var
  i: Cardinal;
begin
  i := StrToIntDef(edtDBCId.text, 0);
  if CheckOK(tsdb_unload_can_db(i)) then begin
    Log('DBC unloaded: ' + i.ToString);
  end;

end;

procedure TfrmTestLibTSMaster.Button43Click(Sender: TObject);
begin
  if CheckOK(tsdb_unload_can_dbs()) then begin
    Log('Add db unloaded.');
  end;

end;

procedure TfrmTestLibTSMaster.Button44Click(Sender: TObject);
var
  i: Integer;
begin
  with TOpenDialog.Create(self) do begin
    Filter := 'Blf files (*.blf)';
    if Execute(handle) then begin
      if CheckOK(tslog_add_online_replay_config(PAnsiChar(AnsiString(FileName)), i)) then begin
        Log('Online replay engine added with index: ' + i.ToString);
        btnGetOnlineReplayEnginesClick(btnGetOnlineReplayEngines);
      end;
    end;
    free;
  end;

end;

procedure TfrmTestLibTSMaster.Button45Click(Sender: TObject);
begin
  if CheckOK(tslog_pause_online_replays) then begin
    Log('All online replays paused');
  end;

end;

procedure TfrmTestLibTSMaster.Button46Click(Sender: TObject);
begin
  if CheckOK(tslog_stop_online_replays) then begin
    Log('All online replays stopped');
  end;

end;

procedure TfrmTestLibTSMaster.Button47Click(Sender: TObject);
begin
  if CheckOK(tslog_del_online_replay_configs()) then begin
    Log('Online replay configs deleted');
    btnGetOnlineReplayEnginesClick(btnGetOnlineReplayEngines);
  end;

end;

procedure TfrmTestLibTSMaster.Button48Click(Sender: TObject);
begin
  if lstOnlineReplay.Selected = nil then exit;
  if CheckOK(tslog_del_online_replay_config(lstOnlineReplay.selected.Index)) then begin
    Log('Online replay config deleted: ' + lstOnlineReplay.selected.index.ToString);
    btnGetOnlineReplayEnginesClick(btnGetOnlineReplayEngines);
  end;

end;

procedure TfrmTestLibTSMaster.Button49Click(Sender: TObject);
var
  s: string;
  stat: TLIBOnlineReplayStatus;
  prog100: Single;
begin
  if lstOnlineReplay.Selected = nil then exit;
  if CheckOK(tslog_get_online_replay_status(lstOnlineReplay.Selected.Index, stat, prog100)) then begin
    case stat of
      orsNotStarted: s := 'Not started';
      orsRunning: s := 'Running';
      orsPaused: s := 'Paused';
      orsCompleted: s := 'Completed';
      orsTerminated: s := 'Terminated';
      else s := 'Unknown status';
    end;
    Log('Selected online replay engine status: ' + s + ', progress = ' + FloatToStr(prog100) + '%');
  end;

end;

procedure TfrmTestLibTSMaster.Button4Click(Sender: TObject);
begin
  if CheckOK(tsapp_set_lin_channel_count(StrToIntDef(edtliNChannelCountSet.Text, 2))) then begin
    Log('Application LIN channel count has been set to ' + edtliNChannelCountSet.Text);
  end;

end;

procedure TfrmTestLibTSMaster.Button50Click(Sender: TObject);
var
  i, n: integer;
  f: TLIBHWInfo;
begin
  if CheckOK(tsapp_enumerate_hw_devices(n)) then begin
    Log('Connected Hardware Device count = ' + n.tostring);
    for i:=0 to n-1 do begin
      if CheckOK(tsapp_get_hw_info_by_index(i, @f)) then begin
        Log('Hardware Index: ' + i.ToString + ': ');
        Log('  Vendor Name: ' + string(ansistring(f.FVendorName)));
        Log('  Device Name: ' + string(ansistring(f.FDeviceName)));
        Log('  Device Type: ' + BUS_TOOL_DEVICE_NAMES[integer(f.FDeviceType)]);
        Log('  Device Index: ' + f.FDeviceIndex.ToString);
        Log('  Serial String: ' + string(AnsiString(f.FSerialString)));
      end;
    end;
  end;

end;

procedure TfrmTestLibTSMaster.Button51Click(Sender: TObject);
var
  p: pansichar;
begin
  if CheckOK(tsapp_execute_python_string(PAnsiChar(AnsiString(MMPython.text)), true, false, @p)) then begin
    Log(string(ansistring(p)));
  end;

end;

procedure TfrmTestLibTSMaster.Button52Click(Sender: TObject);
begin
  shellexecute(
    handle,
    'open',
    PChar(ExtractFilePath(Application.ExeName)),
    nil,
    nil,
    SW_SHOW
  );

end;

procedure TfrmTestLibTSMaster.Button53Click(Sender: TObject);
begin
  if CheckOK(tsmp_load(
    PAnsiChar(AnsiString(edtMPLibraryFileName.Text)),
    True
  )) then begin
    Log('MP library loaded: ' + edtMPLibraryFileName.Text);
  end;

end;

procedure TfrmTestLibTSMaster.Button54Click(Sender: TObject);
begin
  if CheckOK(tsmp_unload(
    PAnsiChar(AnsiString(edtMPLibraryFileName.Text))
  )) then begin
    Log('MP library unloaded: ' + edtMPLibraryFileName.Text);
  end;

end;

procedure TfrmTestLibTSMaster.Button55Click(Sender: TObject);
begin
  if CheckOK(tsmp_unload_all()) then begin
    Log('All MP libraries unloaded');
  end;

end;

procedure TfrmTestLibTSMaster.Button56Click(Sender: TObject);
begin
  if CheckOK(tsmp_run(
    PAnsiChar(AnsiString(edtRunMPLib.Text))
  )) then begin
    Log('MP library is running: ' + edtRunMPLib.Text);
  end;

end;

procedure TfrmTestLibTSMaster.Button57Click(Sender: TObject);
var
  running: boolean;
begin
  if CheckOK(tsmp_is_running(
    PAnsiChar(AnsiString(edtCheckMPRun.Text)),
    running
  )) then begin
    if running then begin
      Log('MP library is running: ' + edtCheckMPRun.Text);
    end else begin
      Log('MP library is not running: ' + edtCheckMPRun.Text);
    end;
  end;

end;

procedure TfrmTestLibTSMaster.Button58Click(Sender: TObject);
begin
  if CheckOK(tsmp_stop(
    PAnsiChar(AnsiString(edtStopMPLib.Text))
  )) then begin
    Log('MP library is stopped: ' + edtStopMPLib.Text);
  end;

end;

procedure TfrmTestLibTSMaster.Button59Click(Sender: TObject);
begin
  if CheckOK(tsmp_run_all()) then begin
    Log('All MP libraries are running');
  end;

end;

procedure TfrmTestLibTSMaster.Button5Click(Sender: TObject);
var
  i: integer;
begin
  i := StrToIntDef(cbHWChannel1.Text, 0);
  SetMappingByCombo(
    TLIBApplicationChannelType(cbApplicationType1.ItemIndex),
    StrToIntDef(cbDevIndex1.Text, 0),
    0,
    i,
    cbDeviceType1,
    cbDeviceSubType1
  );

end;

procedure TfrmTestLibTSMaster.Button60Click(Sender: TObject);
begin
  if CheckOK(tsmp_stop_all()) then begin
    Log('All MP libraries are stopped');
  end;

end;

procedure TfrmTestLibTSMaster.Button61Click(Sender: TObject);
var
  p: pansichar;
begin
  if CheckOK(tsmp_call_function(
    PAnsiChar(AnsiString(edtCallMPFunc.Text)),
    pansichar(ansistring(edtCallMPFuncName.text)),
    pansichar(ansistring(edtFuncInputPara.text)),
    ppansichar(@p)
  )) then begin
    Log('MP library function is called: ' + edtCallMPFunc.text + '.' + edtCallMPFuncName.text);
    log('  Result is: ' + string(ansistring(p)));
  end;

end;

procedure TfrmTestLibTSMaster.Button62Click(Sender: TObject);
var
  p: pointer;
begin
  if CheckOK(tsmp_get_function_address(
    PAnsiChar(AnsiString(edtFuncGetAddr.Text)),
    pansichar(ansistring(edtFuncNameGetAdddr.text)),
    p
  )) then begin
    Log('MP library function pointer is retrieved: ' + edtFuncGetAddr.text + '.' + edtFuncNameGetAdddr.text);
    log('  Result is: ' + integer(pinteger(p)^).tohexstring);
  end;

end;

procedure TfrmTestLibTSMaster.Button63Click(Sender: TObject);
var
  p: pansichar;
begin
  if CheckOK(tsmp_get_function_prototype(
    PAnsiChar(AnsiString(edtFuncPrototypeName.Text)),
    pansichar(ansistring(edtFuncPrototypeFuncName.text)),
    @p
  )) then begin
    Log('MP library function prototype is retrieved: ' + edtFuncPrototypeName.text + '.' + edtFuncPrototypeFuncName.text);
    log('  Result is: ' + string(ansistring(p)));
  end;

end;

procedure TfrmTestLibTSMaster.Button64Click(Sender: TObject);
var
  p: pansichar;
begin
  if CheckOK(tsmp_get_mp_list(@p)) then begin
    Log('Mini program list retrieved: ' + string(ansistring(p)));
  end;

end;

procedure TfrmTestLibTSMaster.Button65Click(Sender: TObject);
var
  p: pansichar;
begin
  if checkok(tsmp_get_mp_function_list(
    PAnsiChar(AnsiString(edtMPFuncList.Text)),
    @p)) then begin
    log('Function list of mp ' + edtMPFuncList.text + ' retrieved: ' + string(ansistring(p)));
  end;

end;

procedure TfrmTestLibTSMaster.Button66Click(Sender: TObject);
var
  p: pansichar;
begin
  if checkok(get_libtsmaster_location(@p)) then begin
    edtLibTSMaster.text := string(ansistring(p));
    if not fileexists(edtlibtsmaster.text) then begin
      log('Cannot find libTSMaster.dll, please specify its path first before calling any other API');
    end else begin
      log('libTSMaster.dll distribution found: ' + edtlibtsmaster.text);
    end;
  end;

end;

procedure TfrmTestLibTSMaster.Button67Click(Sender: TObject);
var
  s: string;
begin
  s := edtLibTSMaster.text;
  if not fileexists(s) then begin
    showmessage(
      'File not found: ' + s + slinebreak + slinebreak +
      'Please specify correct libTSMaster.dll file path'
    );
    exit;
  end;
  if checkok(set_libtsmaster_location(pansichar(ansistring(s)))) then begin
    log('New distribution of libTSMaster.dll has been set to: ' + s);
  end;

end;

procedure TfrmTestLibTSMaster.Button68Click(Sender: TObject);
var
  writeData:array[0..12] of Byte;
  resNadValue:Byte;
  resBytes:array[0..20] of Byte;
  resNum:Integer;
  i:Integer;
  testStr:string;
begin
  writeData[0] := $4D; writeData[1] := $4D; writeData[2] := $45;
  writeData[3] := $72; writeData[4] := $61; writeData[5] := $73;
  writeData[6] := $65; writeData[7] := $45; writeData[8] := $45;
  writeData[9] := $50; writeData[10] := $52; writeData[11] := $4F;
  writeData[12] := $4D;
  if tslin_diag_sp_write_data_by_identifier(
                       0,
                       $7F,
                       $FD10,
                       @writeData[0],
                       13,
                       @resNadValue,
                       @resBytes[0],
                       @resNum,
                       10000) = nativeint(0) then
  begin
     Log('read data by id success');
     testStr := 'RevNum['+ resNum.ToString + ']: ';
     for i := 0 to resNum - 1 do
     begin
       testStr := testStr + IntToHex(resBytes[i]) + ' ';
     end;
     Log(testStr);
  end
  else
  begin
    Log('read data by id failed');
  end;

end;

procedure TfrmTestLibTSMaster.Button6Click(Sender: TObject);
begin
  chkVendorClick(chkVendor);
  if CheckOK(tsapp_connect()) then begin
    Log('Application connected');
  end;

end;

procedure TfrmTestLibTSMaster.Button7Click(Sender: TObject);
begin
  if CheckOK(tsapp_disconnect) then begin
    Log('Application disconnected');
  end;

end;

procedure TfrmTestLibTSMaster.Button8Click(Sender: TObject);
var
  c: TLIBCAN;
begin
  c.SetStdId($123, 8);
  c.FIdxChn := 0;
  c.FData[0] := $55;
  if CheckOK(tsapp_transmit_can_sync(@c, 1000)) then begin
    Log('A CAN message has been sent');
  end;

end;

procedure TfrmTestLibTSMaster.Button9Click(Sender: TObject);
var
  lst: PAnsiChar;
begin
  if CheckOK(tsapp_get_application_list(@lst)) then begin
    edtApplicationList.Text := string(AnsiString(lst));
    Log('Application list retrieved: ' + edtApplicationList.Text);
  end;

end;

procedure TfrmTestLibTSMaster.cbDeviceType1Change(Sender: TObject);
var
  idx: integer;
begin
  idx := (Sender as TComboBox).ItemIndex;
  if idx = -1 then exit;
  SetDeviceSubType(TLIBBusToolDeviceType(idx), cbDeviceSubType1);

  if TLIBBusToolDeviceType(idx) = PEAK_USB_DEVICE then begin
    ShowMessage('Note: PEAK USB device hardware index starts from 81, not 0');
  end;

end;

procedure TfrmTestLibTSMaster.cbDeviceType2Change(Sender: TObject);
var
  idx: integer;
begin
  idx := (Sender as TComboBox).ItemIndex;
  if idx = -1 then exit;
  SetDeviceSubType(TLIBBusToolDeviceType(idx), cbDeviceSubType2);

  if TLIBBusToolDeviceType(idx) = PEAK_USB_DEVICE then begin
    ShowMessage('Note: PEAK USB device hardware index starts from 81, not 0');
  end;

end;

function TfrmTestLibTSMaster.CheckOK(const AResultCode: integer): Boolean;
var
  p: pansichar;
begin
  if AResultCode = 0 then begin
    Result := true;
  end else begin
    Result := false;
    if 0 = tsapp_get_error_description(aresultcode, @p) then begin
      Log('Error occured: ' + string(AnsiString(p)));
    end else begin
      Log('Error occured, code = ' + aresultcode.tostring);
    end;
  end;

end;

procedure TfrmTestLibTSMaster.chkVendorClick(Sender: TObject);
begin
  if CheckOK(tsapp_set_vendor_detect_preferences(
    true, true, true, True, true, True
  )) then begin
    Log('All vendor detection enabled.');
  end;

end;

procedure TfrmTestLibTSMaster.DisplayThreadedEventMessage(const AStr: string);
begin
  tthread.Queue(
    nil,
    procedure begin
      Log(AStr);
    end
  );

end;

procedure TfrmTestLibTSMaster.FormCreate(Sender: TObject);
begin
  initialize_lib_tsmaster(GetMyApplication);
  tsapp_enable_receive_fifo;
  tsapp_set_logger(LibTSMasterLogger);
  cbDeviceType1Change(cbDeviceType1);
  cbDeviceType2Change(cbDeviceType2);
  page.TabIndex := 0;
  LoadHardwareDevices;
  Log('Current directory: ' + GetCurrentDir);

end;

procedure TfrmTestLibTSMaster.LoadHardwareDevices;
var
  i:Integer;
begin
  cbDeviceType1.Items.Clear;
  cbDeviceType2.Items.Clear;
  for i := 0 to BUS_TOOL_DEVICE_TYPE_COUNT - 1 do
  begin
    cbDeviceType1.Items.add(BUS_TOOL_DEVICE_NAMES[i]);
    cbDeviceType2.Items.add(BUS_TOOL_DEVICE_NAMES[i]);
  end;

end;

procedure TfrmTestLibTSMaster.FormDestroy(Sender: TObject);
begin
  tsapp_set_logger(nil);
  InternalUnregisterEvents;
  finalize_lib_tsmaster;

end;

function TfrmTestLibTSMaster.GetMyApplication: PAnsiChar;
begin
  FApplicationName := ansistring(edtApplication.Text);
  Result := PAnsiChar(FApplicationName);

end;

function TfrmTestLibTSMaster.GetMyApplicationString: string;
begin
  Result := string(FApplicationName);

end;

procedure TfrmTestLibTSMaster.InternalUnregisterEvents;
begin
  tsapp_unregister_event_can(self, OnCANRxEvent);
  tsapp_unregister_event_canfd(Self, OnCANFDRxEvent);
  tsapp_unregister_event_lin(self, OnLINRxEvent);

end;

procedure TfrmTestLibTSMaster.Log(const AStr: string);
begin
  if mm.lines.Count > 1000 then begin
    mm.lines.Delete(0);
  end;
  mm.lines.Add(TimeToStr(Now) + ': ' + AStr);

end;

procedure TfrmTestLibTSMaster.SetDeviceSubType(
  const ADevType: TLIBBusToolDeviceType; const ASubTypeCombo: TComboBox);
var
  j: integer;
  iXL: TLIB_XL_Device_Sub_Type;
  iTS: TLIB_TS_Device_Sub_Type;
begin
  ASubTypeCombo.Clear;
  case ADevType of
    TLIBBusToolDeviceType(BUS_UNKNOWN_TYPE): begin
      ASubTypeCombo.Items.AddObject('Default', tobject(-1));
      ASubTypeCombo.ItemIndex := 0;
    end;
    TLIBBusToolDeviceType(TS_TCP_DEVICE): begin
      ASubTypeCombo.Items.AddObject('Default', tobject(-1));
      ASubTypeCombo.ItemIndex := 0;
    end;
    TLIBBusToolDeviceType(XL_USB_DEVICE): begin
      for iXL:=Low(TLIB_XL_Device_Sub_Type) to High(TLIB_XL_Device_Sub_Type) do begin
        j := Integer(iXL);
        if XL_HWTYPE_NAMES[j].Equals('None') then Continue;
        ASubTypeCombo.Items.AddObject(xl_HWTYPE_NAMES[j], tobject(j));
      end;
      // set default
      ASubTypeCombo.ItemIndex := 0; // vector virtual can
    end;
    TLIBBusToolDeviceType(TS_USB_DEVICE): begin
      for iTS:=Low(TLIB_TS_Device_Sub_Type) to High(TLIB_TS_Device_Sub_Type) do begin
        j := Integer(iTS);
        ASubTypeCombo.Items.AddObject(TS_HWTYPE_NAMES[j], tobject(j));
      end;
      // set default
      ASubTypeCombo.ItemIndex := 3; // TSCAN mini
    end
    else
    begin
      // do nothing, leave index = -1
    end;
  end;

end;

procedure TfrmTestLibTSMaster.SetMappingByCombo(
  const AAppChnType: TLIBApplicationChannelType;
  const AHwIdx: Integer;
  const AAppChnIdx: integer;
  const AHWChannelIdx: integer;
  const ADevCombo: TComboBox;
  const ASubDevCombo: TComboBox
);
var
  m: TLIBTSMapping;
begin
  System.AnsiStrings.StrPCopy(@m.FAppName[0], AnsiString(edtApplication.Text));
  m.FHWIndex := AHwIdx;
  m.FHWDeviceType := TLIBBusToolDeviceType(ADevCombo.ItemIndex);
  System.AnsiStrings.StrPCopy(@m.FHWDeviceName[0], ansistring(ADevCombo.Text + ' - ' + ASubDevCombo.text));
  m.FAppChannelIndex := AAppChnIdx;
  m.FAppChannelType := AAppChnType;
  if ASubDevCombo.ItemIndex = -1 then begin
    m.FHWDeviceSubType := -1;
  end else begin
    m.FHWDeviceSubType := Integer(ASubDevCombo.Items.Objects[ASubDevCombo.ItemIndex]);
  end;
  m.FHWChannelIndex := AHWChannelIdx;
  m.FMappingDisabled := false;
  if CheckOK(tsapp_set_mapping(@m)) then begin
    log('Mappings of channel ' + (aappchnidx+1).ToString + ' has been set');
  end;

end;

end.
