module UnrealScript.Engine.AmbientOcclusionEffect;

import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Core.UObject;

extern(C++) interface AmbientOcclusionEffect : PostProcessEffect
{
	enum EAmbientOcclusionQuality : ubyte
	{
		AO_High = 0,
		AO_Medium = 1,
		AO_Low = 2,
		AO_MAX = 3,
	}
	public @property final auto ref float HistoryWeightConvergenceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float HistoryConvergenceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref int FilterSize() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float FilterDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float EdgeDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float EdgeDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float HaloOcclusion() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float HaloDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float HaloDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float OcclusionFadeoutMaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float OcclusionFadeoutMinDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref AmbientOcclusionEffect.EAmbientOcclusionQuality OcclusionQuality() { return *cast(AmbientOcclusionEffect.EAmbientOcclusionQuality*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref UObject.LinearColor OcclusionColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float OcclusionAttenuation() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float OcclusionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final bool bAngleBasedSSAO() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x2) != 0; }
	public @property final bool bAngleBasedSSAO(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x2; } return val; }
	public @property final bool SSAO2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
	public @property final bool SSAO2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	public @property final auto ref float MinOcclusion() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float OcclusionBias() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float OcclusionScale() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float OcclusionPower() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
}
