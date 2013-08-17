module UnrealScript.TribesGame.TrEquipInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;

extern(C++) interface TrEquipInterface : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEquipInterface")()); }
	private static __gshared TrEquipInterface mDefaultProperties;
	@property final static TrEquipInterface DefaultProperties() { mixin(MGDPC!(TrEquipInterface, "TrEquipInterface TribesGame.Default__TrEquipInterface")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsClassOwned;
			ScriptFunction mIsLoadoutOwned;
			ScriptFunction mGetLoadoutName;
			ScriptFunction mGetClassUnlockPercent;
			ScriptFunction mGetClassPrice;
			ScriptFunction mGetDailyDealItemId;
			ScriptFunction mGetDailyDealPercentOff;
			ScriptFunction mGetBundleParent;
			ScriptFunction mIsBundleOwned;
			ScriptFunction mGetVendorSize;
			ScriptFunction mGetVendorItemId;
			ScriptFunction mGetVendorItemPrice;
			ScriptFunction mGetVendorItemInfo;
			ScriptFunction mRequestPurchaseGeneral;
			ScriptFunction mGetActiveEquipId;
			ScriptFunction mGetEquipCount;
			ScriptFunction mGetEquipId;
			ScriptFunction mSetLoadoutName;
			ScriptFunction mGetFirstClassId;
			ScriptFunction mGetNextClassId;
			ScriptFunction mGetClassId;
			ScriptFunction mRequestPurchaseClass;
			ScriptFunction mGetReticuleValue;
			ScriptFunction mGetReticuleString;
			ScriptFunction mSetActiveEquipId;
			ScriptFunction mIsEquipOwned;
			ScriptFunction mIsEquipMaxed;
			ScriptFunction mGetEquipLevel;
			ScriptFunction mHasReticule;
			ScriptFunction mGetMasteryPrice;
			ScriptFunction mGetEquipPrice;
			ScriptFunction mRequestPurchaseMastery;
			ScriptFunction mRequestPurchaseEquip;
			ScriptFunction mSetReticuleValue;
			ScriptFunction mSetReticuleString;
			ScriptFunction mGetLoadoutPrice;
			ScriptFunction mRequestPurchaseLoadout;
			ScriptFunction mIsDailyDealOwned;
			ScriptFunction mGetDailyDealOldPrice;
			ScriptFunction mGetDailyDealNewPrice;
			ScriptFunction mGetDailyDealClass;
			ScriptFunction mGetDailyDealType;
			ScriptFunction mGetDailyDealSecsLeft;
			ScriptFunction mGetDailyDealXPPrice;
			ScriptFunction mRequestPurchaseDeal;
			ScriptFunction mOwnsReticule;
			ScriptFunction mDelegateOnMarshalEvent;
			ScriptFunction mLoadInventory;
			ScriptFunction mInitClass;
			ScriptFunction mSetDefaultEquip;
			ScriptFunction mOnMarshalEvent;
			ScriptFunction mRegisterMarshalCallback;
			ScriptFunction mGetClassCount;
			ScriptFunction mGetClassRibbon;
			ScriptFunction mGetNextEquipId;
			ScriptFunction mGetEquipRibbon;
			ScriptFunction mGetFirstEquipId;
			ScriptFunction mGetDailyDealLootId;
			ScriptFunction mRetrieveActives;
			ScriptFunction mGetUpgradePrice;
			ScriptFunction mRequestPurchaseReticule;
			ScriptFunction mRequestPurchaseUpgrade;
			ScriptFunction mSaveProfile;
			ScriptFunction mInitEquipManager;
			ScriptFunction mInitClassList;
		}
		public @property static final
		{
			ScriptFunction IsClassOwned() { mixin(MGF!("mIsClassOwned", "Function TribesGame.TrEquipInterface.IsClassOwned")()); }
			ScriptFunction IsLoadoutOwned() { mixin(MGF!("mIsLoadoutOwned", "Function TribesGame.TrEquipInterface.IsLoadoutOwned")()); }
			ScriptFunction GetLoadoutName() { mixin(MGF!("mGetLoadoutName", "Function TribesGame.TrEquipInterface.GetLoadoutName")()); }
			ScriptFunction GetClassUnlockPercent() { mixin(MGF!("mGetClassUnlockPercent", "Function TribesGame.TrEquipInterface.GetClassUnlockPercent")()); }
			ScriptFunction GetClassPrice() { mixin(MGF!("mGetClassPrice", "Function TribesGame.TrEquipInterface.GetClassPrice")()); }
			ScriptFunction GetDailyDealItemId() { mixin(MGF!("mGetDailyDealItemId", "Function TribesGame.TrEquipInterface.GetDailyDealItemId")()); }
			ScriptFunction GetDailyDealPercentOff() { mixin(MGF!("mGetDailyDealPercentOff", "Function TribesGame.TrEquipInterface.GetDailyDealPercentOff")()); }
			ScriptFunction GetBundleParent() { mixin(MGF!("mGetBundleParent", "Function TribesGame.TrEquipInterface.GetBundleParent")()); }
			ScriptFunction IsBundleOwned() { mixin(MGF!("mIsBundleOwned", "Function TribesGame.TrEquipInterface.IsBundleOwned")()); }
			ScriptFunction GetVendorSize() { mixin(MGF!("mGetVendorSize", "Function TribesGame.TrEquipInterface.GetVendorSize")()); }
			ScriptFunction GetVendorItemId() { mixin(MGF!("mGetVendorItemId", "Function TribesGame.TrEquipInterface.GetVendorItemId")()); }
			ScriptFunction GetVendorItemPrice() { mixin(MGF!("mGetVendorItemPrice", "Function TribesGame.TrEquipInterface.GetVendorItemPrice")()); }
			ScriptFunction GetVendorItemInfo() { mixin(MGF!("mGetVendorItemInfo", "Function TribesGame.TrEquipInterface.GetVendorItemInfo")()); }
			ScriptFunction RequestPurchaseGeneral() { mixin(MGF!("mRequestPurchaseGeneral", "Function TribesGame.TrEquipInterface.RequestPurchaseGeneral")()); }
			ScriptFunction GetActiveEquipId() { mixin(MGF!("mGetActiveEquipId", "Function TribesGame.TrEquipInterface.GetActiveEquipId")()); }
			ScriptFunction GetEquipCount() { mixin(MGF!("mGetEquipCount", "Function TribesGame.TrEquipInterface.GetEquipCount")()); }
			ScriptFunction GetEquipId() { mixin(MGF!("mGetEquipId", "Function TribesGame.TrEquipInterface.GetEquipId")()); }
			ScriptFunction SetLoadoutName() { mixin(MGF!("mSetLoadoutName", "Function TribesGame.TrEquipInterface.SetLoadoutName")()); }
			ScriptFunction GetFirstClassId() { mixin(MGF!("mGetFirstClassId", "Function TribesGame.TrEquipInterface.GetFirstClassId")()); }
			ScriptFunction GetNextClassId() { mixin(MGF!("mGetNextClassId", "Function TribesGame.TrEquipInterface.GetNextClassId")()); }
			ScriptFunction GetClassId() { mixin(MGF!("mGetClassId", "Function TribesGame.TrEquipInterface.GetClassId")()); }
			ScriptFunction RequestPurchaseClass() { mixin(MGF!("mRequestPurchaseClass", "Function TribesGame.TrEquipInterface.RequestPurchaseClass")()); }
			ScriptFunction GetReticuleValue() { mixin(MGF!("mGetReticuleValue", "Function TribesGame.TrEquipInterface.GetReticuleValue")()); }
			ScriptFunction GetReticuleString() { mixin(MGF!("mGetReticuleString", "Function TribesGame.TrEquipInterface.GetReticuleString")()); }
			ScriptFunction SetActiveEquipId() { mixin(MGF!("mSetActiveEquipId", "Function TribesGame.TrEquipInterface.SetActiveEquipId")()); }
			ScriptFunction IsEquipOwned() { mixin(MGF!("mIsEquipOwned", "Function TribesGame.TrEquipInterface.IsEquipOwned")()); }
			ScriptFunction IsEquipMaxed() { mixin(MGF!("mIsEquipMaxed", "Function TribesGame.TrEquipInterface.IsEquipMaxed")()); }
			ScriptFunction GetEquipLevel() { mixin(MGF!("mGetEquipLevel", "Function TribesGame.TrEquipInterface.GetEquipLevel")()); }
			ScriptFunction HasReticule() { mixin(MGF!("mHasReticule", "Function TribesGame.TrEquipInterface.HasReticule")()); }
			ScriptFunction GetMasteryPrice() { mixin(MGF!("mGetMasteryPrice", "Function TribesGame.TrEquipInterface.GetMasteryPrice")()); }
			ScriptFunction GetEquipPrice() { mixin(MGF!("mGetEquipPrice", "Function TribesGame.TrEquipInterface.GetEquipPrice")()); }
			ScriptFunction RequestPurchaseMastery() { mixin(MGF!("mRequestPurchaseMastery", "Function TribesGame.TrEquipInterface.RequestPurchaseMastery")()); }
			ScriptFunction RequestPurchaseEquip() { mixin(MGF!("mRequestPurchaseEquip", "Function TribesGame.TrEquipInterface.RequestPurchaseEquip")()); }
			ScriptFunction SetReticuleValue() { mixin(MGF!("mSetReticuleValue", "Function TribesGame.TrEquipInterface.SetReticuleValue")()); }
			ScriptFunction SetReticuleString() { mixin(MGF!("mSetReticuleString", "Function TribesGame.TrEquipInterface.SetReticuleString")()); }
			ScriptFunction GetLoadoutPrice() { mixin(MGF!("mGetLoadoutPrice", "Function TribesGame.TrEquipInterface.GetLoadoutPrice")()); }
			ScriptFunction RequestPurchaseLoadout() { mixin(MGF!("mRequestPurchaseLoadout", "Function TribesGame.TrEquipInterface.RequestPurchaseLoadout")()); }
			ScriptFunction IsDailyDealOwned() { mixin(MGF!("mIsDailyDealOwned", "Function TribesGame.TrEquipInterface.IsDailyDealOwned")()); }
			ScriptFunction GetDailyDealOldPrice() { mixin(MGF!("mGetDailyDealOldPrice", "Function TribesGame.TrEquipInterface.GetDailyDealOldPrice")()); }
			ScriptFunction GetDailyDealNewPrice() { mixin(MGF!("mGetDailyDealNewPrice", "Function TribesGame.TrEquipInterface.GetDailyDealNewPrice")()); }
			ScriptFunction GetDailyDealClass() { mixin(MGF!("mGetDailyDealClass", "Function TribesGame.TrEquipInterface.GetDailyDealClass")()); }
			ScriptFunction GetDailyDealType() { mixin(MGF!("mGetDailyDealType", "Function TribesGame.TrEquipInterface.GetDailyDealType")()); }
			ScriptFunction GetDailyDealSecsLeft() { mixin(MGF!("mGetDailyDealSecsLeft", "Function TribesGame.TrEquipInterface.GetDailyDealSecsLeft")()); }
			ScriptFunction GetDailyDealXPPrice() { mixin(MGF!("mGetDailyDealXPPrice", "Function TribesGame.TrEquipInterface.GetDailyDealXPPrice")()); }
			ScriptFunction RequestPurchaseDeal() { mixin(MGF!("mRequestPurchaseDeal", "Function TribesGame.TrEquipInterface.RequestPurchaseDeal")()); }
			ScriptFunction OwnsReticule() { mixin(MGF!("mOwnsReticule", "Function TribesGame.TrEquipInterface.OwnsReticule")()); }
			ScriptFunction DelegateOnMarshalEvent() { mixin(MGF!("mDelegateOnMarshalEvent", "Function TribesGame.TrEquipInterface.DelegateOnMarshalEvent")()); }
			ScriptFunction LoadInventory() { mixin(MGF!("mLoadInventory", "Function TribesGame.TrEquipInterface.LoadInventory")()); }
			ScriptFunction InitClass() { mixin(MGF!("mInitClass", "Function TribesGame.TrEquipInterface.InitClass")()); }
			ScriptFunction SetDefaultEquip() { mixin(MGF!("mSetDefaultEquip", "Function TribesGame.TrEquipInterface.SetDefaultEquip")()); }
			ScriptFunction OnMarshalEvent() { mixin(MGF!("mOnMarshalEvent", "Function TribesGame.TrEquipInterface.OnMarshalEvent")()); }
			ScriptFunction RegisterMarshalCallback() { mixin(MGF!("mRegisterMarshalCallback", "Function TribesGame.TrEquipInterface.RegisterMarshalCallback")()); }
			ScriptFunction GetClassCount() { mixin(MGF!("mGetClassCount", "Function TribesGame.TrEquipInterface.GetClassCount")()); }
			ScriptFunction GetClassRibbon() { mixin(MGF!("mGetClassRibbon", "Function TribesGame.TrEquipInterface.GetClassRibbon")()); }
			ScriptFunction GetNextEquipId() { mixin(MGF!("mGetNextEquipId", "Function TribesGame.TrEquipInterface.GetNextEquipId")()); }
			ScriptFunction GetEquipRibbon() { mixin(MGF!("mGetEquipRibbon", "Function TribesGame.TrEquipInterface.GetEquipRibbon")()); }
			ScriptFunction GetFirstEquipId() { mixin(MGF!("mGetFirstEquipId", "Function TribesGame.TrEquipInterface.GetFirstEquipId")()); }
			ScriptFunction GetDailyDealLootId() { mixin(MGF!("mGetDailyDealLootId", "Function TribesGame.TrEquipInterface.GetDailyDealLootId")()); }
			ScriptFunction RetrieveActives() { mixin(MGF!("mRetrieveActives", "Function TribesGame.TrEquipInterface.RetrieveActives")()); }
			ScriptFunction GetUpgradePrice() { mixin(MGF!("mGetUpgradePrice", "Function TribesGame.TrEquipInterface.GetUpgradePrice")()); }
			ScriptFunction RequestPurchaseReticule() { mixin(MGF!("mRequestPurchaseReticule", "Function TribesGame.TrEquipInterface.RequestPurchaseReticule")()); }
			ScriptFunction RequestPurchaseUpgrade() { mixin(MGF!("mRequestPurchaseUpgrade", "Function TribesGame.TrEquipInterface.RequestPurchaseUpgrade")()); }
			ScriptFunction SaveProfile() { mixin(MGF!("mSaveProfile", "Function TribesGame.TrEquipInterface.SaveProfile")()); }
			ScriptFunction InitEquipManager() { mixin(MGF!("mInitEquipManager", "Function TribesGame.TrEquipInterface.InitEquipManager")()); }
			ScriptFunction InitClassList() { mixin(MGF!("mInitClassList", "Function TribesGame.TrEquipInterface.InitClassList")()); }
		}
	}
	@property final
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__DelegateOnMarshalEvent__Delegate'!
		bool m_bLoadComplete() { mixin(MGBPC!(60, 0x1)()); }
		bool m_bLoadComplete(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
final:
	bool IsClassOwned(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsClassOwned, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsLoadoutOwned(int ClassId, int Loadout)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLoadoutOwned, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ScriptString GetLoadoutName(int ClassId, int Loadout)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLoadoutName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	float GetClassUnlockPercent(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClassUnlockPercent, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	int GetClassPrice(int ClassId, int Currency)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClassPrice, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int GetDailyDealItemId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDailyDealItemId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetDailyDealPercentOff()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDailyDealPercentOff, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetBundleParent(int BundleId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BundleId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBundleParent, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool IsBundleOwned(int BundleId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BundleId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBundleOwned, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetVendorSize(int VendorId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVendorSize, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetVendorItemId(int VendorId, int Index)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVendorItemId, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool GetVendorItemPrice(int VendorId, int VendorItemId, int Currency, ref int Price)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = VendorItemId;
		*cast(int*)&params[8] = Currency;
		*cast(int*)&params[12] = Price;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVendorItemPrice, params.ptr, cast(void*)0);
		Price = *cast(int*)&params[12];
		return *cast(bool*)&params[16];
	}
	bool GetVendorItemInfo(int VendorId, int VendorItemId, ref ScriptString ItemName, ref ScriptString itemDescr, ref ScriptString ribbonDesc)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = VendorItemId;
		*cast(ScriptString*)&params[8] = ItemName;
		*cast(ScriptString*)&params[20] = itemDescr;
		*cast(ScriptString*)&params[32] = ribbonDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVendorItemInfo, params.ptr, cast(void*)0);
		ItemName = *cast(ScriptString*)&params[8];
		itemDescr = *cast(ScriptString*)&params[20];
		ribbonDesc = *cast(ScriptString*)&params[32];
		return *cast(bool*)&params[44];
	}
	bool RequestPurchaseGeneral(int VendorId, int VendorItemId, int Currency, ScriptString UserCustomInput)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = VendorItemId;
		*cast(int*)&params[8] = Currency;
		*cast(ScriptString*)&params[12] = UserCustomInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPurchaseGeneral, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	int GetActiveEquipId(int ClassId, int Type, int Loadout)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActiveEquipId, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	int GetEquipCount(int ClassId, int Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int GetEquipId(int ClassId, int Type, int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipId, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	bool SetLoadoutName(int ClassId, int Loadout, ScriptString loadoutName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		*cast(ScriptString*)&params[8] = loadoutName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLoadoutName, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	int GetFirstClassId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFirstClassId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetNextClassId(int PrevClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PrevClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextClassId, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetClassId(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClassId, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool RequestPurchaseClass(int ClassId, int Currency)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPurchaseClass, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	int GetReticuleValue(int EquipId, TrObject.ReticuleDataType Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(TrObject.ReticuleDataType*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetReticuleValue, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptString GetReticuleString(int EquipId, TrObject.ReticuleDataType Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(TrObject.ReticuleDataType*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetReticuleString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	bool SetActiveEquipId(int ClassId, int Type, int Loadout, int equip)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = Loadout;
		*cast(int*)&params[12] = equip;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveEquipId, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsEquipOwned(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEquipOwned, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool IsEquipMaxed(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEquipMaxed, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int GetEquipLevel(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipLevel, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	bool HasReticule(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasReticule, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetMasteryPrice(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMasteryPrice, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	int GetEquipPrice(int ClassId, int Type, int equip, int Currency)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipPrice, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	bool RequestPurchaseMastery(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPurchaseMastery, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool RequestPurchaseEquip(int ClassId, int Type, int equip, int Currency)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPurchaseEquip, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool SetReticuleValue(int EquipId, TrObject.ReticuleDataType Type, int nValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(TrObject.ReticuleDataType*)&params[4] = Type;
		*cast(int*)&params[8] = nValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetReticuleValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool SetReticuleString(int EquipId, TrObject.ReticuleDataType Type, ScriptString sValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(TrObject.ReticuleDataType*)&params[4] = Type;
		*cast(ScriptString*)&params[8] = sValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetReticuleString, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	int GetLoadoutPrice(int ClassId, int Loadout, int Currency)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		*cast(int*)&params[8] = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLoadoutPrice, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	bool RequestPurchaseLoadout(int ClassId, int Loadout, int Currency)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		*cast(int*)&params[8] = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPurchaseLoadout, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool IsDailyDealOwned()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDailyDealOwned, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetDailyDealOldPrice()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDailyDealOldPrice, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetDailyDealNewPrice()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDailyDealNewPrice, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetDailyDealClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDailyDealClass, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetDailyDealType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDailyDealType, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetDailyDealSecsLeft()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDailyDealSecsLeft, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetDailyDealXPPrice()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDailyDealXPPrice, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool RequestPurchaseDeal(int Currency)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPurchaseDeal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool OwnsReticule(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(Functions.OwnsReticule, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DelegateOnMarshalEvent(UObject.Pointer pMarEvent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject.Pointer*)params.ptr = pMarEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.DelegateOnMarshalEvent, params.ptr, cast(void*)0);
	}
	void LoadInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadInventory, cast(void*)0, cast(void*)0);
	}
	void InitClass(int ClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitClass, params.ptr, cast(void*)0);
	}
	void SetDefaultEquip(int ClassId, int Type, int equip)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDefaultEquip, params.ptr, cast(void*)0);
	}
	void OnMarshalEvent(UObject.Pointer pMarEvent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject.Pointer*)params.ptr = pMarEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMarshalEvent, params.ptr, cast(void*)0);
	}
	bool RegisterMarshalCallback(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* MarshalEventDelegate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = MarshalEventDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterMarshalCallback, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int GetClassCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClassCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetClassRibbon(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClassRibbon, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetNextEquipId(int ClassId, int Type, int PrevClass)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = PrevClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextEquipId, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	int GetEquipRibbon(int ClassId, int Type, int equip)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipRibbon, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	int GetFirstEquipId(int ClassId, int Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFirstEquipId, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int GetDailyDealLootId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDailyDealLootId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void RetrieveActives()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RetrieveActives, cast(void*)0, cast(void*)0);
	}
	int GetUpgradePrice(int ClassId, int Type, int equip, int Upgrade, int Currency)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Upgrade;
		*cast(int*)&params[16] = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUpgradePrice, params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	bool RequestPurchaseReticule(int ClassId, int Type, int equip, int Currency)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPurchaseReticule, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool RequestPurchaseUpgrade(int ClassId, int Type, int equip, int Upgrade, int Currency)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		*cast(int*)&params[8] = equip;
		*cast(int*)&params[12] = Upgrade;
		*cast(int*)&params[16] = Currency;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPurchaseUpgrade, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void SaveProfile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveProfile, cast(void*)0, cast(void*)0);
	}
	void InitEquipManager()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitEquipManager, cast(void*)0, cast(void*)0);
	}
	void InitClassList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitClassList, cast(void*)0, cast(void*)0);
	}
}
