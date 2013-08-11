module UnrealScript.UTGame.UTDeathmatch;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTGame;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTDeathmatch : UTGame
{
public extern(D):
final:
	bool WantsPickups(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42815], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetHandicapNeed(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45130], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
