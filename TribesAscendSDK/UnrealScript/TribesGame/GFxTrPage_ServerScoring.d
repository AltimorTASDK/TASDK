module UnrealScript.TribesGame.GFxTrPage_ServerScoring;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ServerScoring : GFxTrPage
{
	public @property final bool bBoundsPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x8) != 0; }
	public @property final bool bBoundsPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x8; } return val; }
	public @property final bool bLivesPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x4) != 0; }
	public @property final bool bLivesPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x4; } return val; }
	public @property final bool bRoundsPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x2) != 0; }
	public @property final bool bRoundsPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x2; } return val; }
	public @property final bool bScorePopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x1) != 0; }
	public @property final bool bScorePopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x1; } return val; }
	public @property final auto ref int ScoreNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int MaxBOunds() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int MinBounds() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int GameType() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60898], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60899], params.ptr, cast(void*)0);
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60901], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60904], params.ptr, cast(void*)0);
	}
	final void ShowBoundsError(int PropId, int PropType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60909], params.ptr, cast(void*)0);
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60912], params.ptr, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60914], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60919], params.ptr, cast(void*)0);
	}
	final GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60923], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60927], cast(void*)0, cast(void*)0);
	}
}
