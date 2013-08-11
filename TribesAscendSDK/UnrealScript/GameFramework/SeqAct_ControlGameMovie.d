module UnrealScript.GameFramework.SeqAct_ControlGameMovie;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_ControlGameMovie : SeqAct_Latent
{
	public @property final auto ref int EndOfRenderingMovieFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref int StartOfRenderingMovieFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptString MovieName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
}
