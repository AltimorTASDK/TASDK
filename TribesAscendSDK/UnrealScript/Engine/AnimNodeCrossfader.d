module UnrealScript.Engine.AnimNodeCrossfader;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodeCrossfader : AnimNodeBlend
{
public extern(D):
	@property final
	{
		auto ref
		{
			float PendingBlendOutTimeOneShot() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			ScriptName DefaultAnimSeqName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 260); }
		}
		bool bDontBlendOutOneShot() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
		bool bDontBlendOutOneShot(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	}
final:
	void PlayOneShotAnim(ScriptName AnimSeqName, float BlendInTime, float BlendOutTime, bool bDontBlendOut, float Rate)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		*cast(float*)&params[8] = BlendInTime;
		*cast(float*)&params[12] = BlendOutTime;
		*cast(bool*)&params[16] = bDontBlendOut;
		*cast(float*)&params[20] = Rate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10892], params.ptr, cast(void*)0);
	}
	void BlendToLoopingAnim(ScriptName AnimSeqName, float BlendInTime, float Rate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		*cast(float*)&params[8] = BlendInTime;
		*cast(float*)&params[12] = Rate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10898], params.ptr, cast(void*)0);
	}
	ScriptName GetAnimName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10902], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	AnimNodeSequence GetActiveChild()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10904], params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)params.ptr;
	}
}
