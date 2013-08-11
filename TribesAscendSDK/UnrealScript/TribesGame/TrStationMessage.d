module UnrealScript.TribesGame.TrStationMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrStationMessage : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		SoundCue EnemyStationSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 164); }
		SoundCue StationNotPoweredSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 160); }
		ScriptString MustBeHeld() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
		ScriptString ControlPoint() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString NeutralStation() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString EnemyStation() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString StationNotPowered() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112595], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112603], params.ptr, cast(void*)0);
	}
}
