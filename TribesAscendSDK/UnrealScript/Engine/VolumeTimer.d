module UnrealScript.Engine.VolumeTimer;

import ScriptClasses;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Info;

extern(C++) interface VolumeTimer : Info
{
public extern(D):
	@property final auto ref PhysicsVolume V() { return *cast(PhysicsVolume*)(cast(size_t)cast(void*)this + 476); }
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29244], cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29245], cast(void*)0, cast(void*)0);
	}
}
