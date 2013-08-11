module UnrealScript.UDKBase.UDKAnimBlendBase;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface UDKAnimBlendBase : AnimNodeBlendList
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(float) ChildBlendTimes() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 280); }
			float BlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
		}
		bool bTickAnimInScript() { return (*cast(uint*)(cast(size_t)cast(void*)this + 292) & 0x1) != 0; }
		bool bTickAnimInScript(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 292) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 292) &= ~0x1; } return val; }
	}
final:
	float GetBlendTime(int ChildIndex, bool bGetDefault)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ChildIndex;
		*cast(bool*)&params[4] = bGetDefault;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34482], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	float GetAnimDuration(int ChildIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ChildIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34486], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void TickAnim(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34489], params.ptr, cast(void*)0);
	}
}
