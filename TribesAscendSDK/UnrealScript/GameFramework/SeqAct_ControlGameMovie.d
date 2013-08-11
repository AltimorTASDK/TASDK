module UnrealScript.GameFramework.SeqAct_ControlGameMovie;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_ControlGameMovie : SeqAct_Latent
{
public extern(D):
	@property final auto ref
	{
		int EndOfRenderingMovieFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 264); }
		int StartOfRenderingMovieFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 260); }
		ScriptString MovieName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
	}
}
