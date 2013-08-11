module UnrealScript.Engine.KActorSpawnable;

import ScriptClasses;
import UnrealScript.Engine.KActor;

extern(C++) interface KActorSpawnable : KActor
{
public extern(D):
	@property final
	{
		bool bScalingToZero() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x2) != 0; }
		bool bScalingToZero(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x2; } return val; }
		bool bRecycleScaleToZero() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x1) != 0; }
		bool bRecycleScaleToZero(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19080], cast(void*)0, cast(void*)0);
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19081], cast(void*)0, cast(void*)0);
	}
	void RecycleInternal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19082], cast(void*)0, cast(void*)0);
	}
	void ResetComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19083], cast(void*)0, cast(void*)0);
	}
}
