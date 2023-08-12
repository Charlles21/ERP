program EPR;

uses
  System.StartUpCopy,
  FMX.Forms,
  ERPPrincipal in 'ERPPrincipal.pas' {PageIndex},
  Router in 'View\Router\Router.pas',
  uPageHome in 'View\Router\Pages\Home\uPageHome.pas' {PageHome},
  Layout in 'View\Router\Layout\Layout.pas' {PageLayout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.CreateForm(TPageLayout, PageLayout);
  Application.Run;
end.
