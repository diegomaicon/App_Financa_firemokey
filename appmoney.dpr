program appmoney;

uses
  System.StartUpCopy,
  FMX.Forms,
  Form_Index in 'Form_Index.pas' {frm_index},
  DataModulo in 'DataModulo.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(Tfrm_index, frm_index);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
