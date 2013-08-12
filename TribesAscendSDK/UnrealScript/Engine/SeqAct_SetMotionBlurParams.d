module UnrealScript.Engine.SeqAct_SetMotionBlurParams;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_SetMotionBlurParams : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetMotionBlurParams")); }
	@property final auto ref
	{
		float OldMotionBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float InterpolateElapsed() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		float InterpolateSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float MotionBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	}
}
