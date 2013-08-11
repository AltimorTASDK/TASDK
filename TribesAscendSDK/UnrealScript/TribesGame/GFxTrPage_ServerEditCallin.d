module UnrealScript.TribesGame.GFxTrPage_ServerEditCallin;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ServerEditCallin : GFxTrPage
{
	public @property final auto ref int CallinType() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
	public @property final bool bBoundsPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 400) & 0x2) != 0; }
	public @property final bool bBoundsPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 400) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 400) &= ~0x2; } return val; }
	public @property final bool bPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 400) & 0x1) != 0; }
	public @property final bool bPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 400) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 400) &= ~0x1; } return val; }
	public @property final auto ref int popupIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref int BuildupIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref int CooldownIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref int PriceIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref int EnabledIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref int ORBNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int SUPNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int TACNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int MaxBOunds() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int MinBounds() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60763], params.ptr, cast(void*)0);
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60766], params.ptr, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60768], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void SetSubTitle(float val, GFxObject Obj)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = val;
		*cast(GFxObject*)&params[4] = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60775], params.ptr, cast(void*)0);
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60779], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60784], params.ptr, cast(void*)0);
	}
	final void ShowBoundsError(int PropId, int PropType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60788], params.ptr, cast(void*)0);
	}
	final void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60791], params.ptr, cast(void*)0);
	}
	final GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60795], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60799], cast(void*)0, cast(void*)0);
	}
}
