module UnrealScript.UTGame.UTItemPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTPickupFactory;

extern(C++) interface UTItemPickupFactory : UTPickupFactory
{
	public @property final auto ref ScriptString PickupMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 948); }
	public @property final auto ref ScriptString UseHintMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 964); }
	public @property final auto ref float RespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 960); }
	public @property final auto ref SoundCue PickupSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 944); }
	final void InitializePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40459], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetLocalString(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40460], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40465], params.ptr, cast(void*)0);
	}
	final void SetRespawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40467], cast(void*)0, cast(void*)0);
	}
	final float GetRespawnTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40468], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float BotDesireability(Pawn P, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40470], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}
