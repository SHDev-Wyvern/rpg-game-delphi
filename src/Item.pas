unit Item;

interface

type
  TItemType = (itWeapon, itArmor, itPotion, itConsumable, itQuestItem);
  TItemRarity = (irCommon, irUncommon, irRare, irEpic, irLegendary);

  TItem = class
  private
    FName: string;
    FItemType: TItemType;
    FRarity: TItemRarity;
    FLevel: Integer;
    FValue: Integer;
    FDescription: string;
    FIsEquipped: Boolean;
  public
    constructor Create(const AName: string; AItemType: TItemType; ARarity: TItemRarity; ALevel: Integer);
    destructor Destroy; override;

    { Getters }
    function GetName: string;
    function GetItemType: TItemType;
    function GetRarity: TItemRarity;
    function GetLevel: Integer;
    function GetValue: Integer;
    function GetDescription: string;
    function IsEquipped: Boolean;

    { Setters }
    procedure SetName(const AName: string);
    procedure SetValue(AValue: Integer);
    procedure SetDescription(const ADesc: string);
    procedure SetEquipped(AEquipped: Boolean);

    { Item Methods }
    function GetTypeAsString: string;
    function GetRarityAsString: string;
    procedure Use;
    function GetStatBonus: Integer;

    { Properties }
    property Name: string read GetName write SetName;
    property ItemType: TItemType read GetItemType;
    property Rarity: TItemRarity read GetRarity;
    property Level: Integer read GetLevel;
    property Value: Integer read GetValue write SetValue;
    property Description: string read GetDescription write SetDescription;
    property Equipped: Boolean read IsEquipped write SetEquipped;
  end;

implementation

constructor TItem.Create(const AName: string; AItemType: TItemType; ARarity: TItemRarity; ALevel: Integer);
begin
  inherited Create;
  FName := AName;
  FItemType := AItemType;
  FRarity := ARarity;
  FLevel := ALevel;
  FValue := 100 * (ALevel + 1);
  FDescription := '';
  FIsEquipped := False;
end;

destructor TItem.Destroy;
begin
  inherited Destroy;
end;

function TItem.GetName: string;
begin
  Result := FName;
end;

function TItem.GetItemType: TItemType;
begin
  Result := FItemType;
end;

function TItem.GetRarity: TItemRarity;
begin
  Result := FRarity;
end;

function TItem.GetLevel: Integer;
begin
  Result := FLevel;
end;

function TItem.GetValue: Integer;
begin
  Result := FValue;
end;

function TItem.GetDescription: string;
begin
  Result := FDescription;
end;

function TItem.IsEquipped: Boolean;
begin
  Result := FIsEquipped;
end;

procedure TItem.SetName(const AName: string);
begin
  FName := AName;
end;

procedure TItem.SetValue(AValue: Integer);
begin
  FValue := AValue;
end;

procedure TItem.SetDescription(const ADesc: string);
begin
  FDescription := ADesc;
end;

procedure TItem.SetEquipped(AEquipped: Boolean);
begin
  FIsEquipped := AEquipped;
end;

function TItem.GetTypeAsString: string;
begin
  { TODO: Implement get type as string logic }
  Result := '';
end;

function TItem.GetRarityAsString: string;
begin
  { TODO: Implement get rarity as string logic }
  Result := '';
end;

procedure TItem.Use;
begin
  { TODO: Implement use item logic }
end;

function TItem.GetStatBonus: Integer;
begin
  { TODO: Implement get stat bonus logic }
  Result := 0;
end;

end.
