module UnrealScript.Engine.SoundNodeAttenuation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeAttenuation : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SoundNodeAttenuation")); }
	private static __gshared SoundNodeAttenuation mDefaultProperties;
	@property final static SoundNodeAttenuation DefaultProperties() { mixin(MGDPC("SoundNodeAttenuation", "SoundNodeAttenuation Engine.Default__SoundNodeAttenuation")); }
	enum ESoundDistanceCalc : ubyte
	{
		SOUNDDISTANCE_Normal = 0,
		SOUNDDISTANCE_InfiniteXYPlane = 1,
		SOUNDDISTANCE_InfiniteXZPlane = 2,
		SOUNDDISTANCE_InfiniteYZPlane = 3,
		SOUNDDISTANCE_MAX = 4,
	}
	enum SoundDistanceModel : ubyte
	{
		ATTENUATION_Linear = 0,
		ATTENUATION_Logarithmic = 1,
		ATTENUATION_Inverse = 2,
		ATTENUATION_LogReverse = 3,
		ATTENUATION_NaturalSound = 4,
		ATTENUATION_MAX = 5,
	}
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat LPFMaxRadius() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 188)); }
			DistributionFloat.RawDistributionFloat LPFMinRadius() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 160)); }
			DistributionFloat.RawDistributionFloat MaxRadius() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 132)); }
			DistributionFloat.RawDistributionFloat MinRadius() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 104)); }
			float LPFRadiusMax() { mixin(MGPC("float", 100)); }
			float LPFRadiusMin() { mixin(MGPC("float", 96)); }
			float RadiusMax() { mixin(MGPC("float", 92)); }
			float RadiusMin() { mixin(MGPC("float", 88)); }
			SoundNodeAttenuation.SoundDistanceModel DistanceModel() { mixin(MGPC("SoundNodeAttenuation.SoundDistanceModel", 86)); }
			SoundNodeAttenuation.ESoundDistanceCalc DistanceType() { mixin(MGPC("SoundNodeAttenuation.ESoundDistanceCalc", 85)); }
			SoundNodeAttenuation.SoundDistanceModel DistanceAlgorithm() { mixin(MGPC("SoundNodeAttenuation.SoundDistanceModel", 84)); }
			float dBAttenuationAtMax() { mixin(MGPC("float", 80)); }
		}
		bool bAttenuateWithLowPassFilter() { mixin(MGBPC(76, 0x8)); }
		bool bAttenuateWithLowPassFilter(bool val) { mixin(MSBPC(76, 0x8)); }
		bool bAttenuateWithLPF() { mixin(MGBPC(76, 0x4)); }
		bool bAttenuateWithLPF(bool val) { mixin(MSBPC(76, 0x4)); }
		bool bSpatialize() { mixin(MGBPC(76, 0x2)); }
		bool bSpatialize(bool val) { mixin(MSBPC(76, 0x2)); }
		bool bAttenuate() { mixin(MGBPC(76, 0x1)); }
		bool bAttenuate(bool val) { mixin(MSBPC(76, 0x1)); }
	}
}
