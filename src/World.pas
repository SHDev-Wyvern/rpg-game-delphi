unit World;

interface

uses
  System.Generics.Collections,
  Character,
  Player,
  Enemy;

type
  TLocation = record
    Name: string;
    Description: string;
    Level: Integer;
  end;

  TWorld = class
  private
    FGameName: string;
    FCurrentLocation: string;
    FPlayerCharacter: TPlayer;
    FEnemies: TList<TEnemy>;
    FLocations: TDictionary<string, TLocation>;
    FGameTime: Integer;
    FPaused: Boolean;
  public
    constructor Create(const AGameName: string);
    destructor Destroy; override;

    { World Management }
    procedure Initialize;
    procedure Update;
    procedure Shutdown;

    { Location Management }
    procedure AddLocation(const ALocationName: string; const ALocation: TLocation);
    function GetLocation(const ALocationName: string): TLocation;
    procedure TravelTo(const ALocationName: string);
    function GetCurrentLocation: string;

    { Character Management }
    procedure SetPlayerCharacter(APlayer: TPlayer);
    function GetPlayerCharacter: TPlayer;

    { Enemy Management }
    procedure SpawnEnemy(AEnemy: TEnemy);
    procedure RemoveEnemy(AEnemy: TEnemy);
    function GetAllEnemies: TList<TEnemy>;
    function GetEnemiesInLocation(const ALocationName: string): TList<TEnemy>;

    { Game State }
    procedure PauseGame;
    procedure ResumeGame;
    function IsPaused: Boolean;
    function GetGameTime: Integer;
    procedure AdvanceTime(ATimeUnits: Integer);

    { Game Events }
    procedure OnEnemyDefeated(AEnemy: TEnemy);
    procedure OnPlayerLevelUp;
    procedure OnGameOver;

    { Properties }
    property GameName: string read FGameName;
    property CurrentLocation: string read GetCurrentLocation;
    property PlayerCharacter: TPlayer read GetPlayerCharacter write SetPlayerCharacter;
    property Paused: Boolean read IsPaused;
    property GameTime: Integer read GetGameTime;
  end;

implementation

constructor TWorld.Create(const AGameName: string);
begin
  inherited Create;
  FGameName := AGameName;
  FCurrentLocation := '';
  FPlayerCharacter := nil;
  FEnemies := TList<TEnemy>.Create;
  FLocations := TDictionary<string, TLocation>.Create;
  FGameTime := 0;
  FPaused := False;
end;

destructor TWorld.Destroy;
begin
  FEnemies.Clear;
  FreeAndNil(FEnemies);
  FLocations.Clear;
  FreeAndNil(FLocations);
  inherited Destroy;
end;

procedure TWorld.Initialize;
begin
  { TODO: Implement world initialization logic }
end;

procedure TWorld.Update;
begin
  { TODO: Implement world update logic }
end;

procedure TWorld.Shutdown;
begin
  { TODO: Implement world shutdown logic }
end;

procedure TWorld.AddLocation(const ALocationName: string; const ALocation: TLocation);
begin
  { TODO: Implement add location logic }
end;

function TWorld.GetLocation(const ALocationName: string): TLocation;
begin
  { TODO: Implement get location logic }
  Result.Name := '';
  Result.Description := '';
  Result.Level := 0;
end;

procedure TWorld.TravelTo(const ALocationName: string);
begin
  { TODO: Implement travel to location logic }
end;

function TWorld.GetCurrentLocation: string;
begin
  Result := FCurrentLocation;
end;

procedure TWorld.SetPlayerCharacter(APlayer: TPlayer);
begin
  FPlayerCharacter := APlayer;
end;

function TWorld.GetPlayerCharacter: TPlayer;
begin
  Result := FPlayerCharacter;
end;

procedure TWorld.SpawnEnemy(AEnemy: TEnemy);
begin
  { TODO: Implement spawn enemy logic }
end;

procedure TWorld.RemoveEnemy(AEnemy: TEnemy);
begin
  { TODO: Implement remove enemy logic }
end;

function TWorld.GetAllEnemies: TList<TEnemy>;
begin
  Result := FEnemies;
end;

function TWorld.GetEnemiesInLocation(const ALocationName: string): TList<TEnemy>;
begin
  { TODO: Implement get enemies in location logic }
  Result := nil;
end;

procedure TWorld.PauseGame;
begin
  FPaused := True;
end;

procedure TWorld.ResumeGame;
begin
  FPaused := False;
end;

function TWorld.IsPaused: Boolean;
begin
  Result := FPaused;
end;

function TWorld.GetGameTime: Integer;
begin
  Result := FGameTime;
end;

procedure TWorld.AdvanceTime(ATimeUnits: Integer);
begin
  { TODO: Implement advance time logic }
end;

procedure TWorld.OnEnemyDefeated(AEnemy: TEnemy);
begin
  { TODO: Implement on enemy defeated event logic }
end;

procedure TWorld.OnPlayerLevelUp;
begin
  { TODO: Implement on player level up event logic }
end;

procedure TWorld.OnGameOver;
begin
  { TODO: Implement on game over event logic }
end;

end.
