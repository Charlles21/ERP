unit frmLayout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.MultiView, FMX.Objects, Router4D.Interfaces,
  FMX.StdCtrls;

type
  TPageLayout = class(TForm, iRouter4DComponent)
    lytContainer: TLayout;
    MultiView1: TMultiView;
    Layout1: TLayout;
    lytMain: TLayout;
    lytNavBar: TLayout;
    lytBody: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render: TFMXObject;
    procedure UnRender;
  end;

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
