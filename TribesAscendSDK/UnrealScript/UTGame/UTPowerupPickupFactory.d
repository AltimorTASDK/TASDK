module UnrealScript.UTGame.UTPowerupPickupFactory;

import ScriptClasses;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTPickupFactory;

extern(C++) interface UTPowerupPickupFactory : UTPickupFactory
{
	final void AddWeaponOverlay(UTGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48866], params.ptr, cast(void*)0);
	}
	final void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48869], params.ptr, cast(void*)0);
	}
}
