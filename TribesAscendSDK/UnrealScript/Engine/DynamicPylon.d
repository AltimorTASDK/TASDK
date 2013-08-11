module UnrealScript.Engine.DynamicPylon;

import ScriptClasses;
import UnrealScript.Engine.Pylon;

extern(C++) interface DynamicPylon : Pylon
{
	public @property final bool bMoving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 832) & 0x1) != 0; }
	public @property final bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 832) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 832) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14852], cast(void*)0, cast(void*)0);
	}
	final void RebuildDynamicEdges()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14853], cast(void*)0, cast(void*)0);
	}
	final void FlushDynamicEdges()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14854], cast(void*)0, cast(void*)0);
	}
	final void StartedMoving()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14855], cast(void*)0, cast(void*)0);
	}
	final void StoppedMoving()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14856], cast(void*)0, cast(void*)0);
	}
}
