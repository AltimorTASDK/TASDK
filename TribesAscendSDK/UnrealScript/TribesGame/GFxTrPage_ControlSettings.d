module UnrealScript.TribesGame.GFxTrPage_ControlSettings;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ControlSettings : GFxTrPage
{
	public @property final bool bWaitingForVYSensitivity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x8) != 0; }
	public @property final bool bWaitingForVYSensitivity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x8; } return val; }
	public @property final bool bWaitingForVPSensitivity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x4) != 0; }
	public @property final bool bWaitingForVPSensitivity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x4; } return val; }
	public @property final bool bWaitingForSensitivity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x2) != 0; }
	public @property final bool bWaitingForSensitivity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x2; } return val; }
	public @property final bool bWaitingForFOV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x1) != 0; }
	public @property final bool bWaitingForFOV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x1; } return val; }
	public @property final auto ref int popupIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58457], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58459], params.ptr, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58465], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void SetSubTitle(int Index, float val, GFxObject Obj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = val;
		*cast(GFxObject*)&params[8] = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58470], params.ptr, cast(void*)0);
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58475], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58480], params.ptr, cast(void*)0);
	}
}
