program EPR;

uses
  System.StartUpCopy,
  FMX.Forms,
  ERPPrincipal in 'ERPPrincipal.pas' {PageIndex},
  Router in 'View\Router\Router.pas',
  frmPageHome in 'View\Router\Pages\Home\frmPageHome.pas' {PageHome},
  frmLayout in 'View\Router\Layout\frmLayout.pas' {PageLayout},
  ButtomMenu in 'View\Router\Components\ButtomMenu\ButtomMenu.pas' {ComponentButtomMenu: TFrame},
  SideBar in 'View\Router\Components\SideBar\SideBar.pas' {ComponentSideBar: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.Run;
end.
