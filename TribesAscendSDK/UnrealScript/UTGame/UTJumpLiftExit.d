module UnrealScript.UTGame.UTJumpLiftExit;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.LiftExit;

extern(C++) interface UTJumpLiftExit : LiftExit
{
public extern(D):
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48130], cast(void*)0, cast(void*)0);
	}
	void WaitForLift(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48131], params.ptr, cast(void*)0);
	}
	bool CanBeReachedFromLiftBy(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48133], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
