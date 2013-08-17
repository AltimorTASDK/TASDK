module UnrealScript.Engine.SoundNodeOscillator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeOscillator : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SoundNodeOscillator")); }
	private static __gshared SoundNodeOscillator mDefaultProperties;
	@property final static SoundNodeOscillator DefaultProperties() { mixin(MGDPC("SoundNodeOscillator", "SoundNodeOscillator Engine.Default__SoundNodeOscillator")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat Center() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 196)); }
			DistributionFloat.RawDistributionFloat Offset() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 168)); }
			DistributionFloat.RawDistributionFloat Frequency() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 140)); }
			DistributionFloat.RawDistributionFloat Amplitude() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 112)); }
			float CenterMax() { mixin(MGPC("float", 108)); }
			float CenterMin() { mixin(MGPC("float", 104)); }
			float OffsetMax() { mixin(MGPC("float", 100)); }
			float OffsetMin() { mixin(MGPC("float", 96)); }
			float FrequencyMax() { mixin(MGPC("float", 92)); }
			float FrequencyMin() { mixin(MGPC("float", 88)); }
			float AmplitudeMax() { mixin(MGPC("float", 84)); }
			float AmplitudeMin() { mixin(MGPC("float", 80)); }
		}
		bool bModulatePitch() { mixin(MGBPC(76, 0x2)); }
		bool bModulatePitch(bool val) { mixin(MSBPC(76, 0x2)); }
		bool bModulateVolume() { mixin(MGBPC(76, 0x1)); }
		bool bModulateVolume(bool val) { mixin(MSBPC(76, 0x1)); }
	}
}
