module UnrealScript.Engine.MatineeActor;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroupInstAI;

extern(C++) interface MatineeActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MatineeActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddAIGroupActor;
			ScriptFunction mUpdate;
			ScriptFunction mCheckPriorityRefresh;
		}
		public @property static final
		{
			ScriptFunction AddAIGroupActor() { return mAddAIGroupActor ? mAddAIGroupActor : (mAddAIGroupActor = ScriptObject.Find!(ScriptFunction)("Function Engine.MatineeActor.AddAIGroupActor")); }
			ScriptFunction Update() { return mUpdate ? mUpdate : (mUpdate = ScriptObject.Find!(ScriptFunction)("Function Engine.MatineeActor.Update")); }
			ScriptFunction CheckPriorityRefresh() { return mCheckPriorityRefresh ? mCheckPriorityRefresh : (mCheckPriorityRefresh = ScriptObject.Find!(ScriptFunction)("Function Engine.MatineeActor.CheckPriorityRefresh")); }
		}
	}
	static struct Constants
	{
		enum MAX_AIGROUP_NUMBER = 10;
	}
	@property final
	{
		auto ref
		{
			float ClientSidePositionErrorTolerance() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
			int AIGroupInitStage() { return *cast(int*)(cast(size_t)cast(void*)this + 612); }
			Pawn AIGroupPawns() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 572); }
			ScriptName AIGroupNames() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 492); }
			float Position() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float PlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			SeqAct_Interp InterpAction() { return *cast(SeqAct_Interp*)(cast(size_t)cast(void*)this + 476); }
		}
		bool AllAIGroupsInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x8) != 0; }
		bool AllAIGroupsInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x8; } return val; }
		bool bPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x4) != 0; }
		bool bPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x4; } return val; }
		bool bReversePlayback() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
		bool bReversePlayback(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
		bool bIsPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bIsPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
	void AddAIGroupActor(InterpGroupInstAI AIGroupInst)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroupInstAI*)params.ptr = AIGroupInst;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAIGroupActor, params.ptr, cast(void*)0);
	}
	void Update()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Update, cast(void*)0, cast(void*)0);
	}
	void CheckPriorityRefresh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPriorityRefresh, cast(void*)0, cast(void*)0);
	}
}
