module UnrealScript.Engine.SeqAct_SetDOFParams;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Core.UObject;

extern(C++) interface SeqAct_SetDOFParams : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetDOFParams")); }
	@property final auto ref
	{
		Vector OldFocusPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 332); }
		float OldFocusDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
		float OldFocusInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
		UObject.Color OldModulateBlurColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 320); }
		float OldMaxFarBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
		float OldMinBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
		float OldMaxNearBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
		float OldBlurKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
		float OldFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
		float InterpolateElapsed() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
		float InterpolateSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
		Vector FocusPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 280); }
		float FocusDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
		float FocusInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
		UObject.Color ModulateBlurColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 268); }
		float MaxFarBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float MinBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float MaxNearBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		float BlurKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float FalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	}
}
