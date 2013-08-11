module UnrealScript.Engine.SeqAct_SetDOFParams;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Core.UObject;

extern(C++) interface SeqAct_SetDOFParams : SeqAct_Latent
{
	public @property final auto ref Vector OldFocusPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref float OldFocusDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref float OldFocusInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref UObject.Color OldModulateBlurColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float OldMaxFarBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float OldMinBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref float OldMaxNearBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref float OldBlurKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float OldFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref float InterpolateElapsed() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref float InterpolateSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref Vector FocusPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float FocusDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float FocusInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref UObject.Color ModulateBlurColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float MaxFarBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float MinBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float MaxNearBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float BlurKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float FalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
}
