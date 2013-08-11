module UnrealScript.Engine.ZoneInfo;

import ScriptClasses;
import UnrealScript.Engine.Info;

extern(C++) interface ZoneInfo : Info
{
	public @property final auto ref float KillZ() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	public @property final bool bSoftKillZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
	public @property final bool bSoftKillZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	// WARNING: Property 'KillZDamageType' has the same name as a defined type!
	public @property final auto ref float SoftKill() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
}
