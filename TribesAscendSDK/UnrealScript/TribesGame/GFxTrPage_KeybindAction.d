module UnrealScript.TribesGame.GFxTrPage_KeybindAction;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_KeybindAction : GFxTrPage
{
	public @property final bool bWaitingForKeybind() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x1) != 0; }
	public @property final bool bWaitingForKeybind(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x1; } return val; }
	public @property final auto ref int SelectedCommand() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int SelectedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59258], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59265], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59269], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59272], params.ptr, cast(void*)0);
	}
	final void KeyEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59275], cast(void*)0, cast(void*)0);
	}
}
