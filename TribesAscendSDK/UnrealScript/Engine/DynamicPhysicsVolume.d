module UnrealScript.Engine.DynamicPhysicsVolume;

import ScriptClasses;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface DynamicPhysicsVolume : PhysicsVolume
{
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14848], cast(void*)0, cast(void*)0);
	}
}
