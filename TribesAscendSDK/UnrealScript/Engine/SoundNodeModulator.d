module UnrealScript.Engine.SoundNodeModulator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeModulator : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SoundNodeModulator")); }
	private static __gshared SoundNodeModulator mDefaultProperties;
	@property final static SoundNodeModulator DefaultProperties() { mixin(MGDPC("SoundNodeModulator", "SoundNodeModulator Engine.Default__SoundNodeModulator")); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat VolumeModulation() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 120)); }
		DistributionFloat.RawDistributionFloat PitchModulation() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 92)); }
		float VolumeMax() { mixin(MGPC("float", 88)); }
		float VolumeMin() { mixin(MGPC("float", 84)); }
		float PitchMax() { mixin(MGPC("float", 80)); }
		float PitchMin() { mixin(MGPC("float", 76)); }
	}
}
