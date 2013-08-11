module UnrealScript.Engine.ExponentialHeightFogComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface ExponentialHeightFogComponent : ActorComponent
{
	public @property final auto ref UObject.Color LightInscatteringColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float LightInscatteringBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref UObject.Color OppositeLightColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float OppositeLightBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float LightTerminatorAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float StartDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float FogMaxOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float FogHeightFalloff() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float FogDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float FogHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	final void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15608], params.ptr, cast(void*)0);
	}
}
