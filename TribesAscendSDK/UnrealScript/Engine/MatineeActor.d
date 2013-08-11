module UnrealScript.Engine.MatineeActor;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroupInstAI;

extern(C++) interface MatineeActor : Actor
{
	public static immutable auto MAX_AIGROUP_NUMBER = 10;
	public @property final auto ref float ClientSidePositionErrorTolerance() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref int AIGroupInitStage() { return *cast(int*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref Pawn AIGroupPawns() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref ScriptName AIGroupNames() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float Position() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float PlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool AllAIGroupsInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x8) != 0; }
	public @property final bool AllAIGroupsInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x8; } return val; }
	public @property final bool bPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x4) != 0; }
	public @property final bool bPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x4; } return val; }
	public @property final bool bReversePlayback() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
	public @property final bool bReversePlayback(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
	public @property final bool bIsPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bIsPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	public @property final auto ref SeqAct_Interp InterpAction() { return *cast(SeqAct_Interp*)(cast(size_t)cast(void*)this + 476); }
	final void AddAIGroupActor(InterpGroupInstAI AIGroupInst)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroupInstAI*)params.ptr = AIGroupInst;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19930], params.ptr, cast(void*)0);
	}
	final void Update()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19932], cast(void*)0, cast(void*)0);
	}
	final void CheckPriorityRefresh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19940], cast(void*)0, cast(void*)0);
	}
}
