unit Inventory;

interface

uses
  System.Generics.Collections,
  Item;

type
  TInventory = class
  private
    FItems: TList<TItem>;
    FMaxSlots: Integer;
  public
    constructor Create(AMaxSlots: Integer);
    destructor Destroy; override;

    { Item Management }
    procedure AddItem(AItem: TItem);
    procedure RemoveItem(AItem: TItem);
    procedure RemoveItemByName(const AItemName: string);
    function FindItem(const AItemName: string): TItem;
    procedure ClearInventory;

    { Inventory Status }
    function GetItemCount: Integer;
    function GetAvailableSlots: Integer;
    function IsFull: Boolean;
    function IsEmpty: Boolean;

    { Equipment }
    function GetEquippedItem(AItemType: TItemType): TItem;
    procedure EquipItem(AItem: TItem);
    procedure UnequipItem(AItem: TItem);

    { List Operations }
    function GetItemAt(AIndex: Integer): TItem;
    function GetAllItems: TList<TItem>;

    { Utility Methods }
    procedure SortByValue;
    procedure SortByRarity;
    function GetTotalValue: Integer;

    { Properties }
    property ItemCount: Integer read GetItemCount;
    property AvailableSlots: Integer read GetAvailableSlots;
    property MaxSlots: Integer read FMaxSlots;
  end;

implementation

constructor TInventory.Create(AMaxSlots: Integer);
begin
  inherited Create;
  FItems := TList<TItem>.Create;
  FMaxSlots := AMaxSlots;
end;

destructor TInventory.Destroy;
begin
  FItems.Clear;
  FreeAndNil(FItems);
  inherited Destroy;
end;

procedure TInventory.AddItem(AItem: TItem);
begin
  { TODO: Implement add item logic }
end;

procedure TInventory.RemoveItem(AItem: TItem);
begin
  { TODO: Implement remove item logic }
end;

procedure TInventory.RemoveItemByName(const AItemName: string);
begin
  { TODO: Implement remove item by name logic }
end;

function TInventory.FindItem(const AItemName: string): TItem;
begin
  { TODO: Implement find item logic }
  Result := nil;
end;

procedure TInventory.ClearInventory;
begin
  { TODO: Implement clear inventory logic }
end;

function TInventory.GetItemCount: Integer;
begin
  Result := FItems.Count;
end;

function TInventory.GetAvailableSlots: Integer;
begin
  Result := FMaxSlots - FItems.Count;
end;

function TInventory.IsFull: Boolean;
begin
  { TODO: Implement is full logic }
  Result := False;
end;

function TInventory.IsEmpty: Boolean;
begin
  Result := FItems.Count = 0;
end;

function TInventory.GetEquippedItem(AItemType: TItemType): TItem;
begin
  { TODO: Implement get equipped item logic }
  Result := nil;
end;

procedure TInventory.EquipItem(AItem: TItem);
begin
  { TODO: Implement equip item logic }
end;

procedure TInventory.UnequipItem(AItem: TItem);
begin
  { TODO: Implement unequip item logic }
end;

function TInventory.GetItemAt(AIndex: Integer): TItem;
begin
  if (AIndex >= 0) and (AIndex < FItems.Count) then
    Result := FItems[AIndex]
  else
    Result := nil;
end;

function TInventory.GetAllItems: TList<TItem>;
begin
  Result := FItems;
end;

procedure TInventory.SortByValue;
begin
  { TODO: Implement sort by value logic }
end;

procedure TInventory.SortByRarity;
begin
  { TODO: Implement sort by rarity logic }
end;

function TInventory.GetTotalValue: Integer;
begin
  { TODO: Implement get total value logic }
  Result := 0;
end;

end.
