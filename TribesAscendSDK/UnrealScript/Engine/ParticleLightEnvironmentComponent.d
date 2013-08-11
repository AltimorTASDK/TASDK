module UnrealScript.Engine.ParticleLightEnvironmentComponent;

import UnrealScript.Engine.DynamicLightEnvironmentComponent;

extern(C++) interface ParticleLightEnvironmentComponent : DynamicLightEnvironmentComponent
{
	public @property final bool bAllowDLESharing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 300) & 0x1) != 0; }
	public @property final bool bAllowDLESharing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 300) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 300) &= ~0x1; } return val; }
	public @property final auto ref int ReferenceCount() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
}
