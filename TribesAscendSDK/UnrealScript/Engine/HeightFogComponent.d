module UnrealScript.Engine.HeightFogComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface HeightFogComponent : ActorComponent
{
	public @property final auto ref float StartDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float ExtinctionDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref UObject.Color LightColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float LightBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float Density() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	final void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18202], params.ptr, cast(void*)0);
	}
}
