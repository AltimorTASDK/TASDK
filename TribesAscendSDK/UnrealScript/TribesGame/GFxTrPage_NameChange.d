module UnrealScript.TribesGame.GFxTrPage_NameChange;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_VendorTable;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_NameChange : GFxTrPage_VendorTable
{
	public @property final bool bWaitingForNewNameInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 408) & 0x1) != 0; }
	public @property final bool bWaitingForNewNameInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 408) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 408) &= ~0x1; } return val; }
	public @property final auto ref ScriptString NamePopupTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
	final GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59755], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59759], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59763], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59771], params.ptr, cast(void*)0);
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59774], cast(void*)0, cast(void*)0);
	}
}
