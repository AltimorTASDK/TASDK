module UnrealScript.Engine.SoundNodeModulatorContinuous;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeModulatorContinuous : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeModulatorContinuous")()); }
	private static __gshared SoundNodeModulatorContinuous mDefaultProperties;
	@property final static SoundNodeModulatorContinuous DefaultProperties() { mixin(MGDPC!(SoundNodeModulatorContinuous, "SoundNodeModulatorContinuous Engine.Default__SoundNodeModulatorContinuous")()); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat VolumeModulation() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 104)()); }
		DistributionFloat.RawDistributionFloat PitchModulation() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 76)()); }
	}
}
