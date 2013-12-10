module UnrealScript.GameFramework.GameAIController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.FileLog;
import UnrealScript.GameFramework.GameTypes;
import UnrealScript.Engine.AITree;
import UnrealScript.GameFramework.GameAICommand;

extern(C++) interface GameAIController : AIController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameAIController")); }
	private static __gshared GameAIController mDefaultProperties;
	@property final static GameAIController DefaultProperties() { mixin(MGDPC("GameAIController", "GameAIController GameFramework.Default__GameAIController")); }
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
			ScriptFunction AllCommands() { mixin(MGF("mAllCommands", "Function GameFramework.GameAIController.AllCommands")); }
			ScriptFunction PushCommand() { mixin(MGF("mPushCommand", "Function GameFramework.GameAIController.PushCommand")); }
			ScriptFunction PopCommand() { mixin(MGF("mPopCommand", "Function GameFramework.GameAIController.PopCommand")); }
			ScriptFunction AbortCommand() { mixin(MGF("mAbortCommand", "Function GameFramework.GameAIController.AbortCommand")); }
			ScriptFunction GetActiveCommand() { mixin(MGF("mGetActiveCommand", "Function GameFramework.GameAIController.GetActiveCommand")); }
			ScriptFunction CheckCommandCount() { mixin(MGF("mCheckCommandCount", "Function GameFramework.GameAIController.CheckCommandCount")); }
			ScriptFunction DumpCommandStack() { mixin(MGF("mDumpCommandStack", "Function GameFramework.GameAIController.DumpCommandStack")); }
			ScriptFunction FindCommandOfClass() { mixin(MGF("mFindCommandOfClass", "Function GameFramework.GameAIController.FindCommandOfClass")); }
			ScriptFunction GetAICommandInStack() { mixin(MGF("mGetAICommandInStack", "Function GameFramework.GameAIController.GetAICommandInStack")); }
			ScriptFunction GetDestinationOffset() { mixin(MGF("mGetDestinationOffset", "Function GameFramework.GameAIController.GetDestinationOffset")); }
			ScriptFunction ReachedMoveGoal() { mixin(MGF("mReachedMoveGoal", "Function GameFramework.GameAIController.ReachedMoveGoal")); }
			ScriptFunction ReachedIntermediateMoveGoal() { mixin(MGF("mReachedIntermediateMoveGoal", "Function GameFramework.GameAIController.ReachedIntermediateMoveGoal")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function GameFramework.GameAIController.Destroyed")); }
			ScriptFunction RecordDemoAILog() { mixin(MGF("mRecordDemoAILog", "Function GameFramework.GameAIController.RecordDemoAILog")); }
			ScriptFunction AILog_Internal() { mixin(MGF("mAILog_Internal", "Function GameFramework.GameAIController.AILog_Internal")); }
			ScriptFunction SetDesiredRotation() { mixin(MGF("mSetDesiredRotation", "Function GameFramework.GameAIController.SetDesiredRotation")); }
			ScriptFunction GetActionString() { mixin(MGF("mGetActionString", "Function GameFramework.GameAIController.GetActionString")); }
		}
	}
	static struct DebugState
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State GameFramework.GameAIController.DebugState")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GameTypes.AICmdHistoryItem) CommandHistory() { mixin(MGPC("ScriptArray!(GameTypes.AICmdHistoryItem)", 992)); }
			ScriptArray!(ScriptName) AILogFilter() { mixin(MGPC("ScriptArray!(ScriptName)", 1008)); }
			ScriptString DemoActionString() { mixin(MGPC("ScriptString", 1020)); }
			int CommandHistoryNum() { mixin(MGPC("int", 1004)); }
			float DebugTextMaxLen() { mixin(MGPC("float", 988)); }
			FileLog AILogFile() { mixin(MGPC("FileLog", 984)); }
			GameAICommand CommandList() { mixin(MGPC("GameAICommand", 980)); }
			AITree.AITreeHandle AITreeHandleVar() { mixin(MGPC("AITree.AITreeHandle", 928)); }
			AITree AITreeVar() { mixin(MGPC("AITree", 924)); }
		}
		bool bAIBroken() { mixin(MGBPC(976, 0x80)); }
		bool bAIBroken(bool val) { mixin(MSBPC(976, 0x80)); }
		bool bAIDrawDebug() { mixin(MGBPC(976, 0x40)); }
		bool bAIDrawDebug(bool val) { mixin(MSBPC(976, 0x40)); }
		bool bMapBasedLogName() { mixin(MGBPC(976, 0x20)); }
		bool bMapBasedLogName(bool val) { mixin(MSBPC(976, 0x20)); }
		bool bFlushAILogEachLine() { mixin(MGBPC(976, 0x10)); }
		bool bFlushAILogEachLine(bool val) { mixin(MSBPC(976, 0x10)); }
		bool bAILogToWindow() { mixin(MGBPC(976, 0x8)); }
		bool bAILogToWindow(bool val) { mixin(MSBPC(976, 0x8)); }
		bool bAILogging() { mixin(MGBPC(976, 0x4)); }
		bool bAILogging(bool val) { mixin(MSBPC(976, 0x4)); }
		bool bHasRunawayCommandList() { mixin(MGBPC(976, 0x2)); }
		bool bHasRunawayCommandList(bool val) { mixin(MSBPC(976, 0x2)); }
		bool bUseAITree() { mixin(MGBPC(976, 0x1)); }
		bool bUseAITree(bool val) { mixin(MSBPC(976, 0x1)); }
	}
final:
	void AllCommands(ScriptClass BaseClass, ref GameAICommand Cmd)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(GameAICommand*)&params[4] = Cmd;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllCommands, params.ptr, cast(void*)0);
		Cmd = *cast(GameAICommand*)&params[4];
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
	bool AbortCommand(GameAICommand AbortCmd, ScriptClass* AbortClass = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = AbortCmd;
		if (AbortClass !is null)
			*cast(ScriptClass*)&params[4] = *AbortClass;
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
	GameAICommand GetAICommandInStack(in ScriptClass InClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = cast(ScriptClass)InClass;
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
	void AILog_Internal(ScriptString LogText, ScriptName* LogCategory = null, bool* bForce = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogText;
		if (LogCategory !is null)
			*cast(ScriptName*)&params[12] = *LogCategory;
		if (bForce !is null)
			*cast(bool*)&params[20] = *bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.AILog_Internal, params.ptr, cast(void*)0);
	}
	void SetDesiredRotation(Rotator TargetDesiredRotation, bool* InLockDesiredRotation = null, bool* InUnlockWhenReached = null, float* InterpolationTime = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = TargetDesiredRotation;
		if (InLockDesiredRotation !is null)
			*cast(bool*)&params[12] = *InLockDesiredRotation;
		if (InUnlockWhenReached !is null)
			*cast(bool*)&params[16] = *InUnlockWhenReached;
		if (InterpolationTime !is null)
			*cast(float*)&params[20] = *InterpolationTime;
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
