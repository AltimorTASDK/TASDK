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
	bool InitCommandUserActor(GameAIController AI, Actor UserActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		*cast(Actor*)&params[4] = UserActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30573], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool InitCommand(GameAIController AI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30577], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void InternalPrePushed(GameAIController AI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30581], params.ptr, cast(void*)0);
	}
	void InternalPushed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30583], cast(void*)0, cast(void*)0);
	}
	void InternalPopped()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30584], cast(void*)0, cast(void*)0);
	}
	void InternalPaused(GameAICommand NewCommand)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = NewCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30585], params.ptr, cast(void*)0);
	}
	void InternalResumed(ScriptName OldCommandName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = OldCommandName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30587], params.ptr, cast(void*)0);
	}
	void InternalTick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30589], params.ptr, cast(void*)0);
	}
	bool ShouldIgnoreNotifies()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30591], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30593], params.ptr, cast(void*)0);
	}
	bool AllowTransitionTo(ScriptClass AttemptCommand)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = AttemptCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30595], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowStateTransitionTo(ScriptName StateName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StateName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30598], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PrePushed(GameAIController AI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30601], params.ptr, cast(void*)0);
	}
	void PostPopped()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30603], cast(void*)0, cast(void*)0);
	}
	void Pushed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30604], cast(void*)0, cast(void*)0);
	}
	void Popped()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30605], cast(void*)0, cast(void*)0);
	}
	void Paused(GameAICommand NewCommand)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameAICommand*)params.ptr = NewCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30606], params.ptr, cast(void*)0);
	}
	void Resumed(ScriptName OldCommandName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = OldCommandName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30608], params.ptr, cast(void*)0);
	}
	ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30610], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void DrawDebug(HUD H, ScriptName Category)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		*cast(ScriptName*)&params[4] = Category;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30623], params.ptr, cast(void*)0);
	}
	void GetDebugOverheadText(PlayerController PC, ScriptArray!(ScriptString)* OutText)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(ScriptArray!(ScriptString)*)&params[4] = *OutText;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30626], params.ptr, cast(void*)0);
		*OutText = *cast(ScriptArray!(ScriptString)*)&params[4];
	}
	ScriptString GetDebugVerboseText()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30630], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
