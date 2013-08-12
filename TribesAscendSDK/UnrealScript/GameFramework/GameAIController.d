module UnrealScript.GameFramework.GameAIController;

import ScriptClasses;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.FileLog;
import UnrealScript.GameFramework.GameTypes;
import UnrealScript.Engine.AITree;
import UnrealScript.GameFramework.GameAICommand;

extern(C++) interface GameAIController : AIController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameAIController")); }
	private static __gshared GameAIController mDefaultProperties;
	@property final static GameAIController DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameAIController)("GameAIController GameFramework.Default__GameAIController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAllCommands;
			ScriptFunction mPushCommand;
			ScriptFunction mPopCommand;
			ScriptFunction mAbortCommand;
			ScriptFunction mGetActiveCommand;
			ScriptFunction mCheckCommandCount;
			ScriptFunction mDumpCommandStack;
			ScriptFunction mFindCommandOfClass;
			ScriptFunction mGetAICommandInStack;
			ScriptFunction mGetDestinationOffset;
			ScriptFunction mReachedMoveGoal;
			ScriptFunction mReachedIntermediateMoveGoal;
			ScriptFunction mDestroyed;
			ScriptFunction mRecordDemoAILog;
			ScriptFunction mAILog_Internal;
			ScriptFunction mSetDesiredRotation;
			ScriptFunction mGetActionString;
		}
		public @property static final
		{
			ScriptFunction AllCommands() { return mAllCommands ? mAllCommands : (mAllCommands = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.AllCommands")); }
			ScriptFunction PushCommand() { return mPushCommand ? mPushCommand : (mPushCommand = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.PushCommand")); }
			ScriptFunction PopCommand() { return mPopCommand ? mPopCommand : (mPopCommand = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.PopCommand")); }
			ScriptFunction AbortCommand() { return mAbortCommand ? mAbortCommand : (mAbortCommand = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.AbortCommand")); }
			ScriptFunction GetActiveCommand() { return mGetActiveCommand ? mGetActiveCommand : (mGetActiveCommand = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.GetActiveCommand")); }
			ScriptFunction CheckCommandCount() { return mCheckCommandCount ? mCheckCommandCount : (mCheckCommandCount = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.CheckCommandCount")); }
			ScriptFunction DumpCommandStack() { return mDumpCommandStack ? mDumpCommandStack : (mDumpCommandStack = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.DumpCommandStack")); }
			ScriptFunction FindCommandOfClass() { return mFindCommandOfClass ? mFindCommandOfClass : (mFindCommandOfClass = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.FindCommandOfClass")); }
			ScriptFunction GetAICommandInStack() { return mGetAICommandInStack ? mGetAICommandInStack : (mGetAICommandInStack = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.GetAICommandInStack")); }
			ScriptFunction GetDestinationOffset() { return mGetDestinationOffset ? mGetDestinationOffset : (mGetDestinationOffset = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.GetDestinationOffset")); }
			ScriptFunction ReachedMoveGoal() { return mReachedMoveGoal ? mReachedMoveGoal : (mReachedMoveGoal = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.ReachedMoveGoal")); }
			ScriptFunction ReachedIntermediateMoveGoal() { return mReachedIntermediateMoveGoal ? mReachedIntermediateMoveGoal : (mReachedIntermediateMoveGoal = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.ReachedIntermediateMoveGoal")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.Destroyed")); }
			ScriptFunction RecordDemoAILog() { return mRecordDemoAILog ? mRecordDemoAILog : (mRecordDemoAILog = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.RecordDemoAILog")); }
			ScriptFunction AILog_Internal() { return mAILog_Internal ? mAILog_Internal : (mAILog_Internal = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.AILog_Internal")); }
			ScriptFunction SetDesiredRotation() { return mSetDesiredRotation ? mSetDesiredRotation : (mSetDesiredRotation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.SetDesiredRotation")); }
			ScriptFunction GetActionString() { return mGetActionString ? mGetActionString : (mGetActionString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameAIController.GetActionString")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GameTypes.AICmdHistoryItem) CommandHistory() { return *cast(ScriptArray!(GameTypes.AICmdHistoryItem)*)(cast(size_t)cast(void*)this + 992); }
			ScriptArray!(ScriptName) AILogFilter() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1008); }
			ScriptString DemoActionString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1020); }
			int CommandHistoryNum() { return *cast(int*)(cast(size_t)cast(void*)this + 1004); }
			float DebugTextMaxLen() { return *cast(float*)(cast(size_t)cast(void*)this + 988); }
			FileLog AILogFile() { return *cast(FileLog*)(cast(size_t)cast(void*)this + 984); }
			GameAICommand CommandList() { return *cast(GameAICommand*)(cast(size_t)cast(void*)this + 980); }
			// WARNING: Property 'AITreeHandle' has the same name as a defined type!
			// WARNING: Property 'AITree' has the same name as a defined type!
		}
		bool bAIBroken() { return (*cast(uint*)(cast(size_t)cast(void*)this + 976) & 0x80) != 0; }
		bool bAIBroken(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 976) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 976) &= ~0x80; } return val; }
		bool bAIDrawDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 976) & 0x40) != 0; }
		bool bAIDrawDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 976) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 976) &= ~0x40; } return val; }
		bool bMapBasedLogName() { return (*cast(uint*)(cast(size_t)cast(void*)this + 976) & 0x20) != 0; }
		bool bMapBasedLogName(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 976) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 976) &= ~0x20; } return val; }
		bool bFlushAILogEachLine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 976) & 0x10) != 0; }
		bool bFlushAILogEachLine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 976) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 976) &= ~0x10; } return val; }
		bool bAILogToWindow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 976) & 0x8) != 0; }
		bool bAILogToWindow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 976) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 976) &= ~0x8; } return val; }
		bool bAILogging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 976) & 0x4) != 0; }
		bool bAILogging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 976) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 976) &= ~0x4; } return val; }
		bool bHasRunawayCommandList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 976) & 0x2) != 0; }
		bool bHasRunawayCommandList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 976) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 976) &= ~0x2; } return val; }
		bool bUseAITree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 976) & 0x1) != 0; }
		bool bUseAITree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 976) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 976) &= ~0x1; } return val; }
	}
