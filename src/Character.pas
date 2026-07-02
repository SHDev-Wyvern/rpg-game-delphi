unit Character;

interface

type
  TCharacter = class
  private
    FName: string;
    FLevel: Integer;
    FHealth: Integer;
    FMaxHealth: Integer;
    FMana: Integer;
    FMaxMana: Integer;
    FAttack: Integer;
    FDefense: Integer;
    FExperience: Integer;
  public
    constructor Create(const AName: string; ALevel: Integer);
    destructor Destroy; override;

    { Getters }
    function GetName: string;
    function GetLevel: Integer;
    function GetHealth: Integer;
    function GetMaxHealth: Integer;
    function GetMana: Integer;
    function GetMaxMana: Integer;
    function GetAttack: Integer;
    function GetDefense: Integer;
    function GetExperience: Integer;

    { Setters }
    procedure SetName(const AName: string);
    procedure SetLevel(ALevel: Integer);
    procedure SetHealth(AHealth: Integer);
    procedure SetMana(AMana: Integer);
    procedure SetExperience(AExperience: Integer);

    { Combat Methods }
    function CalculateDamage: Integer;
    procedure TakeDamage(ADamage: Integer);
    procedure RestoreHealth(AAmount: Integer);
    procedure RestoreMana(AAmount: Integer);

    { Status Methods }
    function IsAlive: Boolean;
    function HasMana(AAmount: Integer): Boolean;
    procedure LevelUp;
    procedure GainExperience(AAmount: Integer);

    { Properties }
    property Name: string read GetName write SetName;
    property Level: Integer read GetLevel write SetLevel;
    property Health: Integer read GetHealth write SetHealth;
    property MaxHealth: Integer read GetMaxHealth;
    property Mana: Integer read GetMana write SetMana;
    property MaxMana: Integer read GetMaxMana;
    property Attack: Integer read GetAttack;
    property Defense: Integer read GetDefense;
    property Experience: Integer read GetExperience write SetExperience;
  end;

implementation

constructor TCharacter.Create(const AName: string; ALevel: Integer);
begin
  inherited Create;
  FName := AName;
  FLevel := ALevel;
  FMaxHealth := 100 + (ALevel * 10);
  FHealth := FMaxHealth;
  FMaxMana := 50 + (ALevel * 5);
  FMana := FMaxMana;
  FAttack := 10 + (ALevel * 2);
  FDefense := 5 + (ALevel * 1);
  FExperience := 0;
end;

destructor TCharacter.Destroy;
begin
  inherited Destroy;
end;

function TCharacter.GetName: string;
begin
  Result := FName;
end;

function TCharacter.GetLevel: Integer;
begin
  Result := FLevel;
end;

function TCharacter.GetHealth: Integer;
begin
  Result := FHealth;
end;

function TCharacter.GetMaxHealth: Integer;
begin
  Result := FMaxHealth;
end;

function TCharacter.GetMana: Integer;
begin
  Result := FMana;
end;

function TCharacter.GetMaxMana: Integer;
begin
  Result := FMaxMana;
end;

function TCharacter.GetAttack: Integer;
begin
  Result := FAttack;
end;

function TCharacter.GetDefense: Integer;
begin
  Result := FDefense;
end;

function TCharacter.GetExperience: Integer;
begin
  Result := FExperience;
end;

procedure TCharacter.SetName(const AName: string);
begin
  FName := AName;
end;

procedure TCharacter.SetLevel(ALevel: Integer);
begin
  FLevel := ALevel;
end;

procedure TCharacter.SetHealth(AHealth: Integer);
begin
  if AHealth < 0 then
    FHealth := 0
  else if AHealth > FMaxHealth then
    FHealth := FMaxHealth
  else
    FHealth := AHealth;
end;

procedure TCharacter.SetMana(AMana: Integer);
begin
  if AMana < 0 then
    FMana := 0
  else if AMana > FMaxMana then
    FMana := FMaxMana
  else
    FMana := AMana;
end;

procedure TCharacter.SetExperience(AExperience: Integer);
begin
  FExperience := AExperience;
end;

function TCharacter.CalculateDamage: Integer;
begin
  { TODO: Implement damage calculation logic }
  Result := 0;
end;

procedure TCharacter.TakeDamage(ADamage: Integer);
begin
  { TODO: Implement take damage logic }
end;

procedure TCharacter.RestoreHealth(AAmount: Integer);
begin
  { TODO: Implement restore health logic }
end;

procedure TCharacter.RestoreMana(AAmount: Integer);
begin
  { TODO: Implement restore mana logic }
end;

function TCharacter.IsAlive: Boolean;
begin
  { TODO: Implement is alive check }
  Result := False;
end;

function TCharacter.HasMana(AAmount: Integer): Boolean;
begin
  { TODO: Implement mana check }
  Result := False;
end;

procedure TCharacter.LevelUp;
begin
  { TODO: Implement level up logic }
end;

procedure TCharacter.GainExperience(AAmount: Integer);
begin
  { TODO: Implement gain experience logic }
end;

end.
