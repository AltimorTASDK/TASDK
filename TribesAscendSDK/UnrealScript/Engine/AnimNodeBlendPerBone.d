module UnrealScript.Engine.AnimNodeBlendPerBone;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodeBlendPerBone : AnimNodeBlend
{
	public @property final auto ref ScriptArray!(ScriptName) BranchStartBoneName() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptArray!(float) Child2PerBoneWeight() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref ScriptArray!(ubyte) LocalToCompReqBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 288); }
	public @property final bool bForceLocalSpaceBlend() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
	public @property final bool bForceLocalSpaceBlend(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	final void SetBlendTarget(float BlendTarget, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = BlendTarget;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10886], params.ptr, cast(void*)0);
	}
}
