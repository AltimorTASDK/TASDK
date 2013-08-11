module UnrealScript.Engine.ParticleLightEnvironmentComponent;

import UnrealScript.Engine.DynamicLightEnvironmentComponent;

extern(C++) interface ParticleLightEnvironmentComponent : DynamicLightEnvironmentComponent
{
public extern(D):
	@property final
	{
		@property final auto ref int ReferenceCount() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
		bool bAllowDLESharing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 300) & 0x1) != 0; }
		bool bAllowDLESharing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 300) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 300) &= ~0x1; } return val; }
	}
}
