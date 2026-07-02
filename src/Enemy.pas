unit Enemy;

interface

uses
  Character;

type
  TEnemyType = (etGoblin, etOrc, etDragon, etZombie, etWizard);

  TEnemy = class(TCharacter)
  private
    FEnemyType: TEnemyType;
    FDropGold: Integer;
    FDropExperience: Integer;
    FAggressive: Boolean;
  public
    constructor Create(const AName: string; ALevel: Integer; AEnemyType: TEnemyType);
    destructor Destroy; override;

    { Getters }
    function GetEnemyType: TEnemyType;
    function GetDropGold: Integer;
    function GetDropExperience: Integer;
    function IsAggressive: Boolean;

    { Setters }
    procedure SetEnemyType(AEnemyType: TEnemyType);
    procedure SetDropGold(AGold: Integer);
    procedure SetDropExperience(AExp: Integer);

    { Enemy-specific Methods }
    procedure InitializeByType;
    function GetAIDecision: string;
    procedure Attack(const ATargetName: string);
    procedure UseAbility(const AAbilityName: string);
    function DropLoot: Integer;
    procedure Patrol;
    procedure Flee;

    { Properties }
    property EnemyType: TEnemyType read GetEnemyType write SetEnemyType;
    property DropGold: Integer read GetDropGold write SetDropGold;
    property DropExperience: Integer read GetDropExperience write SetDropExperience;
    property Aggressive: Boolean read IsAggressive;
  end;

implementation

constructor TEnemy.Create(const AName: string; ALevel: Integer; AEnemyType: TEnemyType);
begin
  inherited Create(AName, ALevel);
  FEnemyType := AEnemyType;
  FDropGold := 50 * ALevel;
  FDropExperience := 100 * ALevel;
  FAggressive := True;
  InitializeByType;
end;

destructor TEnemy.Destroy;
begin
  inherited Destroy;
end;

function TEnemy.GetEnemyType: TEnemyType;
begin
  Result := FEnemyType;
end;

function TEnemy.GetDropGold: Integer;
begin
  Result := FDropGold;
end;

function TEnemy.GetDropExperience: Integer;
begin
  Result := FDropExperience;
end;

function TEnemy.IsAggressive: Boolean;
begin
  Result := FAggressive;
end;

procedure TEnemy.SetEnemyType(AEnemyType: TEnemyType);
begin
  FEnemyType := AEnemyType;
  InitializeByType;
end;

procedure TEnemy.SetDropGold(AGold: Integer);
begin
  FDropGold := AGold;
end;

procedure TEnemy.SetDropExperience(AExp: Integer);
begin
  FDropExperience := AExp;
end;

procedure TEnemy.InitializeByType;
begin
  { TODO: Implement type-specific initialization logic }
end;

function TEnemy.GetAIDecision: string;
begin
  { TODO: Implement AI decision logic }
  Result := '';
end;

procedure TEnemy.Attack(const ATargetName: string);
begin
  { TODO: Implement attack logic }
end;

procedure TEnemy.UseAbility(const AAbilityName: string);
begin
  { TODO: Implement use ability logic }
end;

function TEnemy.DropLoot: Integer;
begin
  { TODO: Implement drop loot logic }
  Result := 0;
end;

procedure TEnemy.Patrol;
begin
  { TODO: Implement patrol logic }
end;

procedure TEnemy.Flee;
begin
  { TODO: Implement flee logic }
end;

end.
