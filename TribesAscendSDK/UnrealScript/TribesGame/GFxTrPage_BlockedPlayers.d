module UnrealScript.TribesGame.GFxTrPage_BlockedPlayers;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_BlockedPlayers : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_BlockedPlayers")()); }
	private static __gshared GFxTrPage_BlockedPlayers mDefaultProperties;
	@property final static GFxTrPage_BlockedPlayers DefaultProperties() { mixin(MGDPC!(GFxTrPage_BlockedPlayers, "GFxTrPage_BlockedPlayers TribesGame.Default__GFxTrPage_BlockedPlayers")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mSpecialAction;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillPricing;
			ScriptFunction mModifyFocus;
			ScriptFunction mModifyAction;
			ScriptFunction mRefreshButtons;
			ScriptFunction mTakeFocus;
			ScriptFunction mFillOption;
			ScriptFunction mFindNextBlocked;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_BlockedPlayers.Initialize")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_BlockedPlayers.FillData")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_BlockedPlayers.SpecialAction")()); }
			ScriptFunction CheckPricing() { mixin(MGF!("mCheckPricing", "Function TribesGame.GFxTrPage_BlockedPlayers.CheckPricing")()); }
			ScriptFunction FillPricing() { mixin(MGF!("mFillPricing", "Function TribesGame.GFxTrPage_BlockedPlayers.FillPricing")()); }
			ScriptFunction ModifyFocus() { mixin(MGF!("mModifyFocus", "Function TribesGame.GFxTrPage_BlockedPlayers.ModifyFocus")()); }
			ScriptFunction ModifyAction() { mixin(MGF!("mModifyAction", "Function TribesGame.GFxTrPage_BlockedPlayers.ModifyAction")()); }
			ScriptFunction RefreshButtons() { mixin(MGF!("mRefreshButtons", "Function TribesGame.GFxTrPage_BlockedPlayers.RefreshButtons")()); }
			ScriptFunction TakeFocus() { mixin(MGF!("mTakeFocus", "Function TribesGame.GFxTrPage_BlockedPlayers.TakeFocus")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_BlockedPlayers.FillOption")()); }
			ScriptFunction FindNextBlocked() { mixin(MGF!("mFindNextBlocked", "Function TribesGame.GFxTrPage_BlockedPlayers.FindNextBlocked")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.GFxTrPage_BlockedPlayers.PopupData")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.GFxTrPage_BlockedPlayers.PopupComplete")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrFriendManager.FriendStruct) SortedFriends() { mixin(MGPC!("ScriptArray!(TrFriendManager.FriendStruct)", 432)()); }
			ScriptString FlyoutTitle() { mixin(MGPC!("ScriptString", 420)()); }
			ScriptString UnblockOption() { mixin(MGPC!("ScriptString", 408)()); }
			ScriptString BlockedStatus() { mixin(MGPC!("ScriptString", 396)()); }
			ScriptString BlockSubtext() { mixin(MGPC!("ScriptString", 384)()); }
			ScriptString BlockOption() { mixin(MGPC!("ScriptString", 372)()); }
			int RemovingIndex() { mixin(MGPC!("int", 364)()); }
			int PrevPlayerId() { mixin(MGPC!("int", 360)()); }
			int FocusedIndex() { mixin(MGPC!("int", 356)()); }
		}
		bool bWaitingForFriendRemovePopup() { mixin(MGBPC!(368, 0x2)()); }
		bool bWaitingForFriendRemovePopup(bool val) { mixin(MSBPC!(368, 0x2)()); }
		bool bWaitingForFriendAddPopup() { mixin(MGBPC!(368, 0x1)()); }
		bool bWaitingForFriendAddPopup(bool val) { mixin(MSBPC!(368, 0x1)()); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
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
	void ModifyFocus(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyFocus, params.ptr, cast(void*)0);
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
	void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshButtons, cast(void*)0, cast(void*)0);
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
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	int FindNextBlocked()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNextBlocked, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
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
}
