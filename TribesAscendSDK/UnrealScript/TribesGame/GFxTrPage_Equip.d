module UnrealScript.TribesGame.GFxTrPage_Equip;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Equip : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_Equip")()); }
	private static __gshared GFxTrPage_Equip mDefaultProperties;
	@property final static GFxTrPage_Equip DefaultProperties() { mixin(MGDPC!(GFxTrPage_Equip, "GFxTrPage_Equip TribesGame.Default__GFxTrPage_Equip")()); }
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
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_Equip.SpecialAction")()); }
			ScriptFunction ShowReticule() { mixin(MGF!("mShowReticule", "Function TribesGame.GFxTrPage_Equip.ShowReticule")()); }
			ScriptFunction HideReticule() { mixin(MGF!("mHideReticule", "Function TribesGame.GFxTrPage_Equip.HideReticule")()); }
			ScriptFunction OnPurchaseSuccess() { mixin(MGF!("mOnPurchaseSuccess", "Function TribesGame.GFxTrPage_Equip.OnPurchaseSuccess")()); }
			ScriptFunction SetActiveEquip() { mixin(MGF!("mSetActiveEquip", "Function TribesGame.GFxTrPage_Equip.SetActiveEquip")()); }
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.GFxTrPage_Equip.TakeAction")()); }
			ScriptFunction TakeFocus() { mixin(MGF!("mTakeFocus", "Function TribesGame.GFxTrPage_Equip.TakeFocus")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_Equip.FillData")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_Equip.FillOption")()); }
			ScriptFunction FillSkin() { mixin(MGF!("mFillSkin", "Function TribesGame.GFxTrPage_Equip.FillSkin")()); }
			ScriptFunction CheckUpgrades() { mixin(MGF!("mCheckUpgrades", "Function TribesGame.GFxTrPage_Equip.CheckUpgrades")()); }
			ScriptFunction FillUpgrades() { mixin(MGF!("mFillUpgrades", "Function TribesGame.GFxTrPage_Equip.FillUpgrades")()); }
			ScriptFunction CheckPricing() { mixin(MGF!("mCheckPricing", "Function TribesGame.GFxTrPage_Equip.CheckPricing")()); }
			ScriptFunction FillPricing() { mixin(MGF!("mFillPricing", "Function TribesGame.GFxTrPage_Equip.FillPricing")()); }
			ScriptFunction FillPricingSkin() { mixin(MGF!("mFillPricingSkin", "Function TribesGame.GFxTrPage_Equip.FillPricingSkin")()); }
			ScriptFunction CheckDescription() { mixin(MGF!("mCheckDescription", "Function TribesGame.GFxTrPage_Equip.CheckDescription")()); }
			ScriptFunction FillDescription() { mixin(MGF!("mFillDescription", "Function TribesGame.GFxTrPage_Equip.FillDescription")()); }
			ScriptFunction CheckPurchasable() { mixin(MGF!("mCheckPurchasable", "Function TribesGame.GFxTrPage_Equip.CheckPurchasable")()); }
			ScriptFunction IsEquipMaxed() { mixin(MGF!("mIsEquipMaxed", "Function TribesGame.GFxTrPage_Equip.IsEquipMaxed")()); }
			ScriptFunction IsOwned() { mixin(MGF!("mIsOwned", "Function TribesGame.GFxTrPage_Equip.IsOwned")()); }
			ScriptFunction ModifyAction() { mixin(MGF!("mModifyAction", "Function TribesGame.GFxTrPage_Equip.ModifyAction")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.GFxTrPage_Equip.PopupData")()); }
			ScriptFunction PopupDataSkin() { mixin(MGF!("mPopupDataSkin", "Function TribesGame.GFxTrPage_Equip.PopupDataSkin")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.GFxTrPage_Equip.PopupComplete")()); }
			ScriptFunction SaveReticule() { mixin(MGF!("mSaveReticule", "Function TribesGame.GFxTrPage_Equip.SaveReticule")()); }
			ScriptFunction OnClose() { mixin(MGF!("mOnClose", "Function TribesGame.GFxTrPage_Equip.OnClose")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int ReticuleIndex() { mixin(MGPC!(int, 380)()); }
			int PurchasingUpgrade() { mixin(MGPC!(int, 376)()); }
			int PurchasingEquip() { mixin(MGPC!(int, 372)()); }
			int FocusedEquip() { mixin(MGPC!(int, 368)()); }
			int ViewedEquip() { mixin(MGPC!(int, 364)()); }
			int GoldPrice() { mixin(MGPC!(int, 360)()); }
			int xpPrice() { mixin(MGPC!(int, 356)()); }
		}
		bool bReticulesOpen() { mixin(MGBPC!(384, 0x2)()); }
		bool bReticulesOpen(bool val) { mixin(MSBPC!(384, 0x2)()); }
		bool bUpgradePurchase() { mixin(MGBPC!(384, 0x1)()); }
		bool bUpgradePurchase(bool val) { mixin(MSBPC!(384, 0x1)()); }
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
