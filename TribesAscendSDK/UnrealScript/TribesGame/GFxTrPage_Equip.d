module UnrealScript.TribesGame.GFxTrPage_Equip;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Equip : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Equip")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpecialAction;
			ScriptFunction mShowReticule;
			ScriptFunction mHideReticule;
			ScriptFunction mOnPurchaseSuccess;
			ScriptFunction mSetActiveEquip;
			ScriptFunction mTakeAction;
			ScriptFunction mTakeFocus;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mFillSkin;
			ScriptFunction mCheckUpgrades;
			ScriptFunction mFillUpgrades;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillPricing;
			ScriptFunction mFillPricingSkin;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mCheckPurchasable;
			ScriptFunction mIsEquipMaxed;
			ScriptFunction mIsOwned;
			ScriptFunction mModifyAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupDataSkin;
			ScriptFunction mPopupComplete;
			ScriptFunction mSaveReticule;
			ScriptFunction mOnClose;
		}
		public @property static final
		{
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.SpecialAction")); }
			ScriptFunction ShowReticule() { return mShowReticule ? mShowReticule : (mShowReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.ShowReticule")); }
			ScriptFunction HideReticule() { return mHideReticule ? mHideReticule : (mHideReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.HideReticule")); }
			ScriptFunction OnPurchaseSuccess() { return mOnPurchaseSuccess ? mOnPurchaseSuccess : (mOnPurchaseSuccess = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.OnPurchaseSuccess")); }
			ScriptFunction SetActiveEquip() { return mSetActiveEquip ? mSetActiveEquip : (mSetActiveEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.SetActiveEquip")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.TakeAction")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.TakeFocus")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.FillData")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.FillOption")); }
			ScriptFunction FillSkin() { return mFillSkin ? mFillSkin : (mFillSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.FillSkin")); }
			ScriptFunction CheckUpgrades() { return mCheckUpgrades ? mCheckUpgrades : (mCheckUpgrades = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.CheckUpgrades")); }
			ScriptFunction FillUpgrades() { return mFillUpgrades ? mFillUpgrades : (mFillUpgrades = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.FillUpgrades")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.CheckPricing")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.FillPricing")); }
			ScriptFunction FillPricingSkin() { return mFillPricingSkin ? mFillPricingSkin : (mFillPricingSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.FillPricingSkin")); }
			ScriptFunction CheckDescription() { return mCheckDescription ? mCheckDescription : (mCheckDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.CheckDescription")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.FillDescription")); }
			ScriptFunction CheckPurchasable() { return mCheckPurchasable ? mCheckPurchasable : (mCheckPurchasable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.CheckPurchasable")); }
			ScriptFunction IsEquipMaxed() { return mIsEquipMaxed ? mIsEquipMaxed : (mIsEquipMaxed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.IsEquipMaxed")); }
			ScriptFunction IsOwned() { return mIsOwned ? mIsOwned : (mIsOwned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.IsOwned")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.ModifyAction")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.PopupData")); }
			ScriptFunction PopupDataSkin() { return mPopupDataSkin ? mPopupDataSkin : (mPopupDataSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.PopupDataSkin")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.PopupComplete")); }
			ScriptFunction SaveReticule() { return mSaveReticule ? mSaveReticule : (mSaveReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.SaveReticule")); }
			ScriptFunction OnClose() { return mOnClose ? mOnClose : (mOnClose = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Equip.OnClose")); }
		}
	}
	@property final
	{
		auto ref
		{
			int ReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
			int PurchasingUpgrade() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
			int PurchasingEquip() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
			int FocusedEquip() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			int ViewedEquip() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int GoldPrice() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int xpPrice() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bReticulesOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 384) & 0x2) != 0; }
		bool bReticulesOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 384) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 384) &= ~0x2; } return val; }
		bool bUpgradePurchase() { return (*cast(uint*)(cast(size_t)cast(void*)this + 384) & 0x1) != 0; }
		bool bUpgradePurchase(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 384) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 384) &= ~0x1; } return val; }
	}
final:
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void ShowReticule(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowReticule, params.ptr, cast(void*)0);
	}
	void HideReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideReticule, cast(void*)0, cast(void*)0);
	}
	void OnPurchaseSuccess()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPurchaseSuccess, cast(void*)0, cast(void*)0);
	}
	void SetActiveEquip(int EquipId, bool bShowStatus)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(bool*)&params[4] = bShowStatus;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveEquip, params.ptr, cast(void*)0);
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	GFxObject FillSkin(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillSkin, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	bool CheckUpgrades(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckUpgrades, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	GFxObject FillUpgrades(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillUpgrades, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPricing, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillPricing, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	GFxObject FillPricingSkin(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillPricingSkin, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDescription, params.ptr, cast(void*)0);
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDescription, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	bool CheckPurchasable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPurchasable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsEquipMaxed(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEquipMaxed, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsOwned(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsOwned, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
	void PopupDataSkin(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupDataSkin, params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupComplete, params.ptr, cast(void*)0);
	}
	void SaveReticule(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveReticule, params.ptr, cast(void*)0);
	}
	void OnClose()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClose, cast(void*)0, cast(void*)0);
	}
}
