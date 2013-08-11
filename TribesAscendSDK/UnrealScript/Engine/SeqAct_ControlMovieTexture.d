module UnrealScript.Engine.SeqAct_ControlMovieTexture;

import ScriptClasses;
import UnrealScript.Engine.TextureMovie;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ControlMovieTexture : SequenceAction
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6859], cast(void*)0, cast(void*)0);
	}
}
