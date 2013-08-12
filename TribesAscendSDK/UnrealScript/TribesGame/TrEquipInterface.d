module UnrealScript.TribesGame.TrEquipInterface;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;

extern(C++) interface TrEquipInterface : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEquipInterface")); }
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
			ScriptFunction IsClassOwned() { return mIsClassOwned ? mIsClassOwned : (mIsClassOwned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.IsClassOwned")); }
			ScriptFunction IsLoadoutOwned() { return mIsLoadoutOwned ? mIsLoadoutOwned : (mIsLoadoutOwned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.IsLoadoutOwned")); }
			ScriptFunction GetLoadoutName() { return mGetLoadoutName ? mGetLoadoutName : (mGetLoadoutName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetLoadoutName")); }
			ScriptFunction GetClassUnlockPercent() { return mGetClassUnlockPercent ? mGetClassUnlockPercent : (mGetClassUnlockPercent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetClassUnlockPercent")); }
			ScriptFunction GetClassPrice() { return mGetClassPrice ? mGetClassPrice : (mGetClassPrice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetClassPrice")); }
			ScriptFunction GetDailyDealItemId() { return mGetDailyDealItemId ? mGetDailyDealItemId : (mGetDailyDealItemId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetDailyDealItemId")); }
			ScriptFunction GetDailyDealPercentOff() { return mGetDailyDealPercentOff ? mGetDailyDealPercentOff : (mGetDailyDealPercentOff = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetDailyDealPercentOff")); }
			ScriptFunction GetBundleParent() { return mGetBundleParent ? mGetBundleParent : (mGetBundleParent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetBundleParent")); }
			ScriptFunction IsBundleOwned() { return mIsBundleOwned ? mIsBundleOwned : (mIsBundleOwned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.IsBundleOwned")); }
			ScriptFunction GetVendorSize() { return mGetVendorSize ? mGetVendorSize : (mGetVendorSize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetVendorSize")); }
			ScriptFunction GetVendorItemId() { return mGetVendorItemId ? mGetVendorItemId : (mGetVendorItemId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetVendorItemId")); }
			ScriptFunction GetVendorItemPrice() { return mGetVendorItemPrice ? mGetVendorItemPrice : (mGetVendorItemPrice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetVendorItemPrice")); }
			ScriptFunction GetVendorItemInfo() { return mGetVendorItemInfo ? mGetVendorItemInfo : (mGetVendorItemInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetVendorItemInfo")); }
			ScriptFunction RequestPurchaseGeneral() { return mRequestPurchaseGeneral ? mRequestPurchaseGeneral : (mRequestPurchaseGeneral = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RequestPurchaseGeneral")); }
			ScriptFunction GetActiveEquipId() { return mGetActiveEquipId ? mGetActiveEquipId : (mGetActiveEquipId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetActiveEquipId")); }
			ScriptFunction GetEquipCount() { return mGetEquipCount ? mGetEquipCount : (mGetEquipCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetEquipCount")); }
			ScriptFunction GetEquipId() { return mGetEquipId ? mGetEquipId : (mGetEquipId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetEquipId")); }
			ScriptFunction SetLoadoutName() { return mSetLoadoutName ? mSetLoadoutName : (mSetLoadoutName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.SetLoadoutName")); }
			ScriptFunction GetFirstClassId() { return mGetFirstClassId ? mGetFirstClassId : (mGetFirstClassId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetFirstClassId")); }
			ScriptFunction GetNextClassId() { return mGetNextClassId ? mGetNextClassId : (mGetNextClassId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetNextClassId")); }
			ScriptFunction GetClassId() { return mGetClassId ? mGetClassId : (mGetClassId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetClassId")); }
			ScriptFunction RequestPurchaseClass() { return mRequestPurchaseClass ? mRequestPurchaseClass : (mRequestPurchaseClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RequestPurchaseClass")); }
			ScriptFunction GetReticuleValue() { return mGetReticuleValue ? mGetReticuleValue : (mGetReticuleValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetReticuleValue")); }
			ScriptFunction GetReticuleString() { return mGetReticuleString ? mGetReticuleString : (mGetReticuleString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetReticuleString")); }
			ScriptFunction SetActiveEquipId() { return mSetActiveEquipId ? mSetActiveEquipId : (mSetActiveEquipId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.SetActiveEquipId")); }
			ScriptFunction IsEquipOwned() { return mIsEquipOwned ? mIsEquipOwned : (mIsEquipOwned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.IsEquipOwned")); }
			ScriptFunction IsEquipMaxed() { return mIsEquipMaxed ? mIsEquipMaxed : (mIsEquipMaxed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.IsEquipMaxed")); }
			ScriptFunction GetEquipLevel() { return mGetEquipLevel ? mGetEquipLevel : (mGetEquipLevel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetEquipLevel")); }
			ScriptFunction HasReticule() { return mHasReticule ? mHasReticule : (mHasReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.HasReticule")); }
			ScriptFunction GetMasteryPrice() { return mGetMasteryPrice ? mGetMasteryPrice : (mGetMasteryPrice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetMasteryPrice")); }
			ScriptFunction GetEquipPrice() { return mGetEquipPrice ? mGetEquipPrice : (mGetEquipPrice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetEquipPrice")); }
			ScriptFunction RequestPurchaseMastery() { return mRequestPurchaseMastery ? mRequestPurchaseMastery : (mRequestPurchaseMastery = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RequestPurchaseMastery")); }
			ScriptFunction RequestPurchaseEquip() { return mRequestPurchaseEquip ? mRequestPurchaseEquip : (mRequestPurchaseEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RequestPurchaseEquip")); }
			ScriptFunction SetReticuleValue() { return mSetReticuleValue ? mSetReticuleValue : (mSetReticuleValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.SetReticuleValue")); }
			ScriptFunction SetReticuleString() { return mSetReticuleString ? mSetReticuleString : (mSetReticuleString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.SetReticuleString")); }
			ScriptFunction GetLoadoutPrice() { return mGetLoadoutPrice ? mGetLoadoutPrice : (mGetLoadoutPrice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetLoadoutPrice")); }
			ScriptFunction RequestPurchaseLoadout() { return mRequestPurchaseLoadout ? mRequestPurchaseLoadout : (mRequestPurchaseLoadout = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RequestPurchaseLoadout")); }
			ScriptFunction IsDailyDealOwned() { return mIsDailyDealOwned ? mIsDailyDealOwned : (mIsDailyDealOwned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.IsDailyDealOwned")); }
			ScriptFunction GetDailyDealOldPrice() { return mGetDailyDealOldPrice ? mGetDailyDealOldPrice : (mGetDailyDealOldPrice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetDailyDealOldPrice")); }
			ScriptFunction GetDailyDealNewPrice() { return mGetDailyDealNewPrice ? mGetDailyDealNewPrice : (mGetDailyDealNewPrice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetDailyDealNewPrice")); }
			ScriptFunction GetDailyDealClass() { return mGetDailyDealClass ? mGetDailyDealClass : (mGetDailyDealClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetDailyDealClass")); }
			ScriptFunction GetDailyDealType() { return mGetDailyDealType ? mGetDailyDealType : (mGetDailyDealType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetDailyDealType")); }
			ScriptFunction GetDailyDealSecsLeft() { return mGetDailyDealSecsLeft ? mGetDailyDealSecsLeft : (mGetDailyDealSecsLeft = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetDailyDealSecsLeft")); }
			ScriptFunction GetDailyDealXPPrice() { return mGetDailyDealXPPrice ? mGetDailyDealXPPrice : (mGetDailyDealXPPrice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetDailyDealXPPrice")); }
			ScriptFunction RequestPurchaseDeal() { return mRequestPurchaseDeal ? mRequestPurchaseDeal : (mRequestPurchaseDeal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RequestPurchaseDeal")); }
			ScriptFunction OwnsReticule() { return mOwnsReticule ? mOwnsReticule : (mOwnsReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.OwnsReticule")); }
			ScriptFunction DelegateOnMarshalEvent() { return mDelegateOnMarshalEvent ? mDelegateOnMarshalEvent : (mDelegateOnMarshalEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.DelegateOnMarshalEvent")); }
			ScriptFunction LoadInventory() { return mLoadInventory ? mLoadInventory : (mLoadInventory = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.LoadInventory")); }
			ScriptFunction InitClass() { return mInitClass ? mInitClass : (mInitClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.InitClass")); }
			ScriptFunction SetDefaultEquip() { return mSetDefaultEquip ? mSetDefaultEquip : (mSetDefaultEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.SetDefaultEquip")); }
			ScriptFunction OnMarshalEvent() { return mOnMarshalEvent ? mOnMarshalEvent : (mOnMarshalEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.OnMarshalEvent")); }
			ScriptFunction RegisterMarshalCallback() { return mRegisterMarshalCallback ? mRegisterMarshalCallback : (mRegisterMarshalCallback = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RegisterMarshalCallback")); }
			ScriptFunction GetClassCount() { return mGetClassCount ? mGetClassCount : (mGetClassCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetClassCount")); }
			ScriptFunction GetClassRibbon() { return mGetClassRibbon ? mGetClassRibbon : (mGetClassRibbon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetClassRibbon")); }
			ScriptFunction GetNextEquipId() { return mGetNextEquipId ? mGetNextEquipId : (mGetNextEquipId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetNextEquipId")); }
			ScriptFunction GetEquipRibbon() { return mGetEquipRibbon ? mGetEquipRibbon : (mGetEquipRibbon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetEquipRibbon")); }
			ScriptFunction GetFirstEquipId() { return mGetFirstEquipId ? mGetFirstEquipId : (mGetFirstEquipId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetFirstEquipId")); }
			ScriptFunction GetDailyDealLootId() { return mGetDailyDealLootId ? mGetDailyDealLootId : (mGetDailyDealLootId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetDailyDealLootId")); }
			ScriptFunction RetrieveActives() { return mRetrieveActives ? mRetrieveActives : (mRetrieveActives = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RetrieveActives")); }
			ScriptFunction GetUpgradePrice() { return mGetUpgradePrice ? mGetUpgradePrice : (mGetUpgradePrice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.GetUpgradePrice")); }
			ScriptFunction RequestPurchaseReticule() { return mRequestPurchaseReticule ? mRequestPurchaseReticule : (mRequestPurchaseReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RequestPurchaseReticule")); }
			ScriptFunction RequestPurchaseUpgrade() { return mRequestPurchaseUpgrade ? mRequestPurchaseUpgrade : (mRequestPurchaseUpgrade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.RequestPurchaseUpgrade")); }
			ScriptFunction SaveProfile() { return mSaveProfile ? mSaveProfile : (mSaveProfile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.SaveProfile")); }
			ScriptFunction InitEquipManager() { return mInitEquipManager ? mInitEquipManager : (mInitEquipManager = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.InitEquipManager")); }
			ScriptFunction InitClassList() { return mInitClassList ? mInitClassList : (mInitClassList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEquipInterface.InitClassList")); }
		}
	}
	@property final
	{
		bool m_bLoadComplete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool m_bLoadComplete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
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
	bool GetVendorItemPrice(int VendorId, int VendorItemId, int Currency, int* Price)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = VendorItemId;
		*cast(int*)&params[8] = Currency;
		*cast(int*)&params[12] = *Price;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVendorItemPrice, params.ptr, cast(void*)0);
		*Price = *cast(int*)&params[12];
		return *cast(bool*)&params[16];
	}
	bool GetVendorItemInfo(int VendorId, int VendorItemId, ScriptString* ItemName, ScriptString* itemDescr, ScriptString* ribbonDesc)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = VendorId;
		*cast(int*)&params[4] = VendorItemId;
		*cast(ScriptString*)&params[8] = *ItemName;
		*cast(ScriptString*)&params[20] = *itemDescr;
		*cast(ScriptString*)&params[32] = *ribbonDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVendorItemInfo, params.ptr, cast(void*)0);
		*ItemName = *cast(ScriptString*)&params[8];
		*itemDescr = *cast(ScriptString*)&params[20];
		*ribbonDesc = *cast(ScriptString*)&params[32];
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
