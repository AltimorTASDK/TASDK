module UnrealScript.Engine.AnimNotify_Rumble;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Rumble : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_Rumble")()); }
	private static __gshared AnimNotify_Rumble mDefaultProperties;
	@property final static AnimNotify_Rumble DefaultProperties() { mixin(MGDPC!(AnimNotify_Rumble, "AnimNotify_Rumble Engine.Default__AnimNotify_Rumble")()); }
	@property final
	{
		auto ref
		{
			ScriptClass PredefinedWaveForm() { mixin(MGPC!("ScriptClass", 64)()); }
			ForceFeedbackWaveform WaveForm() { mixin(MGPC!("ForceFeedbackWaveform", 68)()); }
			float EffectRadius() { mixin(MGPC!("float", 76)()); }
		}
		bool bCheckForBasedPlayer() { mixin(MGBPC!(72, 0x1)()); }
		bool bCheckForBasedPlayer(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
}
