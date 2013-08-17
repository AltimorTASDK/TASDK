module UnrealScript.TribesGame.GFxTrPage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage")); }
	private static __gshared GFxTrPage mDefaultProperties;
	@property final static GFxTrPage DefaultProperties() { mixin(MGDPC("GFxTrPage", "GFxTrPage TribesGame.Default__GFxTrPage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mAddAction;
			ScriptFunction mAddActionNumber;
			ScriptFunction mAddActionString;
			ScriptFunction mAddActionPage;
			ScriptFunction mAddActionSet;
			ScriptFunction mTakeFocus;
			ScriptFunction mTakeAction;
			ScriptFunction mModifyAction;
			ScriptFunction mModifyFocus;
			ScriptFunction mHelpButton;
			ScriptFunction mSpecialAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mFillData;
			ScriptFunction mFillOptions;
			ScriptFunction mIsOwned;
			ScriptFunction mCheckPurchasable;
			ScriptFunction mIsEquipMaxed;
			ScriptFunction mFillOption;
			ScriptFunction mFillDefault;
			ScriptFunction mCheckUpgrades;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillUpgrades;
			ScriptFunction mFillPricing;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mFillPage;
			ScriptFunction mClearActions;
			ScriptFunction mShowModel;
			ScriptFunction mFillClass;
			ScriptFunction mFillEquipTypes;
			ScriptFunction mNewClassEquip;
			ScriptFunction mNewClassUpgrade;
			ScriptFunction mNewEquipUpgrade;
			ScriptFunction mRevertSetting;
			ScriptFunction mOnPurchaseSuccess;
			ScriptFunction mActionUp;
			ScriptFunction mActionDown;
			ScriptFunction mRefreshButtons;
			ScriptFunction mKeyEvent;
			ScriptFunction mUpdateDealTimer;
			ScriptFunction mUpdateQueueTimer;
			ScriptFunction mProfileUp;
			ScriptFunction mProfileDown;
			ScriptFunction mResetRunaway;
			ScriptFunction mShowReticule;
			ScriptFunction mSaveReticule;
			ScriptFunction mOnClose;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage.Initialize")); }
			ScriptFunction AddAction() { mixin(MGF("mAddAction", "Function TribesGame.GFxTrPage.AddAction")); }
			ScriptFunction AddActionNumber() { mixin(MGF("mAddActionNumber", "Function TribesGame.GFxTrPage.AddActionNumber")); }
			ScriptFunction AddActionString() { mixin(MGF("mAddActionString", "Function TribesGame.GFxTrPage.AddActionString")); }
			ScriptFunction AddActionPage() { mixin(MGF("mAddActionPage", "Function TribesGame.GFxTrPage.AddActionPage")); }
			ScriptFunction AddActionSet() { mixin(MGF("mAddActionSet", "Function TribesGame.GFxTrPage.AddActionSet")); }
			ScriptFunction TakeFocus() { mixin(MGF("mTakeFocus", "Function TribesGame.GFxTrPage.TakeFocus")); }
			ScriptFunction TakeAction() { mixin(MGF("mTakeAction", "Function TribesGame.GFxTrPage.TakeAction")); }
			ScriptFunction ModifyAction() { mixin(MGF("mModifyAction", "Function TribesGame.GFxTrPage.ModifyAction")); }
			ScriptFunction ModifyFocus() { mixin(MGF("mModifyFocus", "Function TribesGame.GFxTrPage.ModifyFocus")); }
			ScriptFunction HelpButton() { mixin(MGF("mHelpButton", "Function TribesGame.GFxTrPage.HelpButton")); }
			ScriptFunction SpecialAction() { mixin(MGF("mSpecialAction", "Function TribesGame.GFxTrPage.SpecialAction")); }
			ScriptFunction PopupData() { mixin(MGF("mPopupData", "Function TribesGame.GFxTrPage.PopupData")); }
			ScriptFunction PopupComplete() { mixin(MGF("mPopupComplete", "Function TribesGame.GFxTrPage.PopupComplete")); }
			ScriptFunction FillData() { mixin(MGF("mFillData", "Function TribesGame.GFxTrPage.FillData")); }
			ScriptFunction FillOptions() { mixin(MGF("mFillOptions", "Function TribesGame.GFxTrPage.FillOptions")); }
			ScriptFunction IsOwned() { mixin(MGF("mIsOwned", "Function TribesGame.GFxTrPage.IsOwned")); }
			ScriptFunction CheckPurchasable() { mixin(MGF("mCheckPurchasable", "Function TribesGame.GFxTrPage.CheckPurchasable")); }
			ScriptFunction IsEquipMaxed() { mixin(MGF("mIsEquipMaxed", "Function TribesGame.GFxTrPage.IsEquipMaxed")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage.FillOption")); }
			ScriptFunction FillDefault() { mixin(MGF("mFillDefault", "Function TribesGame.GFxTrPage.FillDefault")); }
			ScriptFunction CheckUpgrades() { mixin(MGF("mCheckUpgrades", "Function TribesGame.GFxTrPage.CheckUpgrades")); }
			ScriptFunction CheckPricing() { mixin(MGF("mCheckPricing", "Function TribesGame.GFxTrPage.CheckPricing")); }
			ScriptFunction FillUpgrades() { mixin(MGF("mFillUpgrades", "Function TribesGame.GFxTrPage.FillUpgrades")); }
			ScriptFunction FillPricing() { mixin(MGF("mFillPricing", "Function TribesGame.GFxTrPage.FillPricing")); }
			ScriptFunction CheckDescription() { mixin(MGF("mCheckDescription", "Function TribesGame.GFxTrPage.CheckDescription")); }
			ScriptFunction FillDescription() { mixin(MGF("mFillDescription", "Function TribesGame.GFxTrPage.FillDescription")); }
			ScriptFunction FillPage() { mixin(MGF("mFillPage", "Function TribesGame.GFxTrPage.FillPage")); }
			ScriptFunction ClearActions() { mixin(MGF("mClearActions", "Function TribesGame.GFxTrPage.ClearActions")); }
			ScriptFunction ShowModel() { mixin(MGF("mShowModel", "Function TribesGame.GFxTrPage.ShowModel")); }
			ScriptFunction FillClass() { mixin(MGF("mFillClass", "Function TribesGame.GFxTrPage.FillClass")); }
			ScriptFunction FillEquipTypes() { mixin(MGF("mFillEquipTypes", "Function TribesGame.GFxTrPage.FillEquipTypes")); }
			ScriptFunction NewClassEquip() { mixin(MGF("mNewClassEquip", "Function TribesGame.GFxTrPage.NewClassEquip")); }
			ScriptFunction NewClassUpgrade() { mixin(MGF("mNewClassUpgrade", "Function TribesGame.GFxTrPage.NewClassUpgrade")); }
			ScriptFunction NewEquipUpgrade() { mixin(MGF("mNewEquipUpgrade", "Function TribesGame.GFxTrPage.NewEquipUpgrade")); }
			ScriptFunction RevertSetting() { mixin(MGF("mRevertSetting", "Function TribesGame.GFxTrPage.RevertSetting")); }
			ScriptFunction OnPurchaseSuccess() { mixin(MGF("mOnPurchaseSuccess", "Function TribesGame.GFxTrPage.OnPurchaseSuccess")); }
			ScriptFunction ActionUp() { mixin(MGF("mActionUp", "Function TribesGame.GFxTrPage.ActionUp")); }
			ScriptFunction ActionDown() { mixin(MGF("mActionDown", "Function TribesGame.GFxTrPage.ActionDown")); }
			ScriptFunction RefreshButtons() { mixin(MGF("mRefreshButtons", "Function TribesGame.GFxTrPage.RefreshButtons")); }
			ScriptFunction KeyEvent() { mixin(MGF("mKeyEvent", "Function TribesGame.GFxTrPage.KeyEvent")); }
			ScriptFunction UpdateDealTimer() { mixin(MGF("mUpdateDealTimer", "Function TribesGame.GFxTrPage.UpdateDealTimer")); }
			ScriptFunction UpdateQueueTimer() { mixin(MGF("mUpdateQueueTimer", "Function TribesGame.GFxTrPage.UpdateQueueTimer")); }
			ScriptFunction ProfileUp() { mixin(MGF("mProfileUp", "Function TribesGame.GFxTrPage.ProfileUp")); }
			ScriptFunction ProfileDown() { mixin(MGF("mProfileDown", "Function TribesGame.GFxTrPage.ProfileDown")); }
			ScriptFunction ResetRunaway() { mixin(MGF("mResetRunaway", "Function TribesGame.GFxTrPage.ResetRunaway")); }
			ScriptFunction ShowReticule() { mixin(MGF("mShowReticule", "Function TribesGame.GFxTrPage.ShowReticule")); }
			ScriptFunction SaveReticule() { mixin(MGF("mSaveReticule", "Function TribesGame.GFxTrPage.SaveReticule")); }
			ScriptFunction OnClose() { mixin(MGF("mOnClose", "Function TribesGame.GFxTrPage.OnClose")); }
		}
	}
	static struct Constants
	{
		enum
		{
			MENU_ELEMENT_LOGIN = 1,
			MENU_ELEMENT_OPTIONS = 2,
			MENU_ELEMENT_SIDEBAR = 3,
			MENU_ELEMENT_DESCRIPTION = 4,
			MENU_ELEMENT_UPGRADES = 5,
			MENU_ELEMENT_POPUPACQ = 6,
			MENU_ELEMENT_POPUPALERT = 7,
			MENU_ELEMENT_POPUPPURCHASE = 8,
			MENU_ELEMENT_SUMMARYPLAYER = 9,
			MENU_ELEMENT_SUMMARYTEAM = 10,
			MENU_ELEMENT_NOUSE = 11,
			MENU_ELEMENT_PRICE = 12,
			MENU_ELEMENT_PROFILE = 13,
			MENU_ELEMENT_FEATURE = 14,
			MENU_ELEMENT_SERVERBROWSER = 15,
			MAX_FRIENDS_DISPLAYED = 150,
		}
	}
	struct ResolutionSet
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.GFxTrPage.ResolutionSet")); }
		@property final auto ref
		{
			TgPlayerProfile.PropertyPair Res() { mixin(MGPS("TgPlayerProfile.PropertyPair", 4)); }
			int Index() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) OptionTitlesOverride() { mixin(MGPC("ScriptArray!(ScriptString)", 188)); }
			ScriptArray!(ScriptString) OptionSubtextOverride() { mixin(MGPC("ScriptArray!(ScriptString)", 200)); }
			ScriptArray!(ScriptString) OptionTitles() { mixin(MGPC("ScriptArray!(ScriptString)", 320)); }
			ScriptArray!(ScriptString) OptionSubtext() { mixin(MGPC("ScriptArray!(ScriptString)", 332)); }
			ScriptArray!(GFxTrAction) PageActions() { mixin(MGPC("ScriptArray!(GFxTrAction)", 344)); }
			ScriptString HelpButtonYLabel() { mixin(MGPC("ScriptString", 308)); }
			ScriptString HelpButtonXLabel() { mixin(MGPC("ScriptString", 296)); }
			ScriptString HelpButtonBLabel() { mixin(MGPC("ScriptString", 284)); }
			ScriptString HelpButtonALabel() { mixin(MGPC("ScriptString", 272)); }
			ScriptString HelpButtonYKey() { mixin(MGPC("ScriptString", 260)); }
			ScriptString HelpButtonXKey() { mixin(MGPC("ScriptString", 248)); }
			ScriptString HelpButtonBKey() { mixin(MGPC("ScriptString", 236)); }
			ScriptString HelpButtonAKey() { mixin(MGPC("ScriptString", 224)); }
			ScriptString PageLabel() { mixin(MGPC("ScriptString", 212)); }
			ScriptString PageLabelOverride() { mixin(MGPC("ScriptString", 176)); }
			int LoadoutEquipType() { mixin(MGPC("int", 168)); }
			int LoadoutClassId() { mixin(MGPC("int", 164)); }
			int NewAction() { mixin(MGPC("int", 160)); }
			int OptionCount() { mixin(MGPC("int", 156)); }
			int DataCount() { mixin(MGPC("int", 152)); }
			int ActiveIndex() { mixin(MGPC("int", 148)); }
			int ScrollIndex() { mixin(MGPC("int", 144)); }
			int HelpButtonYNum() { mixin(MGPC("int", 140)); }
			int HelpButtonXNum() { mixin(MGPC("int", 136)); }
			int HelpButtonBNum() { mixin(MGPC("int", 132)); }
			int HelpButtonANum() { mixin(MGPC("int", 128)); }
			int GoBack() { mixin(MGPC("int", 124)); }
			int ActiveLoadout() { mixin(MGPC("int", 120)); }
		}
		bool bShowTribesLogo() { mixin(MGBPC(172, 0x200)); }
		bool bShowTribesLogo(bool val) { mixin(MSBPC(172, 0x200)); }
		bool bParentLocked() { mixin(MGBPC(172, 0x100)); }
		bool bParentLocked(bool val) { mixin(MSBPC(172, 0x100)); }
		bool bHasModifiers() { mixin(MGBPC(172, 0x80)); }
		bool bHasModifiers(bool val) { mixin(MSBPC(172, 0x80)); }
		bool bCreated() { mixin(MGBPC(172, 0x40)); }
		bool bCreated(bool val) { mixin(MSBPC(172, 0x40)); }
		bool bActive() { mixin(MGBPC(172, 0x20)); }
		bool bActive(bool val) { mixin(MSBPC(172, 0x20)); }
		bool bAllowBack() { mixin(MGBPC(172, 0x10)); }
		bool bAllowBack(bool val) { mixin(MSBPC(172, 0x10)); }
		bool bEndOfLine() { mixin(MGBPC(172, 0x8)); }
		bool bEndOfLine(bool val) { mixin(MSBPC(172, 0x8)); }
		bool bRemoveOption() { mixin(MGBPC(172, 0x4)); }
		bool bRemoveOption(bool val) { mixin(MSBPC(172, 0x4)); }
		bool bModifyOption() { mixin(MGBPC(172, 0x2)); }
		bool bModifyOption(bool val) { mixin(MSBPC(172, 0x2)); }
		bool bFillingFocus() { mixin(MGBPC(172, 0x1)); }
		bool bFillingFocus(bool val) { mixin(MSBPC(172, 0x1)); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	GFxTrAction AddAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAction, params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)params.ptr;
	}
	GFxTrAction AddActionNumber(int ActionNumber)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionNumber;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddActionNumber, params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[4];
	}
	GFxTrAction AddActionString(ScriptString ActionString)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ActionString;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddActionString, params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[12];
	}
	GFxTrAction AddActionPage(GFxTrPage ActionPage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = ActionPage;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddActionPage, params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[4];
	}
	GFxTrAction AddActionSet(GFxTrPage ActionPage, int* ActionNumber = null, ScriptString* ActionString = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = ActionPage;
		if (ActionNumber !is null)
			*cast(int*)&params[4] = *ActionNumber;
		if (ActionString !is null)
			*cast(ScriptString*)&params[8] = *ActionString;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddActionSet, params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[20];
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
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
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
	void ModifyFocus(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyFocus, params.ptr, cast(void*)0);
	}
	void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HelpButton, params.ptr, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupComplete, params.ptr, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOptions(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOptions, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	bool IsOwned(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsOwned, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	GFxObject FillDefault()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDefault, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	bool CheckUpgrades(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckUpgrades, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPricing, params.ptr, cast(void*)0);
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
	GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillPricing, params.ptr, cast(void*)0);
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
	void FillPage(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillPage, params.ptr, cast(void*)0);
	}
	void ClearActions()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearActions, cast(void*)0, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
	GFxObject FillClass(int ClassId, int ActionIndex, bool* bShowActive = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = ActionIndex;
		if (bShowActive !is null)
			*cast(bool*)&params[8] = *bShowActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillClass, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[12];
	}
	GFxObject FillEquipTypes(int EquipId, int ActionIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(int*)&params[4] = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillEquipTypes, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[8];
	}
	bool NewClassEquip(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.NewClassEquip, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NewClassUpgrade(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.NewClassUpgrade, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NewEquipUpgrade(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(Functions.NewEquipUpgrade, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RevertSetting()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RevertSetting, cast(void*)0, cast(void*)0);
	}
	void OnPurchaseSuccess()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPurchaseSuccess, cast(void*)0, cast(void*)0);
	}
	void ActionUp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionUp, cast(void*)0, cast(void*)0);
	}
	void ActionDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionDown, cast(void*)0, cast(void*)0);
	}
	void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshButtons, cast(void*)0, cast(void*)0);
	}
	void KeyEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KeyEvent, cast(void*)0, cast(void*)0);
	}
	void UpdateDealTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDealTimer, cast(void*)0, cast(void*)0);
	}
	void UpdateQueueTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateQueueTimer, cast(void*)0, cast(void*)0);
	}
	void ProfileUp(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProfileUp, params.ptr, cast(void*)0);
	}
	void ProfileDown(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProfileDown, params.ptr, cast(void*)0);
	}
	void ResetRunaway()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetRunaway, cast(void*)0, cast(void*)0);
	}
	void ShowReticule(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowReticule, params.ptr, cast(void*)0);
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
