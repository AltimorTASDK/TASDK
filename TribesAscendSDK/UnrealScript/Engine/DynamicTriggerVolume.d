module UnrealScript.Engine.DynamicTriggerVolume;

import ScriptClasses;
import UnrealScript.Engine.TriggerVolume;

extern(C++) interface DynamicTriggerVolume : TriggerVolume
{
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14913], cast(void*)0, cast(void*)0);
	}
}
