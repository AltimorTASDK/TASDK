module UnrealScript.TribesGame.GFxTrPage_Friends;

import ScriptClasses;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Friends : GFxTrPage
{
	public @property final auto ref ScriptString FlyoutTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref ScriptString RemoveFriendTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref ScriptArray!(TrFriendManager.FriendStruct) SortedFriends() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref ScriptString AddFriendSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref ScriptString AddFriendTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref ScriptString SelectPromptLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 376); }
	public @property final bool bWaitingForFriendRemovePopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x2) != 0; }
	public @property final bool bWaitingForFriendRemovePopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x2; } return val; }
	public @property final bool bWaitingForFriendAddPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x1) != 0; }
	public @property final bool bWaitingForFriendAddPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x1; } return val; }
	public @property final auto ref int RemovingIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int PrevPlayerId() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int FocusedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int Criteria() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58995], cast(void*)0, cast(void*)0);
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58996], params.ptr, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59000], params.ptr, cast(void*)0);
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59003], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59008], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void ModifyFocus(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59012], params.ptr, cast(void*)0);
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59015], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59020], cast(void*)0, cast(void*)0);
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59021], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59026], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int FindNextFriend()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59031], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59035], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59037], params.ptr, cast(void*)0);
	}
}
