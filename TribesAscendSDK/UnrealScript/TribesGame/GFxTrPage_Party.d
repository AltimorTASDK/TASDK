module UnrealScript.TribesGame.GFxTrPage_Party;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Party : GFxTrPage
{
	public @property final auto ref int Action_SendMessage() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int Action_Leave() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59803], cast(void*)0, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59806], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59819], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59824], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59826], params.ptr, cast(void*)0);
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59831], cast(void*)0, cast(void*)0);
	}
}
