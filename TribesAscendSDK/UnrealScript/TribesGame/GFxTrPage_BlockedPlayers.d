module UnrealScript.TribesGame.GFxTrPage_BlockedPlayers;

import ScriptClasses;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_BlockedPlayers : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_BlockedPlayers")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.Initialize")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.FillData")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.SpecialAction")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.CheckPricing")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.FillPricing")); }
			ScriptFunction ModifyFocus() { return mModifyFocus ? mModifyFocus : (mModifyFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.ModifyFocus")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.ModifyAction")); }
			ScriptFunction RefreshButtons() { return mRefreshButtons ? mRefreshButtons : (mRefreshButtons = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.RefreshButtons")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.TakeFocus")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.FillOption")); }
			ScriptFunction FindNextBlocked() { return mFindNextBlocked ? mFindNextBlocked : (mFindNextBlocked = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.FindNextBlocked")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_BlockedPlayers.PopupComplete")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrFriendManager.FriendStruct) SortedFriends() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 432); }
			ScriptString FlyoutTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 420); }
			ScriptString UnblockOption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 408); }
			ScriptString BlockedStatus() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
			ScriptString BlockSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
			ScriptString BlockOption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
			int RemovingIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int PrevPlayerId() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int FocusedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bWaitingForFriendRemovePopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x2) != 0; }
		bool bWaitingForFriendRemovePopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x2; } return val; }
		bool bWaitingForFriendAddPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x1) != 0; }
		bool bWaitingForFriendAddPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x1; } return val; }
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
