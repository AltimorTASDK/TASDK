module UnrealScript.Engine.SeqVar_ObjectVolume;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_ObjectVolume : SeqVar_Object
{
	public @property final auto ref ScriptArray!(UObject) ContainedObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptArray!(ScriptClass) ExcludeClassList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 192); }
	public @property final bool bCollidingOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 204) & 0x1) != 0; }
	public @property final bool bCollidingOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 204) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 204) &= ~0x1; } return val; }
	public @property final auto ref float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
}
