module UnrealScript.Engine.StaticMeshActor;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshActorBase;

extern(C++) interface StaticMeshActor : StaticMeshActorBase
{
	public @property final bool bDisableAutoBaseOnProcBuilding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bDisableAutoBaseOnProcBuilding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18317], cast(void*)0, cast(void*)0);
	}
}
