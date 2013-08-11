module UnrealScript.TribesGame.GFxTrPage_PartyInvite;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_PartyInvite : GFxTrPage
{
	public @property final auto ref ScriptArray!(ScriptString) ShownFriends() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref ScriptString MemberName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref int Action_InviteFailed() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int Action_SendMessage() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int Action_InviteSent() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int Action_ByName() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59871], params.ptr, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59875], params.ptr, cast(void*)0);
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59880], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59887], params.ptr, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59890], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59895], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59899], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59904], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59910], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59914], cast(void*)0, cast(void*)0);
	}
}
