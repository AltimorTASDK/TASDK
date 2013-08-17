module UnrealScript.Engine.WaveFormBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface WaveFormBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.WaveFormBase")()); }
	private static __gshared WaveFormBase mDefaultProperties;
	@property final static WaveFormBase DefaultProperties() { mixin(MGDPC!(WaveFormBase, "WaveFormBase Engine.Default__WaveFormBase")()); }
	@property final auto ref ForceFeedbackWaveform TheWaveForm() { mixin(MGPC!(ForceFeedbackWaveform, 60)()); }
}
