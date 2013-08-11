module UnrealScript.Engine.AISwitchablePylon;

import ScriptClasses;
import UnrealScript.Engine.Pylon;

extern(C++) interface AISwitchablePylon : Pylon
{
	public @property final bool bOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 832) & 0x1) != 0; }
	public @property final bool bOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 832) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 832) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9981], cast(void*)0, cast(void*)0);
	}
	final void SetEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9982], params.ptr, cast(void*)0);
	}
	final bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9984], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
