module UnrealScript.UTGame.UTMutator_Arena;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_Arena : UTMutator
{
	public @property final auto ref ScriptString ArenaWeaponClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 496); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48571], cast(void*)0, cast(void*)0);
	}
	final bool CheckReplacement(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48573], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ModifyPlayer(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48576], params.ptr, cast(void*)0);
	}
}
