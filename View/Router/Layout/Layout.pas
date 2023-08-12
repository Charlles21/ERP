unit Layout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.MultiView, FMX.Objects, Router4D.Interfaces;

type
  TPageLayout = class(TForm, iRouter4DComponent)
    lytContainer: TLayout;
    MultiView1: TMultiView;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    lytMain: TLayout;
    lytNavBar: TLayout;
    lytBody: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render: TFMXObject;
    procedure UnRender;
  end;

var
  PageLayout: TPageLayout;

implementation

{$R *.fmx}

{ TPageLayout }

function TPageLayout.Render: TFMXObject;
begin
 Result := lytContainer;
end;

procedure TPageLayout.UnRender;
begin

end;

end.
