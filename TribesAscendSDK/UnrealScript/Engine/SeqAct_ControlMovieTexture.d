module UnrealScript.Engine.SeqAct_ControlMovieTexture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TextureMovie;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ControlMovieTexture : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ControlMovieTexture")()); }
	private static __gshared SeqAct_ControlMovieTexture mDefaultProperties;
	@property final static SeqAct_ControlMovieTexture DefaultProperties() { mixin(MGDPC!(SeqAct_ControlMovieTexture, "SeqAct_ControlMovieTexture Engine.Default__SeqAct_ControlMovieTexture")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF!("mActivated", "Function Engine.SeqAct_ControlMovieTexture.Activated")()); }
	}
	enum EMovieControlType : ubyte
	{
		MCT_Play = 0,
		MCT_Stop = 1,
		MCT_Pause = 2,
		MCT_MAX = 3,
	}
	@property final auto ref TextureMovie MovieTexture() { mixin(MGPC!(TextureMovie, 232)()); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
