module UnrealScript.Engine.LiftCenter;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.InterpActor;
import UnrealScript.Engine.Actor;

extern(C++) interface LiftCenter : NavigationPoint
{
public extern(D):
	@property final
	{
		auto ref
		{
			Trigger LiftTrigger() { return *cast(Trigger*)(cast(size_t)cast(void*)this + 720); }
			float CollisionHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
			Vector LiftOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 700); }
			float MaxDist2D() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			InterpActor MyLift() { return *cast(InterpActor*)(cast(size_t)cast(void*)this + 692); }
		}
		bool bJumpLift() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x1) != 0; }
		bool bJumpLift(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19408], cast(void*)0, cast(void*)0);
	}
	Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19409], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19413], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ProceedWithMove(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19416], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
