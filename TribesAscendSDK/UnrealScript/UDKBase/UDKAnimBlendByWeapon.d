module UnrealScript.UDKBase.UDKAnimBlendByWeapon;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendPerBone;

extern(C++) interface UDKAnimBlendByWeapon : AnimNodeBlendPerBone
{
public extern(D):
	@property final
	{
		auto ref
		{
			float BlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			ScriptName LoopingAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 304); }
		}
		bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 300) & 0x1) != 0; }
		bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 300) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 300) &= ~0x1; } return val; }
	}
final:
	void AnimFire(ScriptName FireSequence, bool bAutoFire, float AnimRate, float SpecialBlendTime, ScriptName LoopSequence)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FireSequence;
		*cast(bool*)&params[8] = bAutoFire;
		*cast(float*)&params[12] = AnimRate;
		*cast(float*)&params[16] = SpecialBlendTime;
		*cast(ScriptName*)&params[20] = LoopSequence;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34556], params.ptr, cast(void*)0);
	}
	void AnimStopFire(float SpecialBlendTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = SpecialBlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34563], params.ptr, cast(void*)0);
	}
}
