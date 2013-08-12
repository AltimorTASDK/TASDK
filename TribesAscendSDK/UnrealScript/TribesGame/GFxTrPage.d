module UnrealScript.TribesGame.GFxTrPage;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage")); }
	private static __gshared GFxTrPage mDefaultProperties;
	@property final static GFxTrPage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage)("GFxTrPage TribesGame.Default__GFxTrPage")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.Initialize")); }
			ScriptFunction AddAction() { return mAddAction ? mAddAction : (mAddAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.AddAction")); }
			ScriptFunction AddActionNumber() { return mAddActionNumber ? mAddActionNumber : (mAddActionNumber = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.AddActionNumber")); }
			ScriptFunction AddActionString() { return mAddActionString ? mAddActionString : (mAddActionString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.AddActionString")); }
			ScriptFunction AddActionPage() { return mAddActionPage ? mAddActionPage : (mAddActionPage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.AddActionPage")); }
			ScriptFunction AddActionSet() { return mAddActionSet ? mAddActionSet : (mAddActionSet = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.AddActionSet")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.TakeFocus")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.TakeAction")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ModifyAction")); }
			ScriptFunction ModifyFocus() { return mModifyFocus ? mModifyFocus : (mModifyFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ModifyFocus")); }
			ScriptFunction HelpButton() { return mHelpButton ? mHelpButton : (mHelpButton = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.HelpButton")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.SpecialAction")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.PopupComplete")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillData")); }
			ScriptFunction FillOptions() { return mFillOptions ? mFillOptions : (mFillOptions = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillOptions")); }
			ScriptFunction IsOwned() { return mIsOwned ? mIsOwned : (mIsOwned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.IsOwned")); }
			ScriptFunction CheckPurchasable() { return mCheckPurchasable ? mCheckPurchasable : (mCheckPurchasable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.CheckPurchasable")); }
			ScriptFunction IsEquipMaxed() { return mIsEquipMaxed ? mIsEquipMaxed : (mIsEquipMaxed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.IsEquipMaxed")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillOption")); }
			ScriptFunction FillDefault() { return mFillDefault ? mFillDefault : (mFillDefault = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillDefault")); }
			ScriptFunction CheckUpgrades() { return mCheckUpgrades ? mCheckUpgrades : (mCheckUpgrades = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.CheckUpgrades")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.CheckPricing")); }
			ScriptFunction FillUpgrades() { return mFillUpgrades ? mFillUpgrades : (mFillUpgrades = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillUpgrades")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillPricing")); }
			ScriptFunction CheckDescription() { return mCheckDescription ? mCheckDescription : (mCheckDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.CheckDescription")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillDescription")); }
			ScriptFunction FillPage() { return mFillPage ? mFillPage : (mFillPage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillPage")); }
			ScriptFunction ClearActions() { return mClearActions ? mClearActions : (mClearActions = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ClearActions")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ShowModel")); }
			ScriptFunction FillClass() { return mFillClass ? mFillClass : (mFillClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillClass")); }
			ScriptFunction FillEquipTypes() { return mFillEquipTypes ? mFillEquipTypes : (mFillEquipTypes = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.FillEquipTypes")); }
			ScriptFunction NewClassEquip() { return mNewClassEquip ? mNewClassEquip : (mNewClassEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.NewClassEquip")); }
			ScriptFunction NewClassUpgrade() { return mNewClassUpgrade ? mNewClassUpgrade : (mNewClassUpgrade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.NewClassUpgrade")); }
			ScriptFunction NewEquipUpgrade() { return mNewEquipUpgrade ? mNewEquipUpgrade : (mNewEquipUpgrade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.NewEquipUpgrade")); }
			ScriptFunction RevertSetting() { return mRevertSetting ? mRevertSetting : (mRevertSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.RevertSetting")); }
			ScriptFunction OnPurchaseSuccess() { return mOnPurchaseSuccess ? mOnPurchaseSuccess : (mOnPurchaseSuccess = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.OnPurchaseSuccess")); }
			ScriptFunction ActionUp() { return mActionUp ? mActionUp : (mActionUp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ActionUp")); }
			ScriptFunction ActionDown() { return mActionDown ? mActionDown : (mActionDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ActionDown")); }
			ScriptFunction RefreshButtons() { return mRefreshButtons ? mRefreshButtons : (mRefreshButtons = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.RefreshButtons")); }
			ScriptFunction KeyEvent() { return mKeyEvent ? mKeyEvent : (mKeyEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.KeyEvent")); }
			ScriptFunction UpdateDealTimer() { return mUpdateDealTimer ? mUpdateDealTimer : (mUpdateDealTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.UpdateDealTimer")); }
			ScriptFunction UpdateQueueTimer() { return mUpdateQueueTimer ? mUpdateQueueTimer : (mUpdateQueueTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.UpdateQueueTimer")); }
			ScriptFunction ProfileUp() { return mProfileUp ? mProfileUp : (mProfileUp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ProfileUp")); }
			ScriptFunction ProfileDown() { return mProfileDown ? mProfileDown : (mProfileDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ProfileDown")); }
			ScriptFunction ResetRunaway() { return mResetRunaway ? mResetRunaway : (mResetRunaway = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ResetRunaway")); }
			ScriptFunction ShowReticule() { return mShowReticule ? mShowReticule : (mShowReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.ShowReticule")); }
			ScriptFunction SaveReticule() { return mSaveReticule ? mSaveReticule : (mSaveReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.SaveReticule")); }
			ScriptFunction OnClose() { return mOnClose ? mOnClose : (mOnClose = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage.OnClose")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.GFxTrPage.ResolutionSet")); }
		@property final auto ref
		{
			TgPlayerProfile.PropertyPair Res() { return *cast(TgPlayerProfile.PropertyPair*)(cast(size_t)&this + 4); }
			int Index() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) OptionTitlesOverride() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 188); }
			ScriptArray!(ScriptString) OptionSubtextOverride() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 200); }
			ScriptArray!(ScriptString) OptionTitles() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 320); }
			ScriptArray!(ScriptString) OptionSubtext() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 332); }
			ScriptArray!(GFxTrAction) PageActions() { return *cast(ScriptArray!(GFxTrAction)*)(cast(size_t)cast(void*)this + 344); }
			ScriptString HelpButtonYLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 308); }
			ScriptString HelpButtonXLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 296); }
			ScriptString HelpButtonBLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 284); }
			ScriptString HelpButtonALabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 272); }
			ScriptString HelpButtonYKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 260); }
			ScriptString HelpButtonXKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
			ScriptString HelpButtonBKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
			ScriptString HelpButtonAKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
			ScriptString PageLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 212); }
			ScriptString PageLabelOverride() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
			int LoadoutEquipType() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			int LoadoutClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
			int NewAction() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			int OptionCount() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			int DataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
			int ActiveIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
			int ScrollIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
			int HelpButtonYNum() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
			int HelpButtonXNum() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
			int HelpButtonBNum() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
			int HelpButtonANum() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
			int GoBack() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
			int ActiveLoadout() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bShowTribesLogo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x200) != 0; }
		bool bShowTribesLogo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x200; } return val; }
		bool bParentLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x100) != 0; }
		bool bParentLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x100; } return val; }
		bool bHasModifiers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x80) != 0; }
		bool bHasModifiers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x80; } return val; }
		bool bCreated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x40) != 0; }
		bool bCreated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x40; } return val; }
		bool bActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x20) != 0; }
		bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x20; } return val; }
		bool bAllowBack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x10) != 0; }
		bool bAllowBack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x10; } return val; }
		bool bEndOfLine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x8) != 0; }
		bool bEndOfLine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x8; } return val; }
		bool bRemoveOption() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4) != 0; }
		bool bRemoveOption(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4; } return val; }
		bool bModifyOption() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
		bool bModifyOption(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
		bool bFillingFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
		bool bFillingFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
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
	GFxTrAction AddActionSet(GFxTrPage ActionPage, int ActionNumber, ScriptString ActionString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = ActionPage;
		*cast(int*)&params[4] = ActionNumber;
		*cast(ScriptString*)&params[8] = ActionString;
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
	GFxObject FillClass(int ClassId, int ActionIndex, bool bShowActive)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = ActionIndex;
		*cast(bool*)&params[8] = bShowActive;
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
