module UnrealScript.Engine.SeqAct_SetMotionBlurParams;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_SetMotionBlurParams : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetMotionBlurParams")()); }
	private static __gshared SeqAct_SetMotionBlurParams mDefaultProperties;
	@property final static SeqAct_SetMotionBlurParams DefaultProperties() { mixin(MGDPC!(SeqAct_SetMotionBlurParams, "SeqAct_SetMotionBlurParams Engine.Default__SeqAct_SetMotionBlurParams")()); }
	@property final auto ref
	{
		float OldMotionBlurAmount() { mixin(MGPC!("float", 260)()); }
		float InterpolateElapsed() { mixin(MGPC!("float", 256)()); }
		float InterpolateSeconds() { mixin(MGPC!("float", 252)()); }
		float MotionBlurAmount() { mixin(MGPC!("float", 248)()); }
	}
}
