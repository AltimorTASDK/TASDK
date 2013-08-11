module UnrealScript.TribesGame.TrEquipInterface;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;

extern(C++) interface TrEquipInterface : UObject
{
	public @property final bool m_bLoadComplete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool m_bLoadComplete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	final bool IsClassOwned(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53581], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsLoadoutOwned(int ClassId, int Loadout)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53591], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final ScriptString GetLoadoutName(int ClassId, int Loadout)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53593], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final float GetClassUnlockPercent(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56825], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final int GetClassPrice(int ClassId, int Currency)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56828], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int GetDailyDealItemId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56831], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetDailyDealPercentOff()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56833], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetBundleParent(int BundleId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BundleId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57808], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool IsBundleOwned(int BundleId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BundleId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57810], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final int GetVendorSize(int VendorId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57817], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int GetVendorItemId(int VendorId, int Index)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57819], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool GetVendorItemPrice(int VendorId, int VendorItemId, int Currency, int* Price)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = VendorItemId;
		*cast(int*)&params[8] = Currency;
		*cast(int*)&params[12] = *Price;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57834], params.ptr, cast(void*)0);
		*Price = *cast(int*)&params[12];
		return *cast(bool*)&params[16];
	}
	final bool GetVendorItemInfo(int VendorId, int VendorItemId, ScriptString* ItemName, ScriptString* itemDescr, ScriptString* ribbonDesc)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = VendorItemId;
		*cast(ScriptString*)&params[8] = *ItemName;
		*cast(ScriptString*)&params[20] = *itemDescr;
		*cast(ScriptString*)&params[32] = *ribbonDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57846], params.ptr, cast(void*)0);
		*ItemName = *cast(ScriptString*)&params[8];
		*itemDescr = *cast(ScriptString*)&params[20];
		*ribbonDesc = *cast(ScriptString*)&params[32];
		return *cast(bool*)&params[44];
	}
	final bool RequestPurchaseGeneral(int VendorId, int VendorItemId, int Currency, ScriptString UserCustomInput)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = VendorItemId;
		*cast(int*)&params[8] = Currency;
		*cast(ScriptString*)&params[12] = UserCustomInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57889], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final int GetActiveEquipId(int ClassId, int Type, int Loadout)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58161], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final int GetEquipCount(int ClassId, int Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58167], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int GetEquipId(int ClassId, int Type, int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58169], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final bool SetLoadoutName(int ClassId, int Loadout, ScriptString loadoutName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		*cast(ScriptString*)&params[8] = loadoutName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58224], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final int GetFirstClassId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58236], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetNextClassId(int PrevClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PrevClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58238], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int GetClassId(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58250], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool RequestPurchaseClass(int ClassId, int Currency)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58287], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final int GetReticuleValue(int EquipId, TrObject.ReticuleDataType Type)
	{
		ubyte params[9];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(TrObject.ReticuleDataType*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58603], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final ScriptString GetReticuleString(int EquipId, TrObject.ReticuleDataType Type)
	{
		ubyte params[17];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(TrObject.ReticuleDataType*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58605], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final bool SetActiveEquipId(int ClassId, int Type, int Loadout, int equip)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = Loadout;
		*cast(int*)&params[12] = equip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58615], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool IsEquipOwned(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58645], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool IsEquipMaxed(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58647], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final int GetEquipLevel(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58649], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final bool HasReticule(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58654], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final int GetMasteryPrice(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58689], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final int GetEquipPrice(int ClassId, int Type, int equip, int Currency)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58704], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	final bool RequestPurchaseMastery(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58760], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool RequestPurchaseEquip(int ClassId, int Type, int equip, int Currency)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58762], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool SetReticuleValue(int EquipId, TrObject.ReticuleDataType Type, int nValue)
	{
		ubyte params[13];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(TrObject.ReticuleDataType*)&params[4] = Type;
		*cast(int*)&params[8] = nValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58766], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool SetReticuleString(int EquipId, TrObject.ReticuleDataType Type, ScriptString sValue)
	{
		ubyte params[21];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(TrObject.ReticuleDataType*)&params[4] = Type;
		*cast(ScriptString*)&params[8] = sValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58768], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final int GetLoadoutPrice(int ClassId, int Loadout, int Currency)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		*cast(int*)&params[8] = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59411], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final bool RequestPurchaseLoadout(int ClassId, int Loadout, int Currency)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		*cast(int*)&params[8] = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59426], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool IsDailyDealOwned()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59556], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetDailyDealOldPrice()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59561], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetDailyDealNewPrice()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59563], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetDailyDealClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59565], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetDailyDealType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59567], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetDailyDealSecsLeft()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59575], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetDailyDealXPPrice()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61264], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool RequestPurchaseDeal(int Currency)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61281], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool OwnsReticule(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61583], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void DelegateOnMarshalEvent(UObject.Pointer pMarEvent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject.Pointer*)params.ptr = pMarEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87425], params.ptr, cast(void*)0);
	}
	final void LoadInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87428], cast(void*)0, cast(void*)0);
	}
	final void InitClass(int ClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87429], params.ptr, cast(void*)0);
	}
	final void SetDefaultEquip(int ClassId, int Type, int equip)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87431], params.ptr, cast(void*)0);
	}
	final void OnMarshalEvent(UObject.Pointer pMarEvent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject.Pointer*)params.ptr = pMarEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87435], params.ptr, cast(void*)0);
	}
	final bool RegisterMarshalCallback(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* MarshalEventDelegate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = MarshalEventDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87437], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final int GetClassCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87442], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetClassRibbon(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87447], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int GetNextEquipId(int ClassId, int Type, int PrevClass)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = PrevClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87469], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final int GetEquipRibbon(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87474], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final int GetFirstEquipId(int ClassId, int Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87479], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int GetDailyDealLootId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87498], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void RetrieveActives()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87501], cast(void*)0, cast(void*)0);
	}
	final int GetUpgradePrice(int ClassId, int Type, int equip, int Upgrade, int Currency)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Upgrade;
		*cast(int*)&params[16] = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87509], params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	final bool RequestPurchaseReticule(int ClassId, int Type, int equip, int Currency)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87528], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool RequestPurchaseUpgrade(int ClassId, int Type, int equip, int Upgrade, int Currency)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Upgrade;
		*cast(int*)&params[16] = Currency;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87534], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final void SaveProfile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87541], cast(void*)0, cast(void*)0);
	}
	final void InitEquipManager()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87570], cast(void*)0, cast(void*)0);
	}
	final void InitClassList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87571], cast(void*)0, cast(void*)0);
	}
}
