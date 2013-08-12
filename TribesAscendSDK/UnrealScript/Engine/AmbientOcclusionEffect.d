module UnrealScript.Engine.AmbientOcclusionEffect;

import ScriptClasses;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Core.UObject;

extern(C++) interface AmbientOcclusionEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AmbientOcclusionEffect")); }
	enum EAmbientOcclusionQuality : ubyte
	{
		AO_High = 0,
		AO_Medium = 1,
		AO_Low = 2,
		AO_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			float HistoryWeightConvergenceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float HistoryConvergenceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			int FilterSize() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
			float FilterDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float EdgeDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float EdgeDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float HaloOcclusion() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float HaloDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float HaloDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			float OcclusionFadeoutMaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float OcclusionFadeoutMinDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			AmbientOcclusionEffect.EAmbientOcclusionQuality OcclusionQuality() { return *cast(AmbientOcclusionEffect.EAmbientOcclusionQuality*)(cast(size_t)cast(void*)this + 144); }
			UObject.LinearColor OcclusionColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 100); }
			float OcclusionAttenuation() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			float OcclusionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float MinOcclusion() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float OcclusionBias() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float OcclusionScale() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float OcclusionPower() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
		}
		bool bAngleBasedSSAO() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x2) != 0; }
		bool bAngleBasedSSAO(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x2; } return val; }
		bool SSAO2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
		bool SSAO2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	}
}
