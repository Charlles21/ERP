program EPR;

uses
  System.StartUpCopy,
  FMX.Forms,
  ERPPrincipal in 'ERPPrincipal.pas' {PageIndex},
  Router in 'View\Router\Router.pas',
  frmPageHome in 'View\Router\Pages\Home\frmPageHome.pas' {PageHome},
  frmLayout in 'View\Router\Layout\frmLayout.pas' {PageLayout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.Run;
end.
