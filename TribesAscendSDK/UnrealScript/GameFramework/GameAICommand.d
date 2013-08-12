module UnrealScript.GameFramework.GameAICommand;

import ScriptClasses;
import UnrealScript.Engine.AICommandBase;
import UnrealScript.GameFramework.GameAIController;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.HUD;

extern(C++) interface GameAICommand : AICommandBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameAICommand")); }
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
			ScriptFunction InitCommandUserActor() { return mInitCommandUserActor ? mInitCommandUserActor : (mInitCommandUserActor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.InitCommandUserActor")); }
			ScriptFunction InitCommand() { return mInitCommand ? mInitCommand : (mInitCommand = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.InitCommand")); }
			ScriptFunction InternalPrePushed() { return mInternalPrePushed ? mInternalPrePushed : (mInternalPrePushed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.InternalPrePushed")); }
			ScriptFunction InternalPushed() { return mInternalPushed ? mInternalPushed : (mInternalPushed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.InternalPushed")); }
			ScriptFunction InternalPopped() { return mInternalPopped ? mInternalPopped : (mInternalPopped = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.InternalPopped")); }
			ScriptFunction InternalPaused() { return mInternalPaused ? mInternalPaused : (mInternalPaused = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.InternalPaused")); }
			ScriptFunction InternalResumed() { return mInternalResumed ? mInternalResumed : (mInternalResumed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.InternalResumed")); }
			ScriptFunction InternalTick() { return mInternalTick ? mInternalTick : (mInternalTick = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.InternalTick")); }
			ScriptFunction ShouldIgnoreNotifies() { return mShouldIgnoreNotifies ? mShouldIgnoreNotifies : (mShouldIgnoreNotifies = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.ShouldIgnoreNotifies")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.Tick")); }
			ScriptFunction AllowTransitionTo() { return mAllowTransitionTo ? mAllowTransitionTo : (mAllowTransitionTo = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.AllowTransitionTo")); }
			ScriptFunction AllowStateTransitionTo() { return mAllowStateTransitionTo ? mAllowStateTransitionTo : (mAllowStateTransitionTo = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.AllowStateTransitionTo")); }
			ScriptFunction PrePushed() { return mPrePushed ? mPrePushed : (mPrePushed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.PrePushed")); }
			ScriptFunction PostPopped() { return mPostPopped ? mPostPopped : (mPostPopped = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.PostPopped")); }
			ScriptFunction Pushed() { return mPushed ? mPushed : (mPushed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.Pushed")); }
			ScriptFunction Popped() { return mPopped ? mPopped : (mPopped = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.Popped")); }
			ScriptFunction Paused() { return mPaused ? mPaused : (mPaused = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.Paused")); }
			ScriptFunction Resumed() { return mResumed ? mResumed : (mResumed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.Resumed")); }
			ScriptFunction GetDumpString() { return mGetDumpString ? mGetDumpString : (mGetDumpString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.GetDumpString")); }
			ScriptFunction DrawDebug() { return mDrawDebug ? mDrawDebug : (mDrawDebug = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.DrawDebug")); }
			ScriptFunction GetDebugOverheadText() { return mGetDebugOverheadText ? mGetDebugOverheadText : (mGetDebugOverheadText = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.GetDebugOverheadText")); }
			ScriptFunction GetDebugVerboseText() { return mGetDebugVerboseText ? mGetDebugVerboseText : (mGetDebugVerboseText = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAICommand.GetDebugVerboseText")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName Status() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
			GameAIController GameAIOwner() { return *cast(GameAIController*)(cast(size_t)cast(void*)this + 72); }
			ScriptName ChildStatus() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
			GameAICommand ChildCommand() { return *cast(GameAICommand*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bPendingPop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x20) != 0; }
		bool bPendingPop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x20; } return val; }
		bool bIgnoreStepAside() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x10) != 0; }
		bool bIgnoreStepAside(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x10; } return val; }
		bool bIgnoreNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x8) != 0; }
		bool bIgnoreNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x8; } return val; }
		bool bAborted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x4) != 0; }
		bool bAborted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x4; } return val; }
		bool bReplaceActiveSameClassInstance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
		bool bReplaceActiveSameClassInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
		bool bAllowNewSameClassInstance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bAllowNewSameClassInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
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
	void GetDebugOverheadText(PlayerController PC, ScriptArray!(ScriptString)* OutText)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(ScriptArray!(ScriptString)*)&params[4] = *OutText;
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
