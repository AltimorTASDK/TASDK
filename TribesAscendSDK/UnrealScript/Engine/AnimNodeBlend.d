module UnrealScript.Engine.AnimNodeBlend;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlend : AnimNodeBlendBase
{
	public @property final bool bSkipBlendWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
	public @property final bool bSkipBlendWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	public @property final auto ref float BlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float Child2WeightTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float Child2Weight() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	final void SetBlendTarget(float BlendTarget, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = BlendTarget;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10755], params.ptr, cast(void*)0);
	}
}
