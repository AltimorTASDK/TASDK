module UnrealScript.Engine.SeqAct_ControlMovieTexture;

import ScriptClasses;
import UnrealScript.Engine.TextureMovie;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ControlMovieTexture : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ControlMovieTexture")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_ControlMovieTexture.Activated")); }
	}
	enum EMovieControlType : ubyte
	{
		MCT_Play = 0,
		MCT_Stop = 1,
		MCT_Pause = 2,
		MCT_MAX = 3,
	}
	@property final auto ref TextureMovie MovieTexture() { return *cast(TextureMovie*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
