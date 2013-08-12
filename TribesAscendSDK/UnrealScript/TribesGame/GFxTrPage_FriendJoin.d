module UnrealScript.TribesGame.GFxTrPage_FriendJoin;

import ScriptClasses;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_FriendJoin : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_FriendJoin")); }
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
			ScriptFunction mFindNextFriend;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.Initialize")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.FillData")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.SpecialAction")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.CheckPricing")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.FillPricing")); }
			ScriptFunction ModifyFocus() { return mModifyFocus ? mModifyFocus : (mModifyFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.ModifyFocus")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.ModifyAction")); }
			ScriptFunction RefreshButtons() { return mRefreshButtons ? mRefreshButtons : (mRefreshButtons = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.RefreshButtons")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.TakeFocus")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.FillOption")); }
			ScriptFunction FindNextFriend() { return mFindNextFriend ? mFindNextFriend : (mFindNextFriend = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.FindNextFriend")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_FriendJoin.PopupComplete")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrFriendManager.FriendStruct) SortedFriends() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 424); }
			ScriptString NotInAGameSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 412); }
			ScriptString SocialSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 400); }
			ScriptString SocialTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 388); }
			ScriptString SelectPromptSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 376); }
			int SpecActionIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			int PrevPlayerId() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int FocusedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int Criteria() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bWaitingForMessagePopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x2) != 0; }
		bool bWaitingForMessagePopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x2; } return val; }
		bool bWaitingForFriendAddPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x1) != 0; }
		bool bWaitingForFriendAddPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x1; } return val; }
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
	int FindNextFriend()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNextFriend, params.ptr, cast(void*)0);
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
