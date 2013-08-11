module UnrealScript.UTGame.UTDmgType_ScorpionSelfDestruct;

import ScriptClasses;
import UnrealScript.UTGame.UTDmgType_Burning;
import UnrealScript.UTGame.UTPlayerReplicationInfo;

extern(C++) interface UTDmgType_ScorpionSelfDestruct : UTDmgType_Burning
{
public extern(D):
	@property final auto ref int DamageGivenForSelfDestruct() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
	final int IncrementKills(UTPlayerReplicationInfo KillerPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KillerPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47121], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
