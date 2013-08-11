module UnrealScript.Engine.BlurEffect;

import UnrealScript.Engine.PostProcessEffect;

extern(C++) interface BlurEffect : PostProcessEffect
{
	public @property final auto ref int BlurKernelSize() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
}
