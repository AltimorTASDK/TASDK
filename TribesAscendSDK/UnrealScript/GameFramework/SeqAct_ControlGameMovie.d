module UnrealScript.GameFramework.SeqAct_ControlGameMovie;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_ControlGameMovie : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqAct_ControlGameMovie")); }
	@property final auto ref
	{
		int EndOfRenderingMovieFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 264); }
		int StartOfRenderingMovieFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 260); }
		ScriptString MovieName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
	}
}
