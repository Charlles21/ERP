unit SideBar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts;

type
  TComponentSideBar = class(TFrame)
    lytContainer: TLayout;
  private
    { Private declarations }
  public
    class function new: TComponentSideBar;
    function component: TFMXObject;
  end;

implementation

{$R *.fmx}

{ TComponentSideBar }

function TComponentSideBar.component: TFMXObject;
begin
  result := lytContainer;
end;

class function TComponentSideBar.new: TComponentSideBar;
begin
  result := Self.Create(nil);
end;

end.
