module UnrealScript.Engine.LightmassLevelSettings;

import UnrealScript.Core.UObject;

extern(C++) interface LightmassLevelSettings : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			float MaxOcclusionDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float FullyOccludedSamplesFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float OcclusionExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float IndirectIlluminationOcclusionFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float DirectIlluminationOcclusionFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float SpecularBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float DiffuseBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float EmissiveBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			float EnvironmentIntensity() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			UObject.Color EnvironmentColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 64); }
			int NumIndirectLightingBounces() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bVisualizeAmbientOcclusion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
		bool bVisualizeAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
		bool bUseAmbientOcclusion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bUseAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}
