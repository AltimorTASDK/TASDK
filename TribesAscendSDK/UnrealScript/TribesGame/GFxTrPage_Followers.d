module UnrealScript.TribesGame.GFxTrPage_Followers;

import ScriptClasses;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Followers : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Followers")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.Initialize")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.FillData")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.SpecialAction")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.CheckPricing")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.FillPricing")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.ModifyAction")); }
			ScriptFunction RefreshButtons() { return mRefreshButtons ? mRefreshButtons : (mRefreshButtons = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.RefreshButtons")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.TakeFocus")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.FillOption")); }
			ScriptFunction FindNextFollower() { return mFindNextFollower ? mFindNextFollower : (mFindNextFollower = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Followers.FindNextFollower")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrFriendManager.FriendStruct) SortedFriends() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 396); }
		ScriptString MutalFriendLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
		ScriptString SelectPromptLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
		int RemovingIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
		int PrevPlayerId() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
		int FocusedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
		int Criteria() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
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
