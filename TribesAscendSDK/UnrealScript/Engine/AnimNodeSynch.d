module UnrealScript.Engine.AnimNodeSynch;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeSynch : AnimNodeBlendBase
{
public extern(D):
	struct SynchGroup
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(AnimNodeSequence) SeqNodes() { return *cast(ScriptArray!(AnimNodeSequence)*)(cast(size_t)&this + 0); }
				float RateScale() { return *cast(float*)(cast(size_t)&this + 28); }
				ScriptName GroupName() { return *cast(ScriptName*)(cast(size_t)&this + 16); }
				AnimNodeSequence MasterNode() { return *cast(AnimNodeSequence*)(cast(size_t)&this + 12); }
			}
			bool bFireSlaveNotifies() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bFireSlaveNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	@property final auto ref ScriptArray!(AnimNodeSynch.SynchGroup) Groups() { return *cast(ScriptArray!(AnimNodeSynch.SynchGroup)*)(cast(size_t)cast(void*)this + 244); }
final:
	void AddNodeToGroup(AnimNodeSequence SeqNode, ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(ScriptName*)&params[4] = GroupName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11109], params.ptr, cast(void*)0);
	}
	void RemoveNodeFromGroup(AnimNodeSequence SeqNode, ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(ScriptName*)&params[4] = GroupName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11112], params.ptr, cast(void*)0);
	}
	AnimNodeSequence GetMasterNodeOfGroup(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11115], params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)&params[8];
	}
	void ForceRelativePosition(ScriptName GroupName, float RelativePosition)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = RelativePosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11118], params.ptr, cast(void*)0);
	}
	float GetRelativePosition(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11121], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void SetGroupRateScale(ScriptName GroupName, float NewRateScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = NewRateScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11124], params.ptr, cast(void*)0);
	}
}
