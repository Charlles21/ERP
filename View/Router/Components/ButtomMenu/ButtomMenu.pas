unit ButtomMenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Objects;

type
  TComponentButtomMenu = class(TFrame)
    lytContainer: TLayout;
    Menu: TLayout;
    lytMenu: TLayout;
    lytIImageInfoMenu: TLayout;
    lytImageMenu: TLayout;
    MenuImage: TImage;
    ImageInfo: TImage;
    lytDescricaoMenu: TLayout;
    lblDescricao: TLabel;
    lytSubMenu: TLayout;
    lytButtom: TLayout;
    procedure lytButtomClick(Sender: TObject);
  private
    { Private declarations }
    FHeight: Single;
    procedure redimencionaSubMenu;
  public
     constructor Create(AOwner: TComponent); override;
     class function new: TComponentButtomMenu;
     function component : TFMXObject;
     function SubMenu(Value: TFMXObject): TComponentButtomMenu;
  end;

implementation

{$R *.fmx}

{ TComponentButtomMenu }

function TComponentButtomMenu.component: TFMXObject;
begin
  result:= lytContainer;
end;

constructor TComponentButtomMenu.Create(AOwner: TComponent);
begin
  inherited;
  lytContainer.Height := 60;
end;

procedure TComponentButtomMenu.lytButtomClick(Sender: TObject);
begin
  lytContainer.Height := FHeight;
end;

class function TComponentButtomMenu.new: TComponentButtomMenu;
begin
  result := Self.Create(nil);
end;

procedure TComponentButtomMenu.redimencionaSubMenu;
begin
  for var I := 0 to pred(lytSubMenu.ComponentCount) do
    if lytSubMenu.Components[I] is Tlayout then
      FHeight := FHeight +  Tlayout(lytSubMenu.Components[I]).Height;
end;

function TComponentButtomMenu.SubMenu(Value: TFMXObject): TComponentButtomMenu;
begin
  result := Self;
  lytSubMenu.AddObject(Value);
end;

end.
