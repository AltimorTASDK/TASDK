module UnrealScript.TribesGame.GFxTrPage_Followers;

import ScriptClasses;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Followers : GFxTrPage
{
	public @property final auto ref ScriptArray!(TrFriendManager.FriendStruct) SortedFriends() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref ScriptString MutalFriendLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref ScriptString SelectPromptLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int RemovingIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int PrevPlayerId() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int FocusedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int Criteria() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58844], cast(void*)0, cast(void*)0);
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58845], params.ptr, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58850], params.ptr, cast(void*)0);
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58853], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58858], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58864], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58869], cast(void*)0, cast(void*)0);
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58870], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58875], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int FindNextFollower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58882], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
