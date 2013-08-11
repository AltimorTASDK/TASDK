module UnrealScript.UTGame.UTVictimMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTWeaponKillMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface UTVictimMessage : UTWeaponKillMessage
{
public extern(D):
	@property final auto ref
	{
		ScriptString TelefragString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
		ScriptString ViperKamikazeString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
		ScriptString ScorpionKamikazeString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
		ScriptString SpiderMineString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
		ScriptString RunOverString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString OrbSuicideString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString KilledByTrailer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString YouWereKilledBy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
	final ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47042], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
}
