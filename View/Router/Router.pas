unit Router;

interface

type
  TRouter = class
private
  constructor Create;
  destructor Destroy; Override;
public
  class function New: TRouter;
end;

var
  cRouter : TRouter;

implementation

uses
  Router4D;

constructor TRouter.Create;
begin
 { TRouter4D
     .Switch
         .Router('Home', );}
end;

destructor TRouter.Destroy;
begin
  inherited;
end;

class function TRouter.New: TRouter;
begin
   Result := Self.Create;
end;

initialization
  cRouter := TRouter.New;

Finalization
  cRouter.free;
end.
