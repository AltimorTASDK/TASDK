module UnrealScript.GameFramework.SeqAct_ControlGameMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_ControlGameMovie : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqAct_ControlGameMovie")()); }
	private static __gshared SeqAct_ControlGameMovie mDefaultProperties;
	@property final static SeqAct_ControlGameMovie DefaultProperties() { mixin(MGDPC!(SeqAct_ControlGameMovie, "SeqAct_ControlGameMovie GameFramework.Default__SeqAct_ControlGameMovie")()); }
	@property final auto ref
	{
		int EndOfRenderingMovieFrame() { mixin(MGPC!("int", 264)()); }
		int StartOfRenderingMovieFrame() { mixin(MGPC!("int", 260)()); }
		ScriptString MovieName() { mixin(MGPC!("ScriptString", 248)()); }
	}
}
