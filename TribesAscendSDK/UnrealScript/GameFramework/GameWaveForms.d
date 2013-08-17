module UnrealScript.GameFramework.GameWaveForms;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface GameWaveForms : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameWaveForms")()); }
	private static __gshared GameWaveForms mDefaultProperties;
	@property final static GameWaveForms DefaultProperties() { mixin(MGDPC!(GameWaveForms, "GameWaveForms GameFramework.Default__GameWaveForms")()); }
	@property final auto ref
	{
		ForceFeedbackWaveform CameraShakeBigShort() { mixin(MGPC!("ForceFeedbackWaveform", 68)()); }
		ForceFeedbackWaveform CameraShakeBigLong() { mixin(MGPC!("ForceFeedbackWaveform", 72)()); }
		ForceFeedbackWaveform CameraShakeMediumShort() { mixin(MGPC!("ForceFeedbackWaveform", 60)()); }
		ForceFeedbackWaveform CameraShakeMediumLong() { mixin(MGPC!("ForceFeedbackWaveform", 64)()); }
	}
}
