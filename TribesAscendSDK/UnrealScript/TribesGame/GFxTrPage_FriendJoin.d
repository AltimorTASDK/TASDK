module UnrealScript.TribesGame.GFxTrPage_FriendJoin;

import ScriptClasses;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_FriendJoin : GFxTrPage
{
	public @property final auto ref ScriptArray!(TrFriendManager.FriendStruct) SortedFriends() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref ScriptString NotInAGameSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref ScriptString SocialSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref ScriptString SocialTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref ScriptString SelectPromptSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 376); }
	public @property final bool bWaitingForMessagePopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x2) != 0; }
	public @property final bool bWaitingForMessagePopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x2; } return val; }
	public @property final bool bWaitingForFriendAddPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x1) != 0; }
	public @property final bool bWaitingForFriendAddPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x1; } return val; }
	public @property final auto ref int SpecActionIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int PrevPlayerId() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int FocusedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int Criteria() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58935], cast(void*)0, cast(void*)0);
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58936], params.ptr, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58941], params.ptr, cast(void*)0);
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58944], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58949], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void ModifyFocus(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58954], params.ptr, cast(void*)0);
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58957], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58961], cast(void*)0, cast(void*)0);
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58962], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58967], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int FindNextFriend()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58973], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58977], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58979], params.ptr, cast(void*)0);
	}
}
