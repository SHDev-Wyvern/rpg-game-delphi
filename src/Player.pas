unit Player;

interface

uses
  Character;

type
  TPlayer = class(TCharacter)
  private
    FGold: Integer;
    FInventorySlots: Integer;
    FCurrentClass: string;
  public
    constructor Create(const AName: string; ALevel: Integer);
    destructor Destroy; override;

    { Getters }
    function GetGold: Integer;
    function GetInventorySlots: Integer;
    function GetCurrentClass: string;

    { Setters }
    procedure SetGold(AGold: Integer);
    procedure SetCurrentClass(const AClass: string);

    { Player-specific Methods }
    procedure GainGold(AAmount: Integer);
    procedure SpendGold(AAmount: Integer);
    procedure EquipItem(const AItemName: string);
    procedure UnequipItem(const AItemName: string);
    procedure UseSkill(const ASkillName: string);
    procedure LevelUpStats;
    procedure SaveProgress(const AFilename: string);
    procedure LoadProgress(const AFilename: string);

    { Properties }
    property Gold: Integer read GetGold write SetGold;
    property InventorySlots: Integer read GetInventorySlots;
    property CurrentClass: string read GetCurrentClass write SetCurrentClass;
  end;

implementation

constructor TPlayer.Create(const AName: string; ALevel: Integer);
begin
  inherited Create(AName, ALevel);
  FGold := 0;
  FInventorySlots := 10;
  FCurrentClass := 'Warrior';
end;

destructor TPlayer.Destroy;
begin
  inherited Destroy;
end;

function TPlayer.GetGold: Integer;
begin
  Result := FGold;
end;

function TPlayer.GetInventorySlots: Integer;
begin
  Result := FInventorySlots;
end;

function TPlayer.GetCurrentClass: string;
begin
  Result := FCurrentClass;
end;

procedure TPlayer.SetGold(AGold: Integer);
begin
  if AGold < 0 then
    FGold := 0
  else
    FGold := AGold;
end;

procedure TPlayer.SetCurrentClass(const AClass: string);
begin
  FCurrentClass := AClass;
end;

procedure TPlayer.GainGold(AAmount: Integer);
begin
  { TODO: Implement gain gold logic }
end;

procedure TPlayer.SpendGold(AAmount: Integer);
begin
  { TODO: Implement spend gold logic }
end;

procedure TPlayer.EquipItem(const AItemName: string);
begin
  { TODO: Implement equip item logic }
end;

procedure TPlayer.UnequipItem(const AItemName: string);
begin
  { TODO: Implement unequip item logic }
end;

procedure TPlayer.UseSkill(const ASkillName: string);
begin
  { TODO: Implement use skill logic }
end;

procedure TPlayer.LevelUpStats;
begin
  { TODO: Implement level up stats logic }
end;

procedure TPlayer.SaveProgress(const AFilename: string);
begin
  { TODO: Implement save progress logic }
end;

procedure TPlayer.LoadProgress(const AFilename: string);
begin
  { TODO: Implement load progress logic }
end;

end.
