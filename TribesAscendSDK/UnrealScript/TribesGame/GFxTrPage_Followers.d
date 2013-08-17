module UnrealScript.TribesGame.GFxTrPage_Followers;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Followers : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_Followers")()); }
	private static __gshared GFxTrPage_Followers mDefaultProperties;
	@property final static GFxTrPage_Followers DefaultProperties() { mixin(MGDPC!(GFxTrPage_Followers, "GFxTrPage_Followers TribesGame.Default__GFxTrPage_Followers")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mSpecialAction;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillPricing;
			ScriptFunction mModifyAction;
			ScriptFunction mRefreshButtons;
			ScriptFunction mTakeFocus;
			ScriptFunction mFillOption;
			ScriptFunction mFindNextFollower;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_Followers.Initialize")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_Followers.FillData")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_Followers.SpecialAction")()); }
			ScriptFunction CheckPricing() { mixin(MGF!("mCheckPricing", "Function TribesGame.GFxTrPage_Followers.CheckPricing")()); }
			ScriptFunction FillPricing() { mixin(MGF!("mFillPricing", "Function TribesGame.GFxTrPage_Followers.FillPricing")()); }
			ScriptFunction ModifyAction() { mixin(MGF!("mModifyAction", "Function TribesGame.GFxTrPage_Followers.ModifyAction")()); }
			ScriptFunction RefreshButtons() { mixin(MGF!("mRefreshButtons", "Function TribesGame.GFxTrPage_Followers.RefreshButtons")()); }
			ScriptFunction TakeFocus() { mixin(MGF!("mTakeFocus", "Function TribesGame.GFxTrPage_Followers.TakeFocus")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_Followers.FillOption")()); }
			ScriptFunction FindNextFollower() { mixin(MGF!("mFindNextFollower", "Function TribesGame.GFxTrPage_Followers.FindNextFollower")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrFriendManager.FriendStruct) SortedFriends() { mixin(MGPC!(ScriptArray!(TrFriendManager.FriendStruct), 396)()); }
		ScriptString MutalFriendLabel() { mixin(MGPC!(ScriptString, 384)()); }
		ScriptString SelectPromptLabel() { mixin(MGPC!(ScriptString, 372)()); }
		int RemovingIndex() { mixin(MGPC!(int, 368)()); }
		int PrevPlayerId() { mixin(MGPC!(int, 364)()); }
		int FocusedIndex() { mixin(MGPC!(int, 360)()); }
		int Criteria() { mixin(MGPC!(int, 356)()); }
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
	int FindNextFollower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNextFollower, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
