module UnrealScript.Engine.LightmassLevelSettings;

import UnrealScript.Core.UObject;

extern(C++) interface LightmassLevelSettings : UObject
{
	public @property final auto ref float MaxOcclusionDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float FullyOccludedSamplesFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float OcclusionExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float IndirectIlluminationOcclusionFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float DirectIlluminationOcclusionFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final bool bVisualizeAmbientOcclusion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
	public @property final bool bVisualizeAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
	public @property final bool bUseAmbientOcclusion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
	public @property final bool bUseAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	public @property final auto ref float SpecularBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float DiffuseBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float EmissiveBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float EnvironmentIntensity() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref UObject.Color EnvironmentColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int NumIndirectLightingBounces() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
