module UnrealScript.Engine.ApexClothingAsset;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ApexAsset;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.ApexGenericAsset;

extern(C++) interface ApexClothingAsset : ApexAsset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ApexClothingAsset")); }
	private static __gshared ApexClothingAsset mDefaultProperties;
	@property final static ApexClothingAsset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ApexClothingAsset)("ApexClothingAsset Engine.Default__ApexClothingAsset")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 112); }
			float LodWeightsBenefitsBias() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float LodWeightsBias() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			float LodWeightsDistanceWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float LodWeightsMaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float ContinuousDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			float ContinuousRotationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			float MaxDistanceBlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			int UVChannelForTangentUpdate() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
			ApexGenericAsset ApexClothingLibrary() { return *cast(ApexGenericAsset*)(cast(size_t)cast(void*)this + 124); }
			UObject.Pointer MApexAsset() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
		}
		bool bRecomputeNormals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8) != 0; }
		bool bRecomputeNormals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8; } return val; }
		bool bSlowStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4) != 0; }
		bool bSlowStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4; } return val; }
		bool bFallbackSkinning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
		bool bFallbackSkinning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
		bool bUseHardwareCloth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
		bool bUseHardwareCloth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	}
}
