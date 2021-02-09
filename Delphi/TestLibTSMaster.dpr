program TestLibTSMaster;

uses
  Vcl.Forms,
  fTestLibTSMaster in 'fTestLibTSMaster.pas' {frmTestLibTSMaster};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTestLibTSMaster, frmTestLibTSMaster);
  Application.Run;
end.
