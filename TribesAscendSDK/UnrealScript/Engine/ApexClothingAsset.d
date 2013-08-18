module UnrealScript.Engine.ApexClothingAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ApexAsset;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.ApexGenericAsset;

extern(C++) interface ApexClothingAsset : ApexAsset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ApexClothingAsset")); }
	private static __gshared ApexClothingAsset mDefaultProperties;
	@property final static ApexClothingAsset DefaultProperties() { mixin(MGDPC("ApexClothingAsset", "ApexClothingAsset Engine.Default__ApexClothingAsset")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInterface) Materials() { mixin(MGPC("ScriptArray!(MaterialInterface)", 112)); }
			float LodWeightsBenefitsBias() { mixin(MGPC("float", 160)); }
			float LodWeightsBias() { mixin(MGPC("float", 156)); }
			float LodWeightsDistanceWeight() { mixin(MGPC("float", 152)); }
			float LodWeightsMaxDistance() { mixin(MGPC("float", 148)); }
			float ContinuousDistanceThreshold() { mixin(MGPC("float", 144)); }
			float ContinuousRotationThreshold() { mixin(MGPC("float", 140)); }
			float MaxDistanceBlendTime() { mixin(MGPC("float", 136)); }
			int UVChannelForTangentUpdate() { mixin(MGPC("int", 132)); }
			ApexGenericAsset ApexClothingLibrary() { mixin(MGPC("ApexGenericAsset", 124)); }
			Pointer MApexAsset() { mixin(MGPC("Pointer", 108)); }
		}
		bool bRecomputeNormals() { mixin(MGBPC(128, 0x8)); }
		bool bRecomputeNormals(bool val) { mixin(MSBPC(128, 0x8)); }
		bool bSlowStart() { mixin(MGBPC(128, 0x4)); }
		bool bSlowStart(bool val) { mixin(MSBPC(128, 0x4)); }
		bool bFallbackSkinning() { mixin(MGBPC(128, 0x2)); }
		bool bFallbackSkinning(bool val) { mixin(MSBPC(128, 0x2)); }
		bool bUseHardwareCloth() { mixin(MGBPC(128, 0x1)); }
		bool bUseHardwareCloth(bool val) { mixin(MSBPC(128, 0x1)); }
	}
}
