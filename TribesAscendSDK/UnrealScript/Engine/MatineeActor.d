module UnrealScript.Engine.MatineeActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroupInstAI;

extern(C++) interface MatineeActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MatineeActor")()); }
	private static __gshared MatineeActor mDefaultProperties;
	@property final static MatineeActor DefaultProperties() { mixin(MGDPC!(MatineeActor, "MatineeActor Engine.Default__MatineeActor")()); }
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
			ScriptFunction AddAIGroupActor() { mixin(MGF!("mAddAIGroupActor", "Function Engine.MatineeActor.AddAIGroupActor")()); }
			ScriptFunction Update() { mixin(MGF!("mUpdate", "Function Engine.MatineeActor.Update")()); }
			ScriptFunction CheckPriorityRefresh() { mixin(MGF!("mCheckPriorityRefresh", "Function Engine.MatineeActor.CheckPriorityRefresh")()); }
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
			float ClientSidePositionErrorTolerance() { mixin(MGPC!("float", 652)()); }
			int AIGroupInitStage() { mixin(MGPC!("int", 612)()); }
			Pawn AIGroupPawns() { mixin(MGPC!("Pawn", 572)()); }
			ScriptName AIGroupNames() { mixin(MGPC!("ScriptName", 492)()); }
			float Position() { mixin(MGPC!("float", 488)()); }
			float PlayRate() { mixin(MGPC!("float", 484)()); }
			SeqAct_Interp InterpAction() { mixin(MGPC!("SeqAct_Interp", 476)()); }
		}
		bool AllAIGroupsInitialized() { mixin(MGBPC!(480, 0x8)()); }
		bool AllAIGroupsInitialized(bool val) { mixin(MSBPC!(480, 0x8)()); }
		bool bPaused() { mixin(MGBPC!(480, 0x4)()); }
		bool bPaused(bool val) { mixin(MSBPC!(480, 0x4)()); }
		bool bReversePlayback() { mixin(MGBPC!(480, 0x2)()); }
		bool bReversePlayback(bool val) { mixin(MSBPC!(480, 0x2)()); }
		bool bIsPlaying() { mixin(MGBPC!(480, 0x1)()); }
		bool bIsPlaying(bool val) { mixin(MSBPC!(480, 0x1)()); }
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