final:
	void AllCommands(ScriptClass BaseClass, GameAICommand* Cmd)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(GameAICommand*)&params[4] = *Cmd;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllCommands, params.ptr, cast(void*)0);
		*Cmd = *cast(GameAICommand*)&params[4];
	}
	void PushCommand(GameAICommand NewCommand)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = NewCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.PushCommand, params.ptr, cast(void*)0);
	}
	void PopCommand(GameAICommand ToBePoppedCommand)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = ToBePoppedCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopCommand, params.ptr, cast(void*)0);
	}
	bool AbortCommand(GameAICommand AbortCmd, ScriptClass AbortClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = AbortCmd;
		*cast(ScriptClass*)&params[4] = AbortClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.AbortCommand, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	GameAICommand GetActiveCommand()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActiveCommand, params.ptr, cast(void*)0);
		return *cast(GameAICommand*)params.ptr;
	}
	void CheckCommandCount()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckCommandCount, cast(void*)0, cast(void*)0);
	}
	void DumpCommandStack()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DumpCommandStack, cast(void*)0, cast(void*)0);
	}
	GameAICommand FindCommandOfClass(ScriptClass SearchClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SearchClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindCommandOfClass, params.ptr, cast(void*)0);
		return *cast(GameAICommand*)&params[4];
	}
	GameAICommand GetAICommandInStack(ScriptClass InClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAICommandInStack, params.ptr, cast(void*)0);
		return *cast(GameAICommand*)&params[4];
	}
	float GetDestinationOffset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDestinationOffset, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void ReachedMoveGoal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedMoveGoal, cast(void*)0, cast(void*)0);
	}
	void ReachedIntermediateMoveGoal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedIntermediateMoveGoal, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void RecordDemoAILog(ScriptString LogText)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogText;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecordDemoAILog, params.ptr, cast(void*)0);
	}
	void AILog_Internal(ScriptString LogText, ScriptName LogCategory, bool bForce)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogText;
		*cast(ScriptName*)&params[12] = LogCategory;
		*cast(bool*)&params[20] = bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.AILog_Internal, params.ptr, cast(void*)0);
	}
	void SetDesiredRotation(Rotator TargetDesiredRotation, bool InLockDesiredRotation, bool InUnlockWhenReached, float InterpolationTime)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = TargetDesiredRotation;
		*cast(bool*)&params[12] = InLockDesiredRotation;
		*cast(bool*)&params[16] = InUnlockWhenReached;
		*cast(float*)&params[20] = InterpolationTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDesiredRotation, params.ptr, cast(void*)0);
	}
	ScriptString GetActionString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActionString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
