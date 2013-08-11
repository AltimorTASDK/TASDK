module UnrealScript.Engine.PlayerStart;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SeqAct_Toggle;

extern(C++) interface PlayerStart : NavigationPoint
{
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x1; } return val; }
	public @property final bool bPrimaryStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x2) != 0; }
	public @property final bool bPrimaryStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x2; } return val; }
	public @property final auto ref int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 696); }
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24658], params.ptr, cast(void*)0);
	}
}
