module UnrealScript.UTGame.UTDmgType_RanOver;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTDamageType;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.UTGame.UTPlayerController;

extern(C++) interface UTDmgType_RanOver : UTDamageType
{
	public @property final auto ref int NumMessages() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
	final int IncrementKills(UTPlayerReplicationInfo KillerPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KillerPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47098], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void SmallReward(UTPlayerController Killer, int KillCount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Killer;
		*cast(int*)&params[4] = KillCount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47102], params.ptr, cast(void*)0);
	}
	final void SpawnHitEffect(Pawn P, float Damage, Vector Momentum, ScriptName BoneName, Vector HitLocation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Damage;
		*cast(Vector*)&params[8] = Momentum;
		*cast(ScriptName*)&params[20] = BoneName;
		*cast(Vector*)&params[28] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47106], params.ptr, cast(void*)0);
	}
}
