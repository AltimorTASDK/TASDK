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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30827], params.ptr, cast(void*)0);
		*Cmd = *cast(GameAICommand*)&params[4];
	}
	void PushCommand(GameAICommand NewCommand)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = NewCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30830], params.ptr, cast(void*)0);
	}
	void PopCommand(GameAICommand ToBePoppedCommand)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = ToBePoppedCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30832], params.ptr, cast(void*)0);
	}
	bool AbortCommand(GameAICommand AbortCmd, ScriptClass AbortClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = AbortCmd;
		*cast(ScriptClass*)&params[4] = AbortClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30834], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	GameAICommand GetActiveCommand()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30838], params.ptr, cast(void*)0);
		return *cast(GameAICommand*)params.ptr;
	}
	void CheckCommandCount()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30840], cast(void*)0, cast(void*)0);
	}
	void DumpCommandStack()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30841], cast(void*)0, cast(void*)0);
	}
	GameAICommand FindCommandOfClass(ScriptClass SearchClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SearchClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30842], params.ptr, cast(void*)0);
		return *cast(GameAICommand*)&params[4];
	}
	GameAICommand GetAICommandInStack(ScriptClass InClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30845], params.ptr, cast(void*)0);
		return *cast(GameAICommand*)&params[4];
	}
	float GetDestinationOffset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30848], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void ReachedMoveGoal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30850], cast(void*)0, cast(void*)0);
	}
	void ReachedIntermediateMoveGoal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30851], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30852], cast(void*)0, cast(void*)0);
	}
	void RecordDemoAILog(ScriptString LogText)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogText;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30853], params.ptr, cast(void*)0);
	}
	void AILog_Internal(ScriptString LogText, ScriptName LogCategory, bool bForce)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogText;
		*cast(ScriptName*)&params[12] = LogCategory;
		*cast(bool*)&params[20] = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30855], params.ptr, cast(void*)0);
	}
	void SetDesiredRotation(Rotator TargetDesiredRotation, bool InLockDesiredRotation, bool InUnlockWhenReached, float InterpolationTime)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = TargetDesiredRotation;
		*cast(bool*)&params[12] = InLockDesiredRotation;
		*cast(bool*)&params[16] = InUnlockWhenReached;
		*cast(float*)&params[20] = InterpolationTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30859], params.ptr, cast(void*)0);
	}
	ScriptString GetActionString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30873], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
