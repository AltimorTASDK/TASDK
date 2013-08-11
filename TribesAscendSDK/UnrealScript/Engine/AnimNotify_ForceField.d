module UnrealScript.Engine.AnimNotify_ForceField;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_ForceField : AnimNotify
{
	public @property final auto ref ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
	public @property final bool bAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
}
