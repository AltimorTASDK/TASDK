module UnrealScript.Engine.ApexClothingAsset;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ApexAsset;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.ApexGenericAsset;

extern(C++) interface ApexClothingAsset : ApexAsset
{
	public @property final auto ref ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float LodWeightsBenefitsBias() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float LodWeightsBias() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float LodWeightsDistanceWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float LodWeightsMaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float ContinuousDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float ContinuousRotationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float MaxDistanceBlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref int UVChannelForTangentUpdate() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
	public @property final bool bRecomputeNormals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8) != 0; }
	public @property final bool bRecomputeNormals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8; } return val; }
	public @property final bool bSlowStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4) != 0; }
	public @property final bool bSlowStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4; } return val; }
	public @property final bool bFallbackSkinning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
	public @property final bool bFallbackSkinning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
	public @property final bool bUseHardwareCloth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
	public @property final bool bUseHardwareCloth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	public @property final auto ref ApexGenericAsset ApexClothingLibrary() { return *cast(ApexGenericAsset*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref UObject.Pointer MApexAsset() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
}
