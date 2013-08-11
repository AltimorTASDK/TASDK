module UnrealScript.Engine.SeqAct_SetMotionBlurParams;

import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_SetMotionBlurParams : SeqAct_Latent
{
public extern(D):
	@property final auto ref
	{
		float OldMotionBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float InterpolateElapsed() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		float InterpolateSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float MotionBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	}
}
