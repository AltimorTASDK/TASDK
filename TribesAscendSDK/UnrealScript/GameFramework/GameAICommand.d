module UnrealScript.GameFramework.GameAICommand;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AICommandBase;
import UnrealScript.GameFramework.GameAIController;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.HUD;

extern(C++) interface GameAICommand : AICommandBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameAICommand")()); }
	private static __gshared GameAICommand mDefaultProperties;
	@property final static GameAICommand DefaultProperties() { mixin(MGDPC!(GameAICommand, "GameAICommand GameFramework.Default__GameAICommand")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitCommandUserActor;
			ScriptFunction mInitCommand;
			ScriptFunction mInternalPrePushed;
			ScriptFunction mInternalPushed;
			ScriptFunction mInternalPopped;
			ScriptFunction mInternalPaused;
			ScriptFunction mInternalResumed;
			ScriptFunction mInternalTick;
			ScriptFunction mShouldIgnoreNotifies;
			ScriptFunction mTick;
			ScriptFunction mAllowTransitionTo;
			ScriptFunction mAllowStateTransitionTo;
			ScriptFunction mPrePushed;
			ScriptFunction mPostPopped;
			ScriptFunction mPushed;
			ScriptFunction mPopped;
			ScriptFunction mPaused;
			ScriptFunction mResumed;
			ScriptFunction mGetDumpString;
			ScriptFunction mDrawDebug;
			ScriptFunction mGetDebugOverheadText;
			ScriptFunction mGetDebugVerboseText;
		}
		public @property static final
		{
			ScriptFunction InitCommandUserActor() { mixin(MGF!("mInitCommandUserActor", "Function GameFramework.GameAICommand.InitCommandUserActor")()); }
			ScriptFunction InitCommand() { mixin(MGF!("mInitCommand", "Function GameFramework.GameAICommand.InitCommand")()); }
			ScriptFunction InternalPrePushed() { mixin(MGF!("mInternalPrePushed", "Function GameFramework.GameAICommand.InternalPrePushed")()); }
			ScriptFunction InternalPushed() { mixin(MGF!("mInternalPushed", "Function GameFramework.GameAICommand.InternalPushed")()); }
			ScriptFunction InternalPopped() { mixin(MGF!("mInternalPopped", "Function GameFramework.GameAICommand.InternalPopped")()); }
			ScriptFunction InternalPaused() { mixin(MGF!("mInternalPaused", "Function GameFramework.GameAICommand.InternalPaused")()); }
			ScriptFunction InternalResumed() { mixin(MGF!("mInternalResumed", "Function GameFramework.GameAICommand.InternalResumed")()); }
			ScriptFunction InternalTick() { mixin(MGF!("mInternalTick", "Function GameFramework.GameAICommand.InternalTick")()); }
			ScriptFunction ShouldIgnoreNotifies() { mixin(MGF!("mShouldIgnoreNotifies", "Function GameFramework.GameAICommand.ShouldIgnoreNotifies")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function GameFramework.GameAICommand.Tick")()); }
			ScriptFunction AllowTransitionTo() { mixin(MGF!("mAllowTransitionTo", "Function GameFramework.GameAICommand.AllowTransitionTo")()); }
			ScriptFunction AllowStateTransitionTo() { mixin(MGF!("mAllowStateTransitionTo", "Function GameFramework.GameAICommand.AllowStateTransitionTo")()); }
			ScriptFunction PrePushed() { mixin(MGF!("mPrePushed", "Function GameFramework.GameAICommand.PrePushed")()); }
			ScriptFunction PostPopped() { mixin(MGF!("mPostPopped", "Function GameFramework.GameAICommand.PostPopped")()); }
			ScriptFunction Pushed() { mixin(MGF!("mPushed", "Function GameFramework.GameAICommand.Pushed")()); }
			ScriptFunction Popped() { mixin(MGF!("mPopped", "Function GameFramework.GameAICommand.Popped")()); }
			ScriptFunction Paused() { mixin(MGF!("mPaused", "Function GameFramework.GameAICommand.Paused")()); }
			ScriptFunction Resumed() { mixin(MGF!("mResumed", "Function GameFramework.GameAICommand.Resumed")()); }
			ScriptFunction GetDumpString() { mixin(MGF!("mGetDumpString", "Function GameFramework.GameAICommand.GetDumpString")()); }
			ScriptFunction DrawDebug() { mixin(MGF!("mDrawDebug", "Function GameFramework.GameAICommand.DrawDebug")()); }
			ScriptFunction GetDebugOverheadText() { mixin(MGF!("mGetDebugOverheadText", "Function GameFramework.GameAICommand.GetDebugOverheadText")()); }
			ScriptFunction GetDebugVerboseText() { mixin(MGF!("mGetDebugVerboseText", "Function GameFramework.GameAICommand.GetDebugVerboseText")()); }
		}
	}
	static struct DebugState
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State GameFramework.GameAICommand.DebugState")()); }
	}
	static struct DelayFailure
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State GameFramework.GameAICommand.DelayFailure")()); }
	}
	static struct DelaySuccess
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State GameFramework.GameAICommand.DelaySuccess")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptName Status() { mixin(MGPC!(ScriptName, 76)()); }
			GameAIController GameAIOwner() { mixin(MGPC!(GameAIController, 72)()); }
			ScriptName ChildStatus() { mixin(MGPC!(ScriptName, 64)()); }
			GameAICommand ChildCommand() { mixin(MGPC!(GameAICommand, 60)()); }
		}
		bool bPendingPop() { mixin(MGBPC!(84, 0x20)()); }
		bool bPendingPop(bool val) { mixin(MSBPC!(84, 0x20)()); }
		bool bIgnoreStepAside() { mixin(MGBPC!(84, 0x10)()); }
		bool bIgnoreStepAside(bool val) { mixin(MSBPC!(84, 0x10)()); }
		bool bIgnoreNotifies() { mixin(MGBPC!(84, 0x8)()); }
		bool bIgnoreNotifies(bool val) { mixin(MSBPC!(84, 0x8)()); }
		bool bAborted() { mixin(MGBPC!(84, 0x4)()); }
		bool bAborted(bool val) { mixin(MSBPC!(84, 0x4)()); }
		bool bReplaceActiveSameClassInstance() { mixin(MGBPC!(84, 0x2)()); }
		bool bReplaceActiveSameClassInstance(bool val) { mixin(MSBPC!(84, 0x2)()); }
		bool bAllowNewSameClassInstance() { mixin(MGBPC!(84, 0x1)()); }
		bool bAllowNewSameClassInstance(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
final:
	static bool InitCommandUserActor(GameAIController AI, Actor UserActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		*cast(Actor*)&params[4] = UserActor;
		StaticClass.ProcessEvent(Functions.InitCommandUserActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool InitCommand(GameAIController AI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		StaticClass.ProcessEvent(Functions.InitCommand, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void InternalPrePushed(GameAIController AI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalPrePushed, params.ptr, cast(void*)0);
	}
	void InternalPushed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalPushed, cast(void*)0, cast(void*)0);
	}
	void InternalPopped()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalPopped, cast(void*)0, cast(void*)0);
	}
	void InternalPaused(GameAICommand NewCommand)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = NewCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalPaused, params.ptr, cast(void*)0);
	}
	void InternalResumed(ScriptName OldCommandName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = OldCommandName;
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalResumed, params.ptr, cast(void*)0);
	}
	void InternalTick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalTick, params.ptr, cast(void*)0);
	}
	bool ShouldIgnoreNotifies()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldIgnoreNotifies, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	bool AllowTransitionTo(ScriptClass AttemptCommand)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = AttemptCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowTransitionTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowStateTransitionTo(ScriptName StateName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StateName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowStateTransitionTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PrePushed(GameAIController AI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		(cast(ScriptObject)this).ProcessEvent(Functions.PrePushed, params.ptr, cast(void*)0);
	}
	void PostPopped()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostPopped, cast(void*)0, cast(void*)0);
	}
	void Pushed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Pushed, cast(void*)0, cast(void*)0);
	}
	void Popped()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Popped, cast(void*)0, cast(void*)0);
	}
	void Paused(GameAICommand NewCommand)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = NewCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.Paused, params.ptr, cast(void*)0);
	}
	void Resumed(ScriptName OldCommandName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = OldCommandName;
		(cast(ScriptObject)this).ProcessEvent(Functions.Resumed, params.ptr, cast(void*)0);
	}
	ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDumpString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void DrawDebug(HUD H, ScriptName Category)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		*cast(ScriptName*)&params[4] = Category;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawDebug, params.ptr, cast(void*)0);
	}
	void GetDebugOverheadText(PlayerController PC, ref ScriptArray!(ScriptString) OutText)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(ScriptArray!(ScriptString)*)&params[4] = OutText;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugOverheadText, params.ptr, cast(void*)0);
		*OutText = *cast(ScriptArray!(ScriptString)*)&params[4];
	}
	ScriptString GetDebugVerboseText()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugVerboseText, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
